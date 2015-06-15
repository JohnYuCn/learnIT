/**
 * @Project: 特维内容管理系统
 * @Description: TODO(用一句话描述该文件做什么)
 * Copyright (c) 2014 北京特维网讯技术有限公司 版权所有
 *
 * @author lianpeng
 * @date 2014-10-16 下午09:58:10
 * @version V1.0
 */
package cn.tvcms.cms.export.service;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.poifs.filesystem.POIFSFileSystem;
import org.springframework.stereotype.Service;

/**
 * @ClassName: MhUusOutputExcel
 * @Description: 导出Mh,Uu+S
 * @author lianpeng
 * @date 2014-10-16 下午09:58:10
 * 
 */
@Service
public class MhUusOutputExcel implements Excel {

	private static final Log log = LogFactory.getLog(MhUusOutputExcel.class);
	
	/* (非 Javadoc)
	 * <p>Title: getExcel</p>
	 * <p>Description: </p>
	 * @author lianpeng
	 * @return
	 * @see cn.tvcms.cms.export.service.Excel#getExcel()
	 */
	@Override
	public Boolean getExcel(String outPath) throws IOException {
		boolean result = true;
		FileOutputStream out = null;
		try {
			//excel模板路径  
	        File fi=new File("D:\\report.xls");  
	        POIFSFileSystem fs = new POIFSFileSystem(new FileInputStream(fi));
			 //读取excel模板  
	        HSSFWorkbook wb = new HSSFWorkbook(fs);  
	        //读取了模板内所有sheet内容  
	        HSSFSheet sheet = wb.getSheetAt(0);
	      //在相应的单元格进行赋值 
	        HSSFCell cell3 = sheet.getRow(0).getCell(0); // 合并的列算一列
	        cell3.setCellValue("大标题1");
	        HSSFCell cell = sheet.getRow(6).getCell(1);  
	        cell.setCellValue("测试");  
	        HSSFCell cell2 = sheet.getRow(5).getCell(3);  
	        cell2.setCellValue("数据");  
	        HSSFCell cell4 = sheet.getRow(5).getCell(2);  
	        cell4.setCellValue("数据1");  
	        //修改模板内容导出新模板,导出的excel路径  
	        out = new FileOutputStream("D:/export.xls");  
	        wb.write(out);  
		} catch (IOException e) {
			result = false;
			log.error("导出Mh,Uu+S出错:"+e.getMessage());
		}finally{
			out.close();
		}
		return result;
	}

}
