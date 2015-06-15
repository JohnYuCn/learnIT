/**
 * @Project: 特维内容管理系统
 * Copyright: Copyright (c) 2014
 * Company: 北京特维网讯技术有限公司
 *
 * @author lianpeng
 * @version V1.0
 */
package cn.tvcms.cms.column.controller;

import java.io.File;
import java.io.FileNotFoundException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import cn.tvcms.cms.column.service.ColumnService;
import cn.tvcms.cms.common.query.QueryPaging;
import cn.tvcms.cms.common.utils.Pinyin4jUtil;
import cn.tvcms.cms.pojo.SystemSetting;
import cn.tvcms.cms.pojo.TvcmsColumn;
import cn.tvcms.cms.system.service.SystemSettingService;
/**
 * 管理栏目controller
 * @author lianpeng
 * 2014-6-22
 */

@Controller
public class ColumnController {
	
	@SuppressWarnings("unused")
	private static final  Log log = LogFactory.getLog(ColumnController.class);
	
	@Autowired
	private ColumnService  columnService;
	
	@Autowired
	private SystemSettingService  systemSettingService;
	
	@Autowired
	private QueryPaging quertPaging;
	
	/**
	 * 查询栏目
	 * @author lianpeng
	 * 2014-6-22 下午02:35:46
	 */
	@RequestMapping("/column/load")
	public List<TvcmsColumn> findAllColumn(){
		
		return columnService.findAll();
	}
	
	public List<TvcmsColumn> findAllTemplate(){
		return null;
	}
	
	/**
	 * 根据id查询目录内容
	 * @author lianpeng
	 * 2014-6-24 下午10:09:27
	 */
	@RequestMapping("/column/findById/{id}")
	public ModelAndView findById(@PathVariable("id") Integer id,HttpServletRequest request,TvcmsColumn tvcmsColumn){
		if(id==0){//默认查询时使用
			id = 1;
		}
		String hqlWhere = " from TvcmsColumn where bclassId = '"+ id+ "'";
		if(tvcmsColumn!=null){
			if(tvcmsColumn.getColumnname()!=null){
				if(!tvcmsColumn.getColumnname().equals("")){
					hqlWhere+=" and columnname like '%"+tvcmsColumn.getColumnname()+"%'";
				}
			}
		}
		hqlWhere+=" order by createTime desc";
		Map<String,Object> map = quertPaging.query(hqlWhere, request, TvcmsColumn.class);
		ModelAndView mav = new ModelAndView();
		mav.addObject("paging", map);
		mav.addObject("id", id);
		mav.setViewName("column/queryColumn");
		return mav;
	}
	
	/**
	 * 过滤访问
	 * @author lianpeng
	 * 2014-6-22 下午04:39:37
	 */
	@RequestMapping("/column/column")
	public String initColumn(){
		return "column/column";
	}
	
