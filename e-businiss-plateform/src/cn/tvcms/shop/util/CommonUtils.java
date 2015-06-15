/**
 * @Project: 特维内容管理系统
 * @Description: TODO(用一句话描述该文件做什么)
 * Copyright (c) 2014 北京特维网讯技术有限公司 版权所有
 *
 * @author miaoxiaochen
 * @date 2014-12-26 下午03:01:56
 * @version V1.0
 */
package cn.tvcms.shop.util;

import java.io.IOException;
import java.io.InputStream;
import java.math.BigDecimal;
import java.text.DecimalFormat;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.UUID;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.beanutils.ConvertUtils;
import org.apache.commons.beanutils.converters.BigDecimalConverter;
import org.apache.commons.beanutils.converters.DateConverter;
import org.apache.commons.lang3.StringUtils;

/**
 * @ClassName: CommonUtils
 * @Description: 工具类
 * @author miaoxiaochen
 * @date 2014-12-26 下午03:01:56
 * 
 */
public class CommonUtils {
	/**
	 * 拼凑sql语句
	 * @param expressions 表达式
	 * @param params 参数集合
	 * @return
	 */
	public static String generateSQL(List<Expression> expressions) {
		StringBuffer buffer = new StringBuffer();
		String symbol = "";
		for (Expression exp : expressions) {
			buffer.append(" "+symbol+" ").append(exp.getName()).append(exp.getOperator()).append(exp.getValue());
			symbol =exp.getConnector();
		}
		return buffer.toString();
	}
	/**
	 * 32位字符串
	 * 
	 * @return 字符串
	 */
	public static String uuid() {
		return UUID.randomUUID().toString().replace("-", "").toUpperCase();
	}

	/**
	 * 将Map转换成bean
	 * 
	 * @param map
	 * @param clazz
	 * @return
	 */
	@SuppressWarnings({ "rawtypes", "unchecked" })
	public static <T> T toBean(Map properties, Class<T> clazz) {
		try {
			/*
			 * 1、通过clazz创建实例 2、通过BeanUtils.populate()将Map中的数据封装到bean中
			 */
			T bean = clazz.newInstance();
			/*
			 * 2、处理日期
			 */
			DateConverter dateConverter = new DateConverter();
			String[] patterns = new String[] {"yyyy-MM-dd","yyyy/MM/dd"};
			dateConverter.setPatterns(patterns);
			ConvertUtils.register(dateConverter, java.util.Date.class);
			
			/*
			 * 3、处理BigDecimal
			 */
			ConvertUtils.register(new BigDecimalConverter(null) , java.math.BigDecimal.class);
			
			BeanUtils.populate(bean, properties);
			return bean;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			throw new RuntimeException(e);
		}
	}
	
