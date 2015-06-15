/**
 * @Project: 特维内容管理系统
 * @Description: TODO(用一句话描述该文件做什么)
 * Copyright (c) 2014 北京特维网讯技术有限公司 版权所有
 *
 * @author lianpeng
 * @date 2014-10-16 下午09:47:18
 * @version V1.0
 */
package cn.tvcms.cms.export.service;

import java.io.IOException;

import org.springframework.stereotype.Service;

import cn.tvcms.cms.common.utils.SpringUtils;

/**
 * @ClassName: ExcelService
 * @Description: 导出excel
 * @author lianpeng
 * @date 2014-10-16 下午09:47:18
 * 
 */
@Service
public class OutputExcelService {
	
	
	/**
	 * @Title: outExcel
	 * @Description: 
	 * @author lianpeng
	 * @date 2014-10-16 下午09:56:24
	 * @param type 等于需要导出的类的文件名，首字母小写
	 * @return
	 * @throws IOException 
	 */
	public Boolean outExcel(String type,String outPath) throws IOException{
		
		Excel excel = (Excel)SpringUtils.getBean(type);
		boolean result = excel.getExcel(outPath);
		
	return result;
	}

}