	/**	
	 * @Title: initColumnLift
	 * @Description: TODO(加载树菜单)
	 * @author wangChuang
	 * @date 2015-4-7 下午05:56:42
	 * @return
	 */
	@RequestMapping("/column/columnLeft")
	public String initColumnLift(){
		return "column/columnLeft";
	}
	

	
	/**
	 * 根据最底层节点查询其中内容
	 * @author lianpeng
	 * 2014-6-24 下午10:13:49
	 */
	@RequestMapping("/column/columnSetting/{id}/{bclassId}")
	public ModelAndView funidByIdColumn(@PathVariable("id") Integer id,@PathVariable Integer bclassId,HttpServletRequest request){
		ModelAndView mav = new ModelAndView();
		try {
			if(id != 0 ){//id等于零说明是新增
				TvcmsColumn tcc = new TvcmsColumn();
				tcc = columnService.findByIdColumn(id);
				mav.addObject("tvcolumn", tcc);
			}
			mav.addObject("bclassId", bclassId);
			List<TvcmsColumn> tc = columnService.findById(bclassId);
			if(bclassId == 1){//说明是跟节点
				mav.addObject("parent", "根节点");
			}else{
				mav.addObject("parent", tc.get(0).getParent());
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		mav.setViewName("column/columnSetting");
		return mav;
	}
	
	/**
	 * 
	 * @Title: funidTmpAll
	 * @Description: 查询模板下拉
	 * @author lianpeng
	 * @param type
	 * @return
	 */
	@RequestMapping("/column/findTemplate/{type}")
	public Object funidTmpAll(@PathVariable("type") String type){
		return  columnService.findTmpAll( type,false);
	}
	
	@RequestMapping("/column/findTemp/{type}")
	public Object funidTemplateAll(@PathVariable("type") String type){
		return  columnService.findTmpAll( type,true);
	}
	
	/**
	 * 修改或新增
	 * @author lianpeng
	 * 2014-6-28 上午10:19:34
	 * @throws FileNotFoundException 
	 */
	@RequestMapping("/column/modifyAndSave")
	public ModelAndView modifyAndSave(HttpServletRequest request,TvcmsColumn tcc) throws Exception{
		boolean flag = true;
		String returnString="";
		String forward="";
		try {
			boolean isMultipart = ServletFileUpload.isMultipartContent(request);//检查输入请求是否为multipart表单数据。
			    if (isMultipart == true) {
			       FileItemFactory factory = new DiskFileItemFactory();//为该请求创建一个DiskFileItemFactory对象，通过它来解析请求。执行解析后，所有的表单项目都保存在一个List中。
			       ServletFileUpload upload = new ServletFileUpload(factory);
			       upload.setHeaderEncoding("UTF-8");
			       List<FileItem> items = upload.parseRequest(request);
			       Iterator<FileItem> itr = items.iterator();
			       while (itr.hasNext()) {
			           FileItem item = (FileItem) itr.next();
			           //检查当前项目是普通表单项目还是上传文件。
			           if (item.isFormField()) {//如果是普通表单项目，显示表单内容。
					       String fieldName = item.getFieldName();
					       if (fieldName.equals("cid"))
				    		   tcc.setId(getInt(item.getString("UTF-8")));
					       if (fieldName.equals("columnname")) 
					    	   tcc.setColumnname(item.getString("UTF-8"));
					       if (fieldName.equals("parent")) 
					    	   tcc.setParent(item.getString("UTF-8"));
					       if (fieldName.equals("bclassId")) 
					    	   tcc.setBclassId(getInt(item.getString("UTF-8")));
					       if (fieldName.equals("columnname")) 
					    	   tcc.setColumnname(item.getString("UTF-8"));
					       if (fieldName.equals("columnType")) 
					    	   tcc.setColumnType(item.getString("UTF-8"));
					       if (fieldName.equals("columnurl")) 
					    	   tcc.setColumnurl(item.getString("UTF-8"));
					       if (fieldName.equals("fileSave")) 
					    	   tcc.setFileSave(item.getString("UTF-8"));
				    	   if (fieldName.equals("thumbnail")) {
				    		   if(flag)
				    			   tcc.setThumbnail(item.getString("UTF-8"));
				    	   }
					       if (fieldName.equals("sort")) 
					    	   tcc.setSort(getInt(item.getString("UTF-8")));
					       if (fieldName.equals("isnav")) 
					    	   tcc.setIsnav(item.getString("UTF-8"));
					       if (fieldName.equals("accessRights")) 
					    	   tcc.setAccessRights(item.getString("UTF-8"));
					       if (fieldName.equals("title")) 
					    	   tcc.setTitle(item.getString("UTF-8"));
					       if (fieldName.equals("keyWords")) 
					    	   tcc.setKeyWords(item.getString("UTF-8"));
					       if (fieldName.equals("descriPtion")) 
					    	   tcc.setDescriPtion(item.getString("UTF-8"));
					       if (fieldName.equals("templateStyle")) 
					    	   tcc.setTemplateStyle(item.getString("UTF-8"));
					       if (fieldName.equals("indexStyle")) 
					    	   tcc.setIndexStyle(item.getString("UTF-8"));
					       if (fieldName.equals("listStyle")) 
					    	   tcc.setListStyle(item.getString("UTF-8"));
					       if (fieldName.equals("contStyle")) 
					    	   tcc.setContStyle(item.getString("UTF-8"));
					       if (fieldName.equals("isHidden"))
					    	   tcc.setIsHidden(getInt(item.getString()));
			           } else {
			        	   if(!"".equals(item.getName())){
			        		   flag = false;
			        		   List<SystemSetting> list  = systemSettingService.findAll();
			        		   String path = "";
			        		   String tomcatPat = request.getSession().getServletContext().getRealPath("/");//获取项目根目录
			        		   for(int i = 0;i<list.size();i++){
			        			   path = tomcatPat + list.get(0).getImgSavePath();
			        		   }
			        		   File dir = new File(path);
			        		   if(!dir.exists()) {
			        			   dir.mkdirs();
			        			}
			        		   String fileName = new SimpleDateFormat("yyyyMMddHHmmss").format((new Date().getTime()));
			        		   File savedFile=new File(path, fileName+item.getName().substring(item.getName().lastIndexOf(".")));
			        		   
			        		   tcc.setThumbnail(fileName+item.getName().substring(item.getName().lastIndexOf(".")));//数据库保存文件路径，加文件名称
				               item.write(savedFile);
			        	   }
			           }
			       }
			    } else {
			    	 System.out.println("the enctype must be multipart/form-data");
			    }
			if(tcc.getId() != null && tcc.getId()==0){
				tcc.setId(null);
				returnString="新增成功";
			}else{
				returnString="修改成功";
			}
			if(tcc.getBclassId()!=null&&tcc.getBclassId()!=0){
				columnService.saveorUpdate(tcc);
			}else{
				returnString="失败";
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		ModelAndView mav = new ModelAndView();
		forward="/column/findById/"+tcc.getBclassId();
		mav.addObject("url", forward);
		mav.addObject("returnString",returnString);
		mav.setViewName("system/returnAlert");
		return mav;
	}
	

	/**
	 * 
	 * @Title: getInt
	 * @Description: 根据String 返回Integer
	 * @author lianpeng
	 * @param s
	 * @return
	 */
	private Integer getInt(String s ){
		if(!"".equals(s)){
			return Integer.parseInt(s);
 	   }
		return null;
	}
	/**
	 * 删除
	 * @author lianpeng
	 * 2014-6-28 下午04:36:31
	 */
	@RequestMapping("/column/delete/{id}/{bclassId}")
	public ModelAndView deleteColumn(@PathVariable("id") String id,@PathVariable("bclassId") Integer  bclassId){
		String returnString="删除成功!";
		String forward="/column/findById/"+bclassId;
		try {
			columnService.deleteColumn(id);
		} catch (Exception e) {
			e.printStackTrace();
		}
		ModelAndView mav = new ModelAndView();
		mav.addObject("url", forward);
		mav.addObject("returnString",returnString);
		mav.setViewName("system/returnAlert");
		return mav;
	}
	
	/**
	 * 根据栏目名生成拼音
	 * @author xurannan
	 * 2014年7月13日 下午1:55:48
	 */
	@RequestMapping("/column/columnPinyin")
	@ResponseBody
	public Map<String, String> columnPinyin(TvcmsColumn column,HttpServletRequest request){
		Map<String, String> map = new HashMap<String, String>();
		try {
			String fileSave =Pinyin4jUtil.getPinYin(request.getParameter("columnname"));
			map.put("fileSave", fileSave);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return map;
	}
	
	@RequestMapping("/column/modefyContType")
	public Map<String, Object> modefyContType(HttpServletRequest request){
		Map<String, Object> result = new HashMap<String, Object>();
		try {
			String ids = request.getParameter("ids");
			String val = request.getParameter("val");
			String type = request.getParameter("type");
			ids = "'"+ ids.replace(",", "','")+"'";
			columnService.UpdateType(ids,type,val);
			result.put("result", true);
		} catch (Exception e) {
			result.put("result", true);
			e.printStackTrace();
		}
		return result;
	}
	
}
