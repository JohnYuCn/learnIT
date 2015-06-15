/**
 * @Project: 特维内容管理系统
 * @Description: TODO(用一句话描述该文件做什么)
 * Copyright (c) 2014 北京特维网讯技术有限公司 版权所有
 *
 * @author sunJingYang
 * @date 2014-9-29 下午02:19:04
 * @version V1.0
 */
package cn.tvcms.cms.plugin.controller;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import cn.tvcms.cms.common.query.QueryPaging;
import cn.tvcms.cms.common.utils.DateTools;
import cn.tvcms.cms.plugin.service.AdvertService;
import cn.tvcms.cms.pojo.Advert;

/**
 * @ClassName: AdvertControll
 * @Description: 控制广告
 * @author sunJingYang
 * @date 2014-9-29 下午02:19:04
 * 
 */
@Controller
public class AdvertController {
	@Autowired
	private AdvertService advertService;
	
	@Autowired
	private QueryPaging queryPaging;
	
	/**
	 * 
	 * @Title: findAll
	 * @Description: 分页显示广告信息
	 * @author sunJingYang
	 * @date 2014-9-29 下午04:29:42
	 * @param request
	 * @return
	 */
	@RequestMapping("/plugin/advertController/findAll")
	public ModelAndView findAll(HttpServletRequest request,Advert advert){
		ModelAndView mav=new ModelAndView();
		String sqlWhere="from Advert";
		if(advert!=null){
			if(advert.getAdName()!=null){
				if(!advert.getAdName().equals(""))
				{
				sqlWhere+=" where adName like '%"+advert.getAdName()+"%' ";
				}
			}
		}
		sqlWhere+=" order by createTime desc";
		Map<String, Object> map=queryPaging.query(sqlWhere, request, Advert.class);
		mav.addObject("paging",map);
		mav.setViewName("/plugin/queryAdvert");
	    return mav;
	}
	/**
	 * 
	 * @Title: deleAd
	 * @Description: 删除广告
	 * @author sunJingYang
	 * @date 2014-9-29 下午04:34:11
	 * @param ids
	 * @return
	 */
	@RequestMapping("/plugin/advertController/deleAd/{ids}")
	public ModelAndView deleAd(@PathVariable("ids") String ids){
		ModelAndView mav=new ModelAndView();
		String returnString="删除广告成功!";
		String forward="";
		try{
			ids="'"+ids.replace(",", "','")+"'";
			advertService.deleteMsg(ids);
			forward="/plugin/advertController/findAll.html";
		    mav.addObject("url",forward);
		}catch(Exception e){
			returnString="删除广告失败!";
			e.printStackTrace();
		}
		mav.addObject("returnString",returnString);
		mav.setViewName("system/returnAlert");
		return mav;
	}
	/**
	 * 
	 * @Title: findById
	 * @Description: 返回新增或修改页面
	 * @author sunJingYang
	 * @date 2014-9-30 上午10:53:35
	 * @param id
	 * @return
	 */
	@RequestMapping("/plugin/advertController/findById/{id}")
	public ModelAndView findById(@PathVariable("id") Integer id){
		ModelAndView mav=new ModelAndView();
		if(id==0){
			mav.addObject("type","add");
		}else{
			Advert advert=advertService.findById(id);
			mav.addObject("advert",advert);
			mav.addObject("type","update");
		}
		mav.setViewName("/plugin/updateAdvert");
		return mav;
	}
	
