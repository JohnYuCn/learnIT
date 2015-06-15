/**
 * @Project: 特维内容管理系统
 * @Description: TODO(用一句话描述该文件做什么)
 * Copyright (c) 2014 北京特维网讯技术有限公司 版权所有
 *
 * @author sunJingYang
 * @date 2014-10-6 下午02:01:52
 * @version V1.0
 */
package cn.tvcms.cms.common.utils;

import java.util.HashMap;
import java.util.Map;

/**
 * @ClassName: TypesConvert
 * @Description: 类型转换
 * @author sunJingYang
 * @date 2014-10-6 下午02:01:52
 * 
 */
public class TypesConvert {
     private static Map<String, String> map;
     static{
    	 map=new HashMap<String, String>();
    	 map.put("VARCHAR", "java.lang.String");
    	 map.put("CHAR", "java.lang.String");
    	 map.put("BLOB", "java.lang.byte[]");
    	 map.put("DOUBLE", "java.lang.Double");
    	 map.put("FLOAT", "java.lang.Float");
    	 map.put("DECIMAL", "java.math.BigDecimal");
    	 map.put("BIT", "java.lang.Boolean");
    	 map.put("INTEGER", "java.lang.Long");
    	 map.put("DATE", "java.sql.Date");
    	 map.put("TIME", "java.sql.Time");
    	 map.put("DATETIME", "java.sql.Date");
    	 map.put("YEAR", "java.sql.Date");
    	 map.put("INT", "java.lang.Integer"); 
     }
     public static String getType(String type){
    	 return map.get(type);
     }
}
