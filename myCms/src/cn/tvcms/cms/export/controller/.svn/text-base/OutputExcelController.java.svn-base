/**
 * @Project: 特维内容管理系统
 * @Description: TODO(用一句话描述该文件做什么)
 * Copyright (c) 2014 北京特维网讯技术有限公司 版权所有
 *
 * @author lianpeng
 * @date 2014-10-16 下午09:35:46
 * @version V1.0
 */
package cn.tvcms.cms.export.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.tvcms.cms.export.service.OutputExcelService;

/**
 * @ClassName: OutputExcel
 * @Description: 导出excel
 * @author lianpeng
 * @date 2014-10-16 下午09:35:46
 * 
 */
@Controller
public class OutputExcelController {
	
	@Autowired
	private OutputExcelService outputExcelService;
	
	@RequestMapping("/output/excel")
	public Map<String,Boolean> outPutExcel(HttpServletRequest request) throws IOException{
		Map<String,Boolean> map = new HashMap<String, Boolean>();
		//导出excel实现类名称，首字母小写
		String type = request.getParameter("xtype");
		//导出路径
		String outPath = request.getParameter("outPath");
		type = "mhUusOutputExcel";//测试写死，值是有前天传入的
		outPath = "d:/";//测试写死，值是有前天传入的
		if(type != null && !"".equals(type) && outPath !=null && !"".equals(outPath)){
			boolean result = outputExcelService.outExcel(type,outPath);
			map.put("result", result);
		}
		return map;
	}

}