	/**
	 * 读取properties文件
	 * @param key
	 * @return
	 */
	public static Properties loadProperties(String configName) {
		Properties properties = new Properties();
		InputStream in = new CommonUtils().getClass().getResourceAsStream("/"+configName);
		try {
			properties.load(in);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return properties;
	}


	/**
	 * 判断指定的字符串是否是手机号
	 * @param str
	 * @return 采用正式匹配规则，数字判断，通过返回true,反之返回false
	 */
	public static boolean isPhoneNumber(String str) {
		if (!StringUtils.isNumeric(str)) {
			return false;
		}
		Matcher matcher = Pattern.compile("^1[3458][0-9]{9}$", Pattern.CASE_INSENSITIVE).matcher(str);
		String phone = null;
		while (matcher.find()) {
			phone = matcher.group();
		}
		return (phone != null) ? true : false;
	}

	/**
	 * 必须是字母数字组合
	 * @param password
	 * @return 是返回false，否则返回true
	 */
	public static boolean islenum(String password) {
		Pattern pattern = Pattern.compile("/^[A-Za-z].*[0-9].*[A-Za-z]|[A-Za-z].*[0-9]|[0-9].*[A-Za-z]|[0-9].*[A-Za-z].*[0-9]+$/");
		Matcher matcher = pattern.matcher(password);
		return !matcher.find();
	}

	/**
	 * 获得ip地址
	 * 
	 * @return ip
	 */
	public static String getIpAddr(HttpServletRequest request) {
		String ip = request.getHeader("x-forwarded-for");
		if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
			ip = request.getHeader("Proxy-Client-IP");
		}
		if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
			ip = request.getHeader("WL-Proxy-Client-IP");
		}
		if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
			ip = request.getRemoteAddr();
		}
		return ip;
	}

	/**
	* 获得请求地址(于2014/04/23改写，能获取参数)
	* path = "http://" + req.getServerName() //服务器地址 + ":" +
	* req.getServerPort() //端口号 + req.getContextPath() //项目名称 +
	* req.getServletPath() //请求页面或其他地址 + "?" + (req.getQueryString()); //参数
	* @return refer
	*/
	public static String getRefer(HttpServletRequest request) {
		StringBuilder path = new StringBuilder();
		path.append("http://").append(request.getServerName()) // 服务器地址
				.append(":").append(request.getServerPort()) // 端口号
				//.append(request.getServletContext().getContextPath()) // 项目名称
				.append(request.getServletPath()); // 请求页面或其他地址
		if (request.getQueryString() != null) {
			path.append("?").append(request.getQueryString()); // 参数
		}
		return path.toString();
	}

	/**
	 * 判断是否是数字（含小数）(不包含正负号)
	 * @param number
	 * @return 不是合法数字返回true，否则返回false
	 */
	public static boolean isNumber(String number) {
		if (StringUtils.isEmpty(number)) {
			return false;
		}
		int index = number.indexOf(".");
		if (index < 0) {
			return !(StringUtils.isNumeric(number));
		}
		String num1 = number.substring(0, index);
		String num2 = number.substring(index + 1);
		return !(StringUtils.isNumeric(num1) && StringUtils.isNumeric(num2));
	}

	/**
	 * 保留BigDecimal两位小数
	 * @param bigDecimal
	 * @return
	 */
	public static BigDecimal formatBigDecimal(BigDecimal bigDecimal) {
		DecimalFormat df = new DecimalFormat("#.00");
		return new BigDecimal(df.format(bigDecimal));
	}

	/**
	 * 验证邮箱是否符合常用格式
	 * @param mail
	 * @return 是邮箱格式返回false，否则返回true
	 */
	public static boolean isEmail(String mail) {
		// ^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+((\\.[a-zA-Z0-9_-]{2,3}){1,2})$
		Pattern pattern = Pattern.compile("\\w+([-+.]\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*");
		Matcher matcher = pattern.matcher(mail);
		return !matcher.find();
	}

	/**
	 * 去掉HTML标签
	 * @param inputString
	 * @return
	 */
	public static String html2Text(String inputString) {
		if (StringUtils.isEmpty(inputString)) {
			return "";
		}
		String htmlStr = inputString;
		String textStr = "";
		Pattern p_script;
		Matcher m_script;
		Pattern p_style;
		Matcher m_style;
		Pattern p_html;
		Matcher m_html;
		Pattern p_cont1;
		Matcher m_cont1;
		Pattern p_cont2;
		Matcher m_cont2;
		try {
			String regEx_script = "<[\\s]*?script[^>]*?>[\\s\\S]*?<[\\s]*?\\/[\\s]*?script[\\s]*?>";
			String regEx_style = "<[\\s]*?style[^>]*?>[\\s\\S]*?<[\\s]*?\\/[\\s]*?style[\\s]*?>";
			String regEx_html = "<[^>]+>";
			String regEx_cont1 = "[\\d+\\s*`~!@#$%^&*\\(?~£¡@#£€%¡­¡­&*£š£©¡ª¡ª+|{}¡Ÿ¡¿¡®£º¡±¡°¡¯_]";
			String regEx_cont2 = "[\\w[^\\W]*]";
			p_script = Pattern.compile(regEx_script, Pattern.CASE_INSENSITIVE);
			m_script = p_script.matcher(htmlStr);
			htmlStr = m_script.replaceAll("");
			p_style = Pattern.compile(regEx_style, Pattern.CASE_INSENSITIVE);
			m_style = p_style.matcher(htmlStr);
			htmlStr = m_style.replaceAll("");
			p_html = Pattern.compile(regEx_html, Pattern.CASE_INSENSITIVE);
			m_html = p_html.matcher(htmlStr);
			htmlStr = m_html.replaceAll("");
			p_cont1 = Pattern.compile(regEx_cont1, Pattern.CASE_INSENSITIVE);
			m_cont1 = p_cont1.matcher(htmlStr);
			htmlStr = m_cont1.replaceAll("");
			p_cont2 = Pattern.compile(regEx_cont2, Pattern.CASE_INSENSITIVE);
			m_cont2 = p_cont2.matcher(htmlStr);
			htmlStr = m_cont2.replaceAll("");
			textStr = htmlStr;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return textStr;
	}

}
