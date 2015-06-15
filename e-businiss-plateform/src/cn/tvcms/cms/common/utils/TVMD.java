/**
 * @Project: 特维内容管理系统
 * @Description: TODO(用一句话描述该文件做什么)
 * Copyright (c) 2014 北京特维网讯技术有限公司 版权所有
 *
 * @author sunjinyang
 * @date 2014-12-11 上午10:34:32
 * @version V1.0
 */
package cn.tvcms.cms.common.utils;

import java.util.HashMap;
import java.util.Map;

/**
 * @ClassName: TVMD
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @author sunjinyang
 * @date 2014-12-11 上午10:34:32
 * 
 */
public class TVMD {
	private static Map<String, String> map=new HashMap<String, String>();
	static{
		map.put("A", "1");
		map.put("B", "9");
		map.put("C", "3");
		map.put("D", "8");
		map.put("E", "0");
		map.put("F", "6");
		map.put("G", "2");
		map.put("H", "7");
		map.put("I", "5");
		map.put("Z", "4");
	}
	
	private static String getKey(String c){
		for (Map.Entry<String, String> m : map.entrySet()) {
			if(c.equals(m.getValue()))
				return m.getKey();
		}
		return null;
	}
	public static String md(int time){
		time=time*37+9;
	    String temp=""+time;
	    String result="";
	    String temp1="";
	    for (int i = temp.length()-1; i >=0; i--) {
			temp1+=temp.charAt(i);
		}
		for (int i = 0; i < temp1.length(); i++) {
		    result+=getKey(temp1.charAt(i)+"");
		}
		return result;
	}
	public static String jieMi(String time){
		String temp="";
		String temp1="";
		for (int i = 0; i < time.length(); i++) {
			temp+=map.get(time.charAt(i)+"");
		}
		System.out.println(temp);
		for (int i = temp.length()-1; i >=0; i--) {
			temp1+=temp.charAt(i);
		}
		System.out.println(temp1);
		Integer intResule=Integer.parseInt(temp1);
		intResule=(intResule-9)/37;
		System.out.println(intResule);
		return intResule.toString();
	}


}
