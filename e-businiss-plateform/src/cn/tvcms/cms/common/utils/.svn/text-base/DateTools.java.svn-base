/**
 * @Project: 特维内容管理系统
 * Copyright: Copyright (c) 2014
 * Company: 北京特维网讯技术有限公司
 *
 * @author xurannan
 * @version V1.0
 */
package cn.tvcms.cms.common.utils;

import java.util.Calendar;
import java.util.Date;
import java.text.SimpleDateFormat;
import java.text.ParseException;

/** 
 * 日期时间工具类
 * @author xurannan
 * @version create time：2014年6月1日 下午4:33:18 
 * 
 */
public class DateTools {
	
	/**
	 * 获取系统当前时间
	 * @author xurannan
	 * 2014年6月1日 下午4:34:28
	 */
	public static Date getSystemDate() {
		return new Date(System.currentTimeMillis());
	}
	
	public static String getDateyyMMdd(Date date) throws Exception{
		return new SimpleDateFormat("yyyyMMdd").format(date);
	}
	
	/**
	 * 获取标准格式"yyyy-MM-dd"的系统时间
	 * @author xurannan
	 * 2014年6月1日 下午4:42:02
	 */
	public static String getSystemDateYYYYMMDD() {
		return new SimpleDateFormat("yyyy-MM-dd").format(new Date(
		System.currentTimeMillis()));
	}
	
	/**
	 * 获取标准格式"yyyy-MM-dd HH:mm:ss"的系统时间
	 * @author xurannan
	 * 2014年6月1日 下午4:42:52
	 */
	public static String getStandSystemDate() {
		return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date(
				System.currentTimeMillis()));
	}
	
	/**
	 * 获取当前年
	 * @author xurannan
	 * 2014年6月1日 下午4:34:38
	 */
	public static Long getSystemYear() {
		Date today = DateTools.getSystemDate();
		Calendar calendar = DateTools.getCalendar(today);
		return new Long(calendar.get(Calendar.YEAR));
	}
	
	public static Calendar getCalendar(Date date) {
		Calendar calendar = Calendar.getInstance();
		calendar.setTime(date);
		return calendar;
	}
	
	/**
	 * 将yyyy-MM-dd格式的String转化yyyy-MM-dd格式的Date
	 * @author xurannan
	 * 2014年6月1日 下午4:39:13
	 */
	public static Date getDate(String date) throws Exception {
		if (date == null || (date.trim().equals(""))) {
			return null;
		}
		return new SimpleDateFormat("yyyy-MM-dd").parse(date);
	}
	
	/**
	 * 将yyyy-MM-dd hh:mm:ss格式的String转化yyyy-MM-dd hh:mm:ss格式的Date
	 * @author xurannan
	 * 2014年6月1日 下午4:40:45
	 */
	public static Date getDateTime(String date) throws Exception {
		if (date==null||date.equals("")||date.trim().equals("")) {
			return null;
		}
		try {
			return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse(date);
		} catch (ParseException pe) {
			throw new Exception("error.date.convert");
		}
	}
	
	/**
	 * 获取yyyy-MM-dd格式的日期字符串。
	 * @Title: getDateYYYYMMDD
	 * @Description: 获取yyyy-MM-dd格式的日期字符串。
	 * @author suntao
	 * @date 2014-8-23 下午02:18:50
	 * @param date
	 * @return
	 */
	public static String getDateYYYYMMDD(Date date) {
		return new SimpleDateFormat("yyyy-MM-dd").format(date);
	}
	
	/**
	 * 时间戳
	 * @Title: getDateyyMMddHHmmss
	 * @Description: 获取yyyyMMddHHmmss时间格式。 例：20141005015920
	 * @author xurannan
	 * @date 2014年10月5日 上午1:58:11
	 * @return
	 * @throws Exception
	 */
	public static String getDateyyMMddHHmmss() throws Exception{
		return new SimpleDateFormat("yyyyMMddHHmmss").format((new Date().getTime()));
	}
	
	public static String getDateyyyy_MM_dd_HH_mm_ss(Date date){
		return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(date);
	}
    /**
     * 
     * @Title: getSpecifiedDayAfter
     * @Description: 获取指定日期（字符串类型‘yyyy-mm-dd’）的后一天
     * @author sunjinyang
     * @date 2014-10-14 下午06:27:57
     * @param specifiedDay
     * @return
     */
    public static String getSpecifiedDayAfter(String specifiedDay) {  
        Calendar c = Calendar.getInstance();  
        Date date = null;  
        try {  
            date = new SimpleDateFormat("yyyy-MM-dd").parse(specifiedDay);  
        } catch (ParseException e) {  
            e.printStackTrace();  
        }  
        c.setTime(date);  
        int day = c.get(Calendar.DATE);  
        c.set(Calendar.DATE, day + 1);  
  
        String dayAfter = new SimpleDateFormat("yyyy-MM-dd")  
                .format(c.getTime());  
        return dayAfter;  
    }  
	/**
	 * @Title: IsTimeDormat
	 * @Description: TODO(判断是否是日期格式)
	 * @author wangChuang
	 * @date 2015-4-2 上午11:22:28
	 * @param data 字符串  (时间)
	 * @param format 字符串  (格式:如:yyyy-MM-dd HH:mm:ss)
	 * @return
	 */
	public static boolean IsTimeDormat(String data,String format){
		if(data==null||data==""){//判断是否是空值
			return false;
		}
		SimpleDateFormat simple=new SimpleDateFormat(format);
		try{//时间成功转换  说明格式正确
			simple.parse(data);
			return true;
		}catch (Exception e) {
			return false;
		}
	}
    /**
     * 
     * @Title: getSpecifiedDayAfter
     * @Description: 获取指定日期（字符串类型‘yyyy-mm-dd’）的前一天
     * @author sunjinyang
     * @date 2014-10-14 下午06:27:57
     * @param specifiedDay
     * @return
     */
    public static String getYesterdayDayAfter(String specifiedDay) {  
        Calendar c = Calendar.getInstance();  
        Date date = null;  
        try {  
            date = new SimpleDateFormat("yyyy-MM-dd").parse(specifiedDay);  
        } catch (ParseException e) {  
            e.printStackTrace();  
        }  
        c.setTime(date);  
        int day = c.get(Calendar.DATE);  
        c.set(Calendar.DATE, day - 1);  
  
        String dayAfter = new SimpleDateFormat("yyyy-MM-dd")  
                .format(c.getTime());  
        return dayAfter;  
    } 
}
