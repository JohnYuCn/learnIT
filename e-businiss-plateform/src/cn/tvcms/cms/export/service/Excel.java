/**
 * @Project: 特维内容管理系统
 * @Description: TODO(用一句话描述该文件做什么)
 * Copyright (c) 2014 北京特维网讯技术有限公司 版权所有
 *
 * @author lianpeng
 * @date 2014-10-16 下午09:50:11
 * @version V1.0
 */
package cn.tvcms.cms.export.service;

import java.io.IOException;

/**
 * @ClassName: Excel
 * @Description: 导出Excel
 * @author lianpeng
 * @date 2014-10-16 下午09:50:11
 * 
 */
public interface Excel  {

	
	/**
	 * @Title: getExcel
	 * @Description: 根据不同的type导出不同的excel
	 * @author lianpeng
	 * @date 2014-10-16 下午09:51:34
	 * @param type
	 * @return
	 * @throws IOException 
	 */
	Boolean getExcel(String outPath) throws IOException;
}
