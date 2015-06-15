/**
 * @Project: 特维内容管理系统
 * @Description: TODO(用一句话描述该文件做什么)
 * Copyright (c) 2014 北京特维网讯技术有限公司 版权所有
 *
 * @author sunjinyang
 * @date 2014-11-19 下午04:26:14
 * @version V1.0
 */
package cn.tvcms.cms.common.query;

import java.io.Serializable;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import cn.tvcms.cms.common.utils.DateTools;

/**
 * @ClassName: CombinationQuery
 * @Description: 组合查询
 * @author sunjinyang
 * @date 2014-11-19 下午04:26:14
 * 
 */
public class CombinationQuery {

	/**
	 * 
	 * @Title: queryHql
	 * @Description: 获取组合查询hql
	 * @author sunjinyang
	 * @date 2014-11-20 下午03:37:44
	 * @param 第一个参数  要查询的实体类
	 * @param 第二个参数 要查询的组合查询实例化对象
	 * @param 第三个参数 需要特别处理的查询条件字段数组
	 * @return
	 * @throws Exception
	 */
	public static String queryHql(Class<? extends Serializable> cls,Object object,String...args) throws Exception{
		StringBuffer hql=new StringBuffer("from "+cls.getName().substring(cls.getName().lastIndexOf(".")+1)+" where 1=1");
		Field [] fields=cls.getDeclaredFields();
		
		for (Field field : fields) {
			int code=field.getModifiers();//获取属性的访问修饰符编码
			boolean is=false;
			String fieldName=field.getName();//字段名
			if(code!=2){//不等于2代表字段的访问修饰符不为‘private’
				continue;
			}
			List<String> strings=new ArrayList<String>();
			for (String str : args) {
				if(str.equals(fieldName)){
					is=true;
					break;
				}
				if(str.equals(fieldName+"begin")){
					strings.add(str);
				}
				if(str.equals(fieldName+"end")){
					strings.add(str);
				}
			}
			if(is){//排除需要特殊处理的字段
			//2014-12-26 添加时间段处理 by miao
				if(strings.isEmpty())continue;
				//continue;
				hql.append(fieldName+"between "+strings.get(0)+" and "+strings.get(1));
			}
			if(fieldName.equals("classNotes"))//排除类的注释字段
				continue;
			String mName="get"+fieldName.substring(0,1).toUpperCase()+fieldName.substring(1);
			Method method=cls.getMethod(mName);
			if(method.invoke(object)==null){
				continue;
			}
			if(field.getType().toString().equals("class java.util.Date")){//如果字段为java.util.date类型
			Date result=(Date)method.invoke(object);
					hql.append(" and "+field.getName()+" between '"+DateTools.getDateYYYYMMDD(result)+"' and '"+DateTools.getSpecifiedDayAfter(DateTools.getDateYYYYMMDD(result))+"'");	
			}else if(field.getType().toString().equals("class java.lang.Integer"))//如果字段为Integer类型
			{
				Integer result=(Integer) method.invoke(object);
				if(result!=null&&!result.equals(""))
				hql.append(" and "+fieldName+" ="+result);
			}else if (field.getType().toString().equals("class java.lang.String")){//当字段为String类型时
				String result=method.invoke(object).toString();
				if(result!=null&&!result.equals(""))
				hql.append(" and "+fieldName+" like '%"+result+"%'");
			}
		}
		return hql.toString();
	}
	



}
