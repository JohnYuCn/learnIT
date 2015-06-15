/**
 * @Project: 特维内容管理系统
 * @Description: 文章内容的业务处理，新增、修改、删除等
 * Copyright (c) 2014 北京特维网讯技术有限公司 版权所有
 *
 * @author xurannan
 * @date 2014-6-24 下午12:29:30
 * @version V1.0
 */
package cn.tvcms.cms.cont.controller;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import cn.tvcms.cms.column.service.ColumnService;
import cn.tvcms.cms.common.dao.CommonDao;
import cn.tvcms.cms.common.query.CombinationQuery;
import cn.tvcms.cms.common.query.QueryPaging;
import cn.tvcms.cms.common.utils.DateTools;
import cn.tvcms.cms.common.utils.MessageUtils;
import cn.tvcms.cms.common.utils.SystemUtils;
import cn.tvcms.cms.cont.service.ContService;
import cn.tvcms.cms.pojo.Author;
import cn.tvcms.cms.pojo.Cont;
import cn.tvcms.cms.pojo.ContComments;
import cn.tvcms.cms.pojo.Source;
import cn.tvcms.cms.pojo.SystemSetting;
import cn.tvcms.cms.pojo.TvcmsColumn;
import cn.tvcms.cms.publish.controller.StaticController;
import cn.tvcms.cms.system.service.SystemSettingService;
import cn.tvcms.cms.system.service.UserSettingsService;

/** 
 * 内容管理
 * @author xurannan
 * @version create time：2014年6月24日 下午10:47:31 
 * 
 */
@Controller
public class ContController {
	@Autowired
	private ContService contservice;

	@Autowired
	private ColumnService  columnService;
	
	@Autowired
	private SystemSettingService  systemSettingService;
	
	@Autowired
	private CommonDao dao;
	
	@Autowired
	private QueryPaging quertPaging;
	
	@Autowired
	private StaticController staticController;
	
	@Autowired
	private UserSettingsService userSettingsService;
		
	/**
	 * 生成左侧栏目页
	 * @author xurannan
	 * 2014年6月24日 下午11:20:25
	 */
	@RequestMapping("/cont/cont")
	public String initCont(){
		return "cont/cont";
	}
	
	/**
	 * @Title: initContLeft
	 * @Description: TODO(刷新(加载)树菜单)
	 * @author wangChuang
	 * @date 2015-4-7 下午06:02:26
	 * @return
	 */
	@RequestMapping("/cont/contLeft")
	public String initContLeft(){
		return "cont/contLeft";
	}
	
	/**
	 * 查询栏目
	 * @author xurannan
	 * 2014年6月27日 下午6:20:32
	 */
	@RequestMapping("/cont/load")
	public List<TvcmsColumn> findAllColumn() throws Exception{
		return columnService.findAll();
	}
	