	/**
	 * 广告新增或修改
	 * @author sunJingYang
	 * 2014-9-28 上午10:19:34
	 * @throws FileNotFoundException 
	 */
	@RequestMapping("/plugin/advertController/addOrUpdateAdvert")
	public ModelAndView modifyAndSave(HttpServletRequest request) throws Exception{
		String returnString="保存成功！";
		String forward="";
		boolean flag = true;
		Advert advert =new Advert();
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
					       if (fieldName.equals("id"))
				    		   advert.setId(getInt(item.getString("UTF-8")));
					       if (fieldName.equals("adName")) 
					    	   advert.setAdName(item.getString("UTF-8"));
					       if (fieldName.equals("type")) 
					    	   advert.setType(getInt(item.getString("UTF-8")));
					       if (fieldName.equals("altName")) 
					    	   advert.setAltName(item.getString("UTF-8"));
					       if (fieldName.equals("notes")) 
					    	   advert.setNotes(item.getString("UTF-8"));
					       if (fieldName.equals("linkAddress")) 
					    	   advert.setLinkAddress(item.getString("UTF-8"));
					       
					       if (fieldName.equals("imageName")) {
					            String imageName=item.getString("UTF-8");  
					            
					            if((!imageName.equals(""))&&imageName!=null){
					            	if(imageName.lastIndexOf("\\")>0){
					            	
					    	           advert.setImageName(imageName.substring(imageName.lastIndexOf("\\")+1));
					            	}
					            	else{
					            		advert.setImageName(imageName);
					            	}
					            }
					       }
				    	   if (fieldName.equals("imageUrl")) {
				    		   if(flag)
				    			   advert.setImageUrl(item.getString("UTF-8"));
				    	   }
					     
					    	  
			           } else {
			        	   if(!"".equals(item.getName())){
			        		   flag = false;
			        		   //List<SystemSetting> list  = systemSettingService.findAll();
			        		   String path = "";
			        		   String tomcatPat = request.getSession().getServletContext().getRealPath("/");//获取项目根目录
			        		   //for(int i = 0;i<list.size();i++){
			        			   //path = tomcatPat + list.get(0).getImgSavePath();
			        		  // }s
			        		   path=tomcatPat+"/pictureFile/advert";
			        		   File dir = new File(path);
			        		   if(!dir.exists()) {
			        			   dir.mkdirs();
			        			}
			        		   String fileName = DateTools.getDateyyMMddHHmmss();
			        		   File savedFile=new File(path, fileName+item.getName().substring(item.getName().lastIndexOf(".")));
			        		   
			        		  // tcc.setThumbnail(fileName+item.getName().substring(item.getName().lastIndexOf(".")));//说句库保存文件路径，加文件名称
			        		   advert.setImageUrl("advert/"+fileName+item.getName().substring(item.getName().lastIndexOf(".")));
				               item.write(savedFile);
			        	   }
			        	   
			           }
			       }
			    } else {
			    	 System.out.println("the enctype must be multipart/form-data");
			    }
			if(advert.getId() != null && advert.getId()==0){
				advert.setId(null);
				
			}
			advertService.saveorUpdate(advert);
		} catch (Exception e) {
			returnString="操作失败!请联系管理员";
			e.printStackTrace();
		}
		ModelAndView mav = new ModelAndView();
		forward="/plugin/advertController/findAll";
		mav.addObject("url", forward);
		mav.addObject("returnString",returnString);
		mav.setViewName("system/returnAlert");
		return mav;
	}
	/**
	 * 
	 * @Title: getInt
	 * @Description: 根据String 返回Integer
	 * @author sunJingYang
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
	 * 
	 * @Title: showImage
	 * @Description：弹出页面显示图片
	 * @author sunJingYang
	 * @date 2014-9-30 下午02:16:11
	 * @param url
	 * @param type
	 * @return
	 */
	@RequestMapping("/plugin/showImage/{url}/{type}")
	public ModelAndView showImage(@PathVariable("url") String url,@PathVariable("type") int type,HttpServletRequest request){
		ModelAndView mav=new ModelAndView();
		if(type==1){
			url=request.getContextPath()+"/pictureFile/advert/"+url;
		}else{
			url=url.replace(",", "\\");
		}
//		String path=request.getContextPath();
		
		mav.addObject("url",url);
		mav.setViewName("/plugin/showImage");
		return mav;
	}
}