	/**
	 * 根据栏目分类查询内容
	 * @author xurannan
	 * 2014年6月27日 下午11:58:47
	 */
	@RequestMapping("/cont/findById/{id}")
	public ModelAndView findById(@PathVariable("id") Integer id,HttpServletRequest request,Cont cont) throws Exception{
		ModelAndView mav = new ModelAndView();
		String releaseTimes = null;
		String title = null;
		try {
			String hqlWhere = " from Cont where columnId = '"+ id+ "' and isDeleted != 1 ";
			if(cont!=null){
				releaseTimes = request.getParameter("releaseTimes");
				title = request.getParameter("title");
				if(title!=null){
					if(!title.equals("")){
						hqlWhere+=" and title like '%"+title+"%'";
					}
				}
				if(releaseTimes!=null){
					if(!releaseTimes.equals("")){
						hqlWhere+=" and releaseTime between '"+DateTools.getDateYYYYMMDD(DateTools.getDate(releaseTimes))+"' and '"+DateTools.getSpecifiedDayAfter(releaseTimes)+"'";
					}
				}
			}
			
			hqlWhere+=" order by releaseTime desc";
			Map<String,Object> map = quertPaging.query(hqlWhere, request, Cont.class);
			mav.addObject("userSet",userSettingsService.findAll().get(0));
			List<TvcmsColumn> columnList=contservice.findAllColumn(id);
			mav.addObject("title",title);
			mav.addObject("releaseTime",releaseTimes);
			mav.addObject("colId",id);
			mav.addObject("paging", map);
			mav.addObject("columnList",columnList);
			mav.addObject("id", id);
			mav.setViewName("cont/queryCont");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mav;
	}
	
	
	/**
	 * @Title: findDeleteById
	 * @Description: 查询删除内容
	 * @author lp
	 * @date 2014-12-21 下午09:10:35
	 * @param id
	 * @param request
	 * @param cont
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/cont/findDeleteById/{id}")
	public ModelAndView findDeleteById(@PathVariable("id") Integer id,HttpServletRequest request,Cont cont) throws Exception{
		ModelAndView mav = new ModelAndView();
		try {
			String hqlWhere = " from Cont where columnId = '"+ id+ "' and isDeleted = 1 ";
			
			hqlWhere+=" order by releaseTime desc";
			Map<String,Object> map = quertPaging.query(hqlWhere, request, Cont.class);
			List<TvcmsColumn> columnList=contservice.findAllColumn(id);
			mav.addObject("colId",id);
			mav.addObject("paging", map);
			mav.addObject("columnList",columnList);
			mav.addObject("id", id);
			mav.setViewName("cont/queryDeleteCont");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mav;
	}
	
	/**
	 * 生成内容新增页面
	 * @author xurannan
	 * 2014年6月28日 下午11:39:52
	 */
	@SuppressWarnings("static-access")
	@RequestMapping("/cont/addCont/{cid}")
	public ModelAndView addCont(@PathVariable("cid") Integer cid) throws Exception{
		ModelAndView mav = new ModelAndView();
		DateTools tools = new DateTools();
		mav.addObject("releaseTime", tools.getStandSystemDate());
		mav.addObject("cid", cid);
		mav.setViewName("cont/addCont");
		return mav;
	}
	
	/**
	 * @Title: findId
	 * @Description: 根据内容id查询内容
	 * @author lianpeng
	 * @date 2014-8-23 上午11:38:56
	 * @param id
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/cont/findId/{id}")
	public ModelAndView findId(@PathVariable("id") Integer id) throws Exception{
		ModelAndView mav = new ModelAndView();
		Cont cont;
		try {
			cont = dao.findById(Cont.class, id);
			mav.addObject("releaseTimes", cont.getReleaseTime());
			mav.addObject("cid", cont.getColumnId());
			String newContent = cont.getNewContent();
			if(StringUtils.isNotEmpty(newContent)){
				cont.setNewContent(charConvert(newContent));
			}
			String contAbs = cont.getContAbs();
			if(StringUtils.isNotEmpty(contAbs)){
				cont.setContAbs(charConvert(contAbs));
			}
			mav.addObject("cont", cont);
		} catch (Exception e) {
			e.printStackTrace();
		}
		mav.setViewName("cont/addCont");
		return mav;
	}
	

	
	
	/**
	 * 保存内容
	 * 
	 * @author lianpeng
	 * 2014年7月5日 下午9:00:16
	 * @throws Exception 
	 */
	@RequestMapping("/cont/savecont")
	public ModelAndView SaveCont(Cont cont,HttpServletRequest request) throws Exception{
		ModelAndView mav = new ModelAndView();
		String returnString="保存成功!";
		String forward="";
		
		try {
			Boolean flag = true;
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
				       
				       if (fieldName.equals("releaseTimes")){
				    	   cont.setReleaseTime(DateTools.getDateTime(item.getString("UTF-8")));
				       }else if (fieldName.equals("upTimes")){
				    	   cont.setUpTime(DateTools.getDateTime(item.getString("UTF-8")));
				       }else if (fieldName.equals("downTimes")){
				    	   cont.setDownTime(DateTools.getDateTime(item.getString("UTF-8")));
				       }else if (fieldName.equals("topStartDates")){
				    	   cont.setTopStartDate(DateTools.getDateTime(item.getString("UTF-8")));
				       }else if (fieldName.equals("topEndDates")){
				    	   cont.setTopEndDate(DateTools.getDateTime(item.getString("UTF-8")));
				       }else if (fieldName.equals("id")){
				    	   cont.setId(getInt(item.getString("UTF-8")));
				       }else if (fieldName.equals("title")){
				    	   cont.setTitle(item.getString("UTF-8"));
				       }else if(fieldName.equals("onlyId")){
				    	   cont.setOnlyId(item.getString("UTF-8"));
				       }else if (fieldName.equals("is_b")){
				    	   cont.setIs_b(getInt(item.getString("UTF-8")));
				       }else if (fieldName.equals("is_i")){
				    	   cont.setIs_i(getInt(item.getString("UTF-8")));
				       }else if (fieldName.equals("is_del")){
				    	   cont.setIs_del(getInt(item.getString("UTF-8")));
				       }else if (fieldName.equals("tuijian")){
				    	   cont.setTuijian(getInt(item.getString("UTF-8")));
				       }else if (fieldName.equals("toutiao")){
				    	   cont.setToutiao(getInt(item.getString("UTF-8")));
				       }else if (fieldName.equals("keywords")){
				    	   cont.setKeywords(item.getString("UTF-8"));
				       }else if (fieldName.equals("author")){
				    	   cont.setAuthor(item.getString("UTF-8"));
				       }else if (fieldName.equals("columnId"))
				    	   cont.setColumnId(getInt(item.getString("UTF-8")));
				       else if (fieldName.equals("titleColor"))
				    	   cont.setTitleColor(item.getString("UTF-8"));
				       else if(fieldName.equals("noRecommend"))
				    	   cont.setNoRecommend(item.getString("UTF-8"));
				       else if(fieldName.equals("recommend"))
				    	   cont.setRecommend(item.getString("UTF-8"));
				       else if (fieldName.equals("extUrl"))
				    	   cont.setExtUrl(item.getString("UTF-8"));
				       else if (fieldName.equals("titleImg")){
			    		   if(flag)
			    			   cont.setTitleImg(item.getString("UTF-8"));
				       }else if (fieldName.equals("contAbs"))
				    	   cont.setContAbs(item.getString("UTF-8"));
				       else if (fieldName.equals("infoSource")){
				    	   cont.setInfoSource(item.getString("UTF-8"));
				       }else if (fieldName.equals("newContent"))
				    	   cont.setNewContent(getContImg(item.getString("UTF-8"),request));
				       else if (fieldName.equals("topRank"))
				    	   cont.setTopRank(item.getString("UTF-8"));
				       else if (fieldName.equals("topRule"))
				    	   cont.setTopRule(item.getString("UTF-8"));
				       else if (fieldName.equals("quanxianset"))
				    	   cont.setQuanxianset(item.getString("UTF-8"));
				       else if (fieldName.equals("lookPoint"))
				    	   cont.setLookPoint(item.getString("UTF-8"));
				       else if (fieldName.equals("hits"))
				    	   cont.setHits(getInt(item.getString("UTF-8")));
				       else if (fieldName.equals("dowNum"))
				    	   cont.setDowNum(getInt(item.getString("UTF-8")));
				       else if (fieldName.equals("isModel"))
				    	   cont.setIsModel(getInt(item.getString("UTF-8")));
				       else if (fieldName.equals("filenamePath"))
				    	   cont.setFilenamePath(item.getString("UTF-8"));
				       else if (fieldName.equals("tags"))
				    	   cont.setTags(item.getString("UTF-8"));
				       else if (fieldName.equals("commentOption"))
				    	   cont.setCommentOption(getInt(item.getString("UTF-8")));
				       else if (fieldName.equals("isDeleted"))
				    	   cont.setIsDeleted(getInt(item.getString("UTF-8")));
				       else if (fieldName.equals("contTemp"))
				    	   cont.setContTemp(getInt(item.getString("UTF-8")));
				       else if (fieldName.equals("createTime"))
				    	   cont.setCreateTime(getDate(item.getString("UTF-8")));
			       } else {
			    	   if(!"".equals(item.getName())){
			    		   flag = false;
			    		   String path = "";
			    		   List<SystemSetting> list  = systemSettingService.findAll();
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
			    		   
			    		   cont.setTitleImg(fileName+item.getName().substring(item.getName().lastIndexOf(".")));//说句库保存文件路径，加文件名称
			               item.write(savedFile);
			    	   }
			       }
			   }
			} else {
				 System.out.println("----------------------------the enctype must be multipart/form-data");
			}
			contservice.save(cont);
			
		} catch (Exception e) {
			returnString="保存失败!";
			e.printStackTrace();
		}
		forward="/cont/findById/"+cont.getColumnId()+".html";
		mav.addObject("url", forward);
		mav.addObject("id", cont.getColumnId());
		mav.addObject("returnString",returnString);
		mav.setViewName("system/returnAlert");
		return mav;
	}
	
	private String getContImg(String str,HttpServletRequest request){
		String projectName = request.getContextPath();
		if(StringUtils.equals(projectName, "/tvcms"))
			return str;
		return str.replaceAll(projectName, "../..");
	}
	
	/**
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
	 * @Title: contDele
	 * @Description: 根据id批量删除
	 * @author lianpeng
	 * @date 2014-8-23 下午02:11:22
	 * @param ids
	 * @param cid
	 * @return
	 */
	@RequestMapping("cont/dele/{cid}/{id}")
	public ModelAndView contDele(@PathVariable("id") String ids ,@PathVariable("cid") Integer cid){
		ModelAndView mav = new ModelAndView();
		String returnString="删除成功!";
		String forward="";
		try {
			ids = "'"+ ids.replace(",", "','")+"'";
			contservice.delete(ids);
			forward="/cont/findById/"+cid+".html";
			mav.addObject("url",forward);
		} catch (Exception e) {
			returnString="删除失败!";
			e.printStackTrace();
		}
		mav.addObject("returnString",returnString);
		mav.setViewName("system/returnAlert");
		return mav;
	}
	
	
	/**
	 * @Title: contUpdatDele
	 * @Description: 更改状态
	 * @author lp
	 * @date 2014-12-21 下午08:20:37
	 * @param ids
	 * @param cid
	 * @return
	 */
	@RequestMapping("cont/updateDele/{id}")
	@ResponseBody
	public Object contUpdatDele(@PathVariable("id") String ids){
		String returnString="success";
		try {
			ids = "'"+ ids.replace(",", "','")+"'";
			contservice.UpdateDelete(ids);
		} catch (Exception e) {
			returnString="error";
			e.printStackTrace();
		}
		return returnString;
	}
	
	/**
	 * @Title: contUpdat
	 * @Description: 恢复已删除的内容
	 * @author lp
	 * @date 2014-12-21 下午09:11:15
	 * @param ids
	 * @param cid
	 * @return
	 */
	@RequestMapping("cont/UpdateStauts/{cid}/{id}")
	public ModelAndView contUpdat(@PathVariable("id") String ids ,@PathVariable("cid") Integer cid){
		ModelAndView mav = new ModelAndView();
		String returnString="恢复成功!";
		String forward="";
		try {
			ids = "'"+ ids.replace(",", "','")+"'";
			contservice.UpdateStauts(ids);
			forward="/cont/findById/"+cid+".html";
			mav.addObject("url",forward);
		} catch (Exception e) {
			returnString="恢复失败!";
			e.printStackTrace();
		}
		mav.addObject("returnString",returnString);
		mav.setViewName("system/returnAlert");
		return mav;
	}
	
	
	/**
	 * @Title: modefyContType
	 * @Description: 修改内容属性： 内容模板、列表模板、首页模板
	 * @author lianpeng
	 * @date 2014-12-28 下午02:57:25
	 * @param request
	 * @return
	 */
	@RequestMapping("cont/modefyContType")
	public Map<String, Object> modefyContType(HttpServletRequest request){ Map<String, Object> result = new HashMap<String, Object>();
		try {
			String ids = request.getParameter("ids");
			String val = request.getParameter("val");
			String type = request.getParameter("type");
			ids = "'"+ ids.replace(",", "','")+"'";
			contservice.UpdateType(ids,type,val);
			result.put("result", true);
		} catch (Exception e) {
			result.put("result", true);
			e.printStackTrace();
		}
		return result;
	}
	
	
	/**
	 * 
	 * @Title: mobileCont
	 * @Description: 移动内容
	 * @author sunjinyang
	 * @date 2014-11-11 下午09:35:31
	 * @param columnId
	 * @param contIds
	 * @param cId
	 * @return
	 */
	@RequestMapping("cont/Controller/mobileCont/{columnId}/{contIds}/{cId}")
	public ModelAndView mobileCont(@PathVariable("columnId") Integer columnId,@PathVariable("contIds") String contIds,@PathVariable("cId") Integer cId){
		ModelAndView mav=new ModelAndView();
	    contservice.mobileCont(columnId,contIds);
		String returnString="移动成功!";
		String forward="/cont/findById/"+cId+".html";
		mav.addObject("url",forward);
		mav.addObject("returnString",returnString);
		mav.setViewName("system/returnAlert");
		return mav;
	}
	/**
	 * 
	 * @Title: copyCont
	 * @Description:复制内容
	 * @author sunjinyang
	 * @date 2014-11-11 下午09:38:47
	 * @param columnId
	 * @param contIds
	 * @param cId
	 * @return
	 */
	@RequestMapping("cont/Controller/copyCont/{columnId}/{contIds}/{cId}")
	public ModelAndView copyCont(@PathVariable("columnId") Integer columnId,@PathVariable("contIds") String contIds,@PathVariable("cId") Integer cId){
		ModelAndView mav=new ModelAndView();
	    contservice.copyCont(columnId,contIds);
		String returnString="复制成功!";
		String forward="/cont/findById/"+cId+".html";
		mav.addObject("url",forward);
		mav.addObject("returnString",returnString);
		mav.setViewName("system/returnAlert");
		return mav;
	}
	
	/**
	 * @Title: staticCont
	 * @Description: 静态化
	 * @author lp
	 * @date 2014-12-21 下午08:18:31
	 * @param request
	 * @return
	 */
	@RequestMapping ( "cont/staticCont" )
	public Map<String, Object> staticCont(HttpServletRequest request){
		Map<String, Object> result = new HashMap<String, Object>();
		try {
			String localUrl = MessageUtils.getMessage("websiteLocalUrl");
			String staticPage = MessageUtils.getMessage("staticPageDir");
			String columnId = request.getParameter("columnId");
			String ids = request.getParameter("ids");
			String dirStr = request.getSession().getServletContext().getRealPath("/") + "/" + staticPage;
			TvcmsColumn column = columnService.findByCont(columnId);
			makeSubColumnContentStatic(column, dirStr, localUrl, ids);
			result.put("success", true);
		} catch (Exception e) {
			e.printStackTrace();
			result.put("success", false);
		}
		return result;
	}
	
	
	/**
	 * @Title: makeSubColumnContentStatic
	 * @Description: 静态化选择的内容
	 * @author lianpeng
	 * @date 2014-12-7 下午03:26:29
	 * @param column
	 * @param dirStr
	 * @param url
	 * @throws Exception
	 */
	private void makeSubColumnContentStatic(TvcmsColumn column, String dirStr, String url,String ids) throws Exception {
		if (column == null) {
			return;
		}
		String fileSave = column.getFileSave();
		String colUrl = url + "/" + fileSave;
		String colDirStr = dirStr + "/" + fileSave;
		
		List<Cont> contList = contservice.findIds(ids);
		for (Cont cont : contList) {
			Date createTime = cont.getCreateTime();
			String contDir = null;
			if (createTime == null) {
				contDir = colDirStr;
			} else {
				String createStr = DateTools.getDateYYYYMMDD(createTime);
				contDir = colDirStr + "/" + createStr;
			}
			staticController.saveStaticPage(colUrl + "/" + cont.getId() + ".html", contDir, cont.getId() + ".html");
		}
	}
	
	private  Date getDate(String date) throws Exception {
		if (date==null||date.equals("")||date.trim().equals("")) {
			return new Date();
		}
		try {
			return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse(date);
		} catch (ParseException pe) {
			throw new Exception("error.date.convert");
		}
	}

	/**
	 * @Description: 查询人员
	 * @author lianpeng
	 * @param type
	 * @return
	 */
	@RequestMapping("/cont/findPersion")
	public Object funidPersion(){
		return  contservice.findPersonAll();
	}
	
	@RequestMapping("/cont/getSource")
	public Object getSource(){
		return  contservice.getSource();
	}
	
	/**
	 * @Title: charConvert
	 * @Description: 字符串特殊字符转换：转换字符串（回车和双引号）
	 * @author lianpeng
	 * @date 2015-1-10 上午11:42:49
	 * @param str  需要转化的字符串
	 * @return
	 */
	private String charConvert(String str){
		String result = str.replaceAll("\"", "\\\\\"");
		result = str.replaceAll("\r\n", "\\\\r\\\\n");
		return result;
	}
	
	/**
	 * 
	 * @Title: queryComments
	 * @Description:查询内容下所有评论
	 * @author sunjinyang
	 * @date 2015-1-12 下午04:02:02
	 * @return
	 * @throws Exception 
	 */
	@RequestMapping("/cont/queryComments/{contId}")
	public ModelAndView queryComments(@PathVariable("contId") Integer contId,HttpServletRequest request,ContComments contComments) throws Exception{
		ModelAndView mav=new ModelAndView();
	    String commentTime=request.getParameter("commentTimes");
	    contComments.setContId(contId);
	    int isNull=0;
	    if(contComments.getIsExamine()==null){
	    	contComments.setIsExamine("0");
	    }
	    if(contComments.getIsExamine().equals("0")){
	    	contComments.setIsExamine(null);
	    	isNull++;
	    }
	    
	    if(commentTime!=null&&!commentTime.equals("")){
	    	contComments.setCommentTime(DateTools.getDate(commentTime));
	    }
		String hql=CombinationQuery.queryHql(ContComments.class, contComments);
		hql+=" order by commentTime desc";
		System.out.println("================"+hql);
		Map<String, Object> map=quertPaging.query(hql, request, ContComments.class);
		
		if(isNull!=0){
			contComments.setIsExamine("0");
		}
		mav.addObject("contComments",contComments);
		mav.addObject("paging",map);
		mav.addObject("contId",contId);
		mav.setViewName("cont/queryContComments");
		return mav;
	}
	
	
	/**
	 * 
	 * @Title: findCommentById
	 * @Description: 跳转到新增活着修改内容页面
	 * @author sunjinyang
	 * @date 2015-1-12 下午05:49:25
	 * @param commentId
	 * @param contId
	 * @return
	 */
	@RequestMapping("/cont/contController/findCommentById/{commentId}/{contId}")
	public ModelAndView findCommentById(@PathVariable("commentId") Integer commentId,@PathVariable("contId") Integer contId){
		ModelAndView mav=new ModelAndView();
		mav.setViewName("cont/addAndUpdateContComment");
		mav.addObject("contId",contId);
		if(commentId==0){
			return mav;
		}
		ContComments contComments=contservice.findContCommentsById(commentId);
		mav.addObject("contComments",contComments);
		return mav;
	}
	
	/**
	 * 
	 * @Title: addAndUpdateComment
	 * @Description:新增或修改评论
	 * @author sunjinyang
	 * @date 2015-1-12 下午06:06:38
	 * @param contId
	 * @return
	 * @throws Exception 
	 */
	@RequestMapping("/cont/contController/addAndUpdateComment/{contId}")
	public ModelAndView addAndUpdateComment(@PathVariable("contId") Integer contId,ContComments contComments,HttpServletRequest request) throws Exception{
		ModelAndView mav=new ModelAndView();
		String returnString="";
		String forward="/cont/queryComments/"+contId+".html";
		String commentTime=request.getParameter("commentTimes");
		contComments.setUserId(SystemUtils.getLoginUserId(request));
		if(commentTime!=null&&!commentTime.equals(""))
			contComments.setCommentTime(DateTools.getDateTime(commentTime));
		String replyTime=request.getParameter("replyTimes");
		if(replyTime!=null&&!replyTime.equals(""))
		    contComments.setReplyTime(DateTools.getDateTime(replyTime));
		if(contComments.getId()==null){
			contComments.setContId(contId);
			returnString="新增评论成功!";
		}else{
			returnString="修改评论成功!";
		}
		contservice.updateAndAddComments(contComments);
		mav.addObject("url",forward);
		mav.addObject("returnString",returnString);
		mav.setViewName("system/returnAlert");
		return mav;
	}
	
	
	/**
	 * 
	 * @Title: deleComment
	 * @Description: 删除评论
	 * @author sunjinyang
	 * @date 2015-1-12 下午08:37:59
	 * @param ids
	 * @param contId
	 * @return
	 */
	@RequestMapping("/cont/contController/deleComment/{ids}/{contId}")
	public ModelAndView deleComment(@PathVariable("ids") String ids,@PathVariable("contId") Integer contId){
		ModelAndView mav=new ModelAndView();
		contservice.deleteComments(ids);
		String returnString="删除成功!";
		String forward="/cont/queryComments/"+contId+".html";
		mav.addObject("returnString",returnString);
		mav.addObject("url",forward);
		mav.setViewName("system/returnAlert");
		return mav;
	}
	
	
	/**
	 * 
	 * @Title: isExamine
	 * @Description: 审核留言
	 * @author sunjinyang
	 * @date 2015-1-12 下午08:43:30
	 * @param id
	 * @param type
	 * @param response
	 * @throws Exception 
	 */
	@RequestMapping("/cont/contController/isCommentExamine/{id}/{type}.html")
	public void isExamine(@PathVariable("id") Integer id,@PathVariable("type") String type,HttpServletResponse response,HttpServletRequest request) throws Exception{
		   ContComments contComments =contservice.findContCommentsById(id);
		   Cont cont=contservice.findByIdCont(contComments.getContId());
		   contComments.setIsExamine(type);
		   PrintWriter out=null;
		   try {
			   contservice.updateAndAddComments(contComments);
			   if(out==null)
			   out=response.getWriter();
			   if(type.equals("1")){
				   out.print("1");//审核通过
			   }else{
				   out.print("2");//取消审核
			   }
			   out.flush();
			   //审核后静态化
			   String localUrl = MessageUtils.getMessage("websiteLocalUrl");
				String staticPage = MessageUtils.getMessage("staticPageDir");
				String columnId=cont.getColumnId().toString();
				String ids = id.toString();
				String dirStr = request.getSession().getServletContext().getRealPath("/") + "/" + staticPage;
				TvcmsColumn column = columnService.findByCont(columnId);
				makeSubColumnContentStatic(column, dirStr, localUrl, ids);
		} catch (IOException e) {
			out.print("3");//系统错误
			out.flush();
			e.printStackTrace();
		}finally{
			out.close();
		}
		   
	}
	
	/**
	 * 
	 * @Title: addAuthor
	 * @Description: 添加内容作者
	 * @author xurannan
	 * @date 2015-4-18 上午11:24:19
	 * @return
	 */
	@RequestMapping("/cont/contController/addAuthor/{name}")
	@ResponseBody
	public Object addAuthor(@PathVariable("name") String name){
	    String result = "success";
		try {
			Author aut = new Author();
			aut.setId(null);
			aut.setName(name);
			contservice.addAuhtor(aut);
		} catch (Exception e) {
			result =  "error";
			e.printStackTrace();
		}
		return result;
	}
	
	/**
	 * 
	 * @Title: addAuthor
	 * @Description: 添加资源内容
	 * @author xurannan
	 * @date 2015-4-18 上午11:24:19
	 * @return
	 */
	@RequestMapping("/cont/contController/addSource/{name}")
	@ResponseBody
	public Object addSource(@PathVariable("name") String name){
	    String result = "success";
		try {
			Source sou = new Source();
			sou.setId(null);
			sou.setName(name);
			contservice.addSource(sou);
		} catch (Exception e) {
			result =  "error";
			e.printStackTrace();
		}
		return result;
	}
	
	@RequestMapping("/cont/contController/deleteInfo/{type}")
	@ResponseBody
	public Object deleceInfo(@PathVariable("type") Integer type,HttpServletRequest request){
		String result = "success";
		String name  = request.getParameter("name");
		try {
			contservice.deleteData(name, type);
		} catch (Exception e) {
			result =  "error";
			e.printStackTrace();
		}
		return result;
	}
	
	
}
