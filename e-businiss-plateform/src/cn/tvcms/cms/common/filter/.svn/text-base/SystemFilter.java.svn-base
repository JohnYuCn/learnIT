/**
 * @Project: 特维内容管理系统
 * Copyright: Copyright (c) 2014
 * Company: 北京特维网讯技术有限公司
 *
 * @author suntao
 * @version V1.0
 */
package cn.tvcms.cms.common.filter;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;

import cn.tvcms.cms.column.service.ColumnService;
import cn.tvcms.cms.common.BizException;
import cn.tvcms.cms.common.dao.CommonDao;
import cn.tvcms.cms.common.utils.DateTools;
import cn.tvcms.cms.common.utils.MessageUtils;
import cn.tvcms.cms.common.utils.SpringUtils;
import cn.tvcms.cms.common.utils.SystemUtils;
import cn.tvcms.cms.cont.service.ContService;
import cn.tvcms.cms.pojo.Cont;
import cn.tvcms.cms.pojo.SystemSetting;
import cn.tvcms.cms.pojo.Template;
import cn.tvcms.cms.pojo.TemplateCatalog;
import cn.tvcms.cms.pojo.TvcmsColumn;
import cn.tvcms.cms.pojo.UVRecord;
import cn.tvcms.cms.pojo.VisitStatistics;
import cn.tvcms.cms.system.service.SystemPowerService;
import cn.tvcms.cms.system.service.SystemSettingService;
import cn.tvcms.cms.system.service.UserPowerChecker;
import cn.tvcms.cms.template.service.TemplateService;
import cn.tvcms.cms.visit.service.VisitStatisticsService;

/** 
 * 系统拦截器。
 * @author suntao 
 * @version create time：2014-7-13 下午01:44:45 
 * 
 */
public class SystemFilter implements Filter {
	private static final Log log = LogFactory.getLog(SystemFilter.class);
	
	/**
	 * CMS管理端功能url路径。
	 */
	private static final Set<String> adminPowerUrl = new HashSet<String>();
	
	/**
	 * 无需权限控制的url路径
	 */
	private static final Set<String> noPowerUrl = new HashSet<String>();
	
	private TemplateService templateService;
	
	private SystemPowerService systemPowerService;
	
	private ContService cServict;
	
	private CommonDao dao;
	
	private VisitStatisticsService vsService;	
	

	
	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		String initParamStr = filterConfig.getInitParameter("adminPowerUrl");
		processInitParam(initParamStr, adminPowerUrl);
		initParamStr = filterConfig.getInitParameter("noPowerUrl");
		processInitParam(initParamStr, noPowerUrl);
		
		templateService = (TemplateService)SpringUtils.getBean("templateService");
		systemPowerService = (SystemPowerService)SpringUtils.getBean("systemPowerService");
		cServict = (ContService)SpringUtils.getBean("contService");
		dao = (CommonDao)SpringUtils.getBean("commonDao");
		vsService = (VisitStatisticsService)SpringUtils.getBean("visitStatisticsService");
	}
	
	@Override
	public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse,
			FilterChain filterChain) throws IOException, ServletException {
		HttpServletRequest request = (HttpServletRequest)servletRequest;
		HttpServletResponse response = (HttpServletResponse)servletResponse;
		String urlStr = request.getServletPath();
		if (urlStr == null) {
			urlStr = "";
		}
		log.debug("url:" + urlStr);                         
		try {
			// 判断是否是发布内容
			if ("/".equals(urlStr) || "/index".equals(urlStr)
					|| "/index.htm".equals(urlStr) || "/index.html".equals(urlStr)) { // 网站首页
				addVisitStatistics(request);//添加访问信息
				processIndexPage(request, response);
				return;
			} else {
				boolean isAdminPowerUrl = false;
				for (String str : adminPowerUrl) {
					if (urlStr.startsWith(str)) {
						isAdminPowerUrl = true;
						break;
					}
				}
				boolean isNoPowerUrl = false;
				for (String str : noPowerUrl) {
					if (urlStr.startsWith(str)) {
						isNoPowerUrl = true;
						break;
					}
				}
				if (!isAdminPowerUrl && !isNoPowerUrl) {
					int idx = urlStr.lastIndexOf('/');
					if(urlStr.indexOf("/memberlogin")== 0){//判断是否自定义过滤的url
						Integer userId = (Integer)request.getSession().getAttribute("memberId");
						if(userId == null || "".equals(userId)){
							String loginurl = request.getParameter("loginurl");
							if(loginurl !=null && !"".equals(loginurl)){//如果传递路径返回后台传递路径赋值登陆后进入访问路径
								request.setAttribute("url", loginurl);
							}else{
								request.setAttribute("url", urlStr);
							}
							RequestDispatcher dispatcher = request.getRequestDispatcher("/memberLogin/admin");
							response.setContentType("text/html;charset=UTF-8");
							dispatcher.forward(request, response);
							return;
						}
						filterChain.doFilter(servletRequest, servletResponse);
						return;
					}
					if (idx > 0) { // 栏目列表和内容
						int type = 2;
						if (urlStr.startsWith("index", idx + 1)) {
							type = 3;
						}
						if (type == 3) { // 列表
							processListPage(request, response, urlStr);
							return;
						} else {
							processContentPage(request, response, urlStr);
							return;
						}
					} else { // 单页面
						String filename = urlStr.substring(1);
						Template template = templateService.findSinglePage(filename);
						if (template != null) {
							processSinglePage(request, response, template, filename);
							return;
						}
					}
				} else if (isAdminPowerUrl) { // 检查CMS后台用户权限
					Integer userid  =  SystemUtils.getLoginUserId(request);
					if(userid == null || userid != 1){
						checkAdminPower(request, urlStr,response);
					}
				}
			}
		} catch (Exception e) {
			throw new ServletException(e.getMessage(), e);
		}
		
	
		
		filterChain.doFilter(servletRequest, servletResponse);
	}
	
	
	/**
	 * @Title: getCcurrentPosition
	 * @Description: TODO(获取当前位置)
	 * @param request
	 */
	@SuppressWarnings("unused")
	private void getCcurrentPosition(HttpServletRequest request){
		
		if(request.getParameter("menu_name")!=null&&request.getParameter("menu_name")!=""){
			request.getSession().removeAttribute("menu_name");
			request.getSession().setAttribute("menu_name",request.getParameter("menu_name"));
		}
		System.out.println("当前位置:("+request.getSession().getAttribute("menu_name")+")");
	}
	
	@Override
	public void destroy() {
		
	}
	
	/**
	 * 解析初始化参数。
	 * @Title: processInitParam
	 * @Description: 解析初始化参数。
	 * @author suntao
	 * @date 2014-9-6 上午10:34:45
	 * @param param
	 * @param urlSet
	 */
	private void processInitParam(String param, Set<String> urlSet) {
		if (param == null || param.length() == 0) {
			return;
		}
		String[] arr = param.split(",");
		for (String str : arr) {
			if (str != null) {
				str = str.trim();
				urlSet.add(str);
			}
		}
	}
	
	/**
	 * 处理首页。
	 * @Title: processIndexPage
	 * @Description: 处理首页。
	 * @author suntao
	 * @date 2014-8-23 下午02:35:59
	 * @param request
	 * @param response
	 * @throws Exception
	 */
	private void processIndexPage(HttpServletRequest request, HttpServletResponse response) throws Exception {
		SystemSettingService systemSettingService = (SystemSettingService)SpringUtils.getBean("systemSettingService");
	    SystemSetting systemSetting = systemSettingService.findById(1);
	    String mode = request.getParameter("mode"); // 参数mode等于d时，动态执行，不获取静态化内容，用于静态化时获取到最新的内容，下同
	    if (!"d".equals(mode) && systemSetting.getIndexMode().intValue() == 1) { // 如果首页模式为静态页面模式
	    	String filePath = "index.html";
			String staticDir = MessageUtils.getMessage("staticPageDir");;
			String fileStr = request.getSession().getServletContext().getRealPath("/") + "/" + staticDir + "/" + filePath;
			File file = new File(fileStr);
			if (file.exists()) {
				RequestDispatcher dispatcher = request.getRequestDispatcher("/" + staticDir + "/" + filePath);
				response.setContentType("text/html;charset=UTF-8");
				dispatcher.forward(request, response);
				return;
			}
	    }
		
	    // 动态生成
		ColumnService columnService = (ColumnService)SpringUtils.getBean("columnService");
		TvcmsColumn column = columnService.findByFileSave("");
		if (column != null) {
			request.setAttribute("_currColumn", column);
		}
		request.setAttribute("_url", request.getRequestURI());
		List<Template> list = templateService.findByCatalogId(1);
		if (list.size() > 0) {
			Template template = list.get(0);
			doPublish(template, request, response);
		}
	}
	
	/**
	 * 处理列表。
	 * @Title: processListPage
	 * @Description: 处理列表。
	 * @author suntao
	 * @date 2014-8-23 下午03:01:45
	 * @param request
	 * @param response
	 * @param urlStr
	 * @throws Exception
	 */
	private void processListPage(HttpServletRequest request, HttpServletResponse response, String urlStr) throws Exception {
		int idx = urlStr.lastIndexOf('/');
		String mode = request.getParameter("mode");
		String currPage = request.getParameter("currPage");
		if (currPage == null || "1".equals(currPage)) {
			currPage = "";
		} else if (currPage.length() > 0) {
			currPage = "_" + currPage;
		}
		
		// 如果存在静态文件，则输出静态文件
		SystemSettingService systemSettingService = (SystemSettingService)SpringUtils.getBean("systemSettingService");
	    SystemSetting systemSetting = systemSettingService.findById(1);
		if (!"d".equals(mode) && systemSetting.getWebMode().intValue() == 1) {
			String staticPath = urlStr.substring(0, idx) + "/index" + currPage + ".html";
			String staticDir = MessageUtils.getMessage("staticPageDir");;
			String fileStr = request.getSession().getServletContext().getRealPath("/") + "/" + staticDir + staticPath;
			File file = new File(fileStr);
			if (file.exists()) {
				RequestDispatcher dispatcher = request.getRequestDispatcher("/" + staticDir + staticPath);
				response.setContentType("text/html;charset=UTF-8");
				dispatcher.forward(request, response);
				return;
			}
		}
		
		// 动态生成
		String path = urlStr.substring(1, idx);
		ColumnService columnService = (ColumnService)SpringUtils.getBean("columnService");
		TvcmsColumn column = columnService.findByFileSave(path);
		if (column != null) {
			request.setAttribute("_currColumn", column);
			request.setAttribute("_url", request.getRequestURI());
			
			Template template = null;
			String listTplId = column.getListStyle();
			if (listTplId != null && listTplId.length() > 0) {
				template = templateService.findById(Integer.parseInt(listTplId));
			} else {
				List<Template> list = templateService.findByCatalogId(3);
				if (list.size() > 0) {
					template = list.get(0);
				}
			}
			
			if (template != null) {
				doPublish(template, request, response);
				return;
			}
		}
	}
	
	/**
	 * 处理文章内容。
	 * @Title: processContentPage
	 * @Description: 处理文章内容。
	 * @author suntao
	 * @date 2014-8-23 下午03:28:35
	 * @param request
	 * @param response
	 * @param urlStr
	 * @throws Exception
	 */
	private void processContentPage(HttpServletRequest request, HttpServletResponse response, String urlStr) throws Exception {
		int idx = urlStr.lastIndexOf('/');
		int dotIdx = urlStr.lastIndexOf('.');
		String mode = request.getParameter("mode");
		boolean flag = checkUserPower(request, urlStr);
		if(!flag){
			request.setAttribute("url", urlStr);
			RequestDispatcher dispatcher = request.getRequestDispatcher("/memberLogin/admin");
			response.setContentType("text/html;charset=UTF-8");
			dispatcher.forward(request, response);
			return;
		}
		// 如果存在静态文件，则输出静态文件
		SystemSettingService systemSettingService = (SystemSettingService)SpringUtils.getBean("systemSettingService");
	    SystemSetting systemSetting = systemSettingService.findById(1);
		if (!"d".equals(mode) && systemSetting.getWebMode().intValue() == 1) {
			String staticPath = null;
			if (dotIdx > idx) {
				staticPath = urlStr.substring(0, dotIdx);
			} else {
				staticPath = urlStr;
			}
			
			staticPath += ".html";
			String staticDir = MessageUtils.getMessage("staticPageDir");;
			String fileStr = request.getSession().getServletContext().getRealPath("/") + "/" + staticDir + staticPath;
			File file = new File(fileStr);
			if (file.exists()) {
				RequestDispatcher dispatcher = request.getRequestDispatcher("/" + staticDir + staticPath);
				response.setContentType("text/html;charset=UTF-8");
				dispatcher.forward(request, response);
				return;
			}
		}
		
		// 动态生成
		String contIdStr = (dotIdx > idx) ? urlStr.substring(idx + 1, dotIdx) : urlStr.substring(idx + 1);
		int contId = Integer.parseInt(contIdStr);
		ContService contService = (ContService)SpringUtils.getBean("contService");
		CommonDao cdao = contService.getDao();
		Cont cont = cdao.findById(Cont.class, contId);
		if (cont != null) {
			request.setAttribute("_currCont", cont);
			ColumnService columnService = (ColumnService)SpringUtils.getBean("columnService");
			TvcmsColumn column = columnService.findByIdColumn(cont.getColumnId());
			request.setAttribute("_currColumn", column);
			request.setAttribute("_url", request.getRequestURI());
			
			Template template = null;
			String contTplId = column.getContStyle();
			if (contTplId != null && contTplId.length() > 0) {
				template = templateService.findById(Integer.parseInt(contTplId));
			} else {
				List<Template> listTpl = templateService.findByCatalogId(2);
				if (listTpl.size() > 0) {
					template = listTpl.get(0);
				}
			}
			
			if (template != null) {
				doPublish(template, request, response);
				return;
			}
		}
	}
	
	/**
	 * 处理单页面。
	 * @Title: processSinglePage
	 * @Description: 处理单页面。
	 * @author suntao
	 * @date 2014-9-14 下午04:50:28
	 * @param request
	 * @param response
	 * @param filename 文件名。
	 * @throws Exception
	 */
	private void processSinglePage(HttpServletRequest request, HttpServletResponse response, Template template, String filename) throws Exception {
		String mode = request.getParameter("mode");
		
		// 如果存在静态文件，则输出静态文件
	    SystemSettingService systemSettingService = (SystemSettingService)SpringUtils.getBean("systemSettingService");
	    SystemSetting systemSetting = systemSettingService.findById(1);
		if (!"d".equals(mode) && systemSetting.getWebMode().intValue() == 1) {
	    	String staticDir = MessageUtils.getMessage("staticPageDir");;
			String fileStr = request.getSession().getServletContext().getRealPath("/") + "/" + staticDir + "/" + filename;
			File file = new File(fileStr);
			if (file.exists()) {
				RequestDispatcher dispatcher = request.getRequestDispatcher("/" + staticDir + "/" + filename);
				response.setContentType("text/html;charset=UTF-8");
				dispatcher.forward(request, response);
				return;
			}
	    }
		
	    // 动态生成
		ColumnService columnService = (ColumnService)SpringUtils.getBean("columnService");
		TvcmsColumn column = columnService.findByFileSave("");
		if (column != null) {
			request.setAttribute("_currColumn", column);
		}
		request.setAttribute("_url", request.getRequestURI());
		
		doPublish(template, request, response);
	}
	
	/**
	 * 执行jsp。
	 * @Title: doPublish
	 * @Description: 执行jsp。
	 * @author suntao
	 * @date 2014-8-23 下午02:48:21
	 * @param template
	 * @param request
	 * @param response
	 * @throws Exception
	 */
	private void doPublish(Template template, HttpServletRequest request, HttpServletResponse response) throws Exception {
		String templateDir = getTemplateDir(template);
		String templatePath = templateDir + "/" + template.getId();
		request.setAttribute("_htmlPath", templatePath);

		String jspPath = "/WEB-INF/publish/" + templateDir + "/" + template.getId() + ".jsp";
		File jspFile = new File(jspPath);
		List<Integer> list = new ArrayList<Integer>();
		if (!jspFile.exists()) {
			templateService.genJspFile(template, SystemUtils.getWebAppRealPath(request),list);
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(jspPath);
		response.setContentType("text/html;charset=UTF-8");
		dispatcher.forward(request, response);
	}
	
	/**
	 * 得到模板JSP所在文件夹。
	 * @Title: getTemplateDir
	 * @Description: 得到模板JSP所在文件夹。
	 * @author suntao
	 * @date 2014-8-23 下午02:48:50
	 * @param template
	 * @return
	 * @throws Exception
	 */
	private String getTemplateDir(Template template) throws Exception {
		TemplateCatalog catalog = templateService.findCatalogById(template.getCatalogId());
	    StringBuffer str = new StringBuffer();
	    str.append(catalog.getCatalogId());
	    
	    while (catalog.getTopCatalogId() != null) {
	    	catalog = templateService.findCatalogById(catalog.getTopCatalogId());
	    	str.insert(0, "/");
	    	str.insert(0, catalog.getCatalogId());
	    }
	    return str.toString();
	}

	/**
	 * 检查CMS后台用户权限。
	 * @Title: checkAdminPower
	 * @Description: 检查CMS后台用户权限。
	 * @author suntao
	 * @date 2014-9-6 下午03:31:58
	 * @param request
	 * @param urlStr
	 * @throws Exception 用户未登录、没有权限时抛出异常。
	 */
	private void checkAdminPower(HttpServletRequest request, String urlStr,HttpServletResponse response) throws Exception {
		Integer userId = SystemUtils.getLoginUserId(request);
		if (userId == null) {
			String msg = "未登录系统，不允许访问";
			request.setAttribute("msg", msg);
			request.setAttribute("msgFlag", "true");
			log.error(msg);
			throw new BizException(msg);
		}
		
		UserPowerChecker userPowerChecker = null;
		Object obj = request.getSession().getAttribute("userPowerChecker");
		if (obj == null) {
			userPowerChecker = systemPowerService.createUserPowerChecker(userId, null);
			request.getSession().setAttribute("userPowerChecker", userPowerChecker);
		} else {
			userPowerChecker = (UserPowerChecker)obj;
			UserPowerChecker checkUserPowerChecker = systemPowerService.createUserPowerChecker(userId, userPowerChecker);
			if (checkUserPowerChecker != userPowerChecker) {
				request.getSession().setAttribute("userPowerChecker", checkUserPowerChecker);
			}
			userPowerChecker = checkUserPowerChecker;
		}
		
		if (!userPowerChecker.check(urlStr)) {
			String msg = "没有权限";
			request.setAttribute("msg", msg);
			throw new BizException(msg);
		}
	}

	
	/**
	 * @Title: checkUserPower
	 * @Description: 判读用户是否有访问文章权限
	 * @author lianpeng
	 * @date 2014-10-14 下午10:37:27
	 * @param request
	 * @param id
	 * @return
	 * @throws Exception
	 */
	private Boolean checkUserPower(HttpServletRequest request, String urlStr) throws Exception{
		Integer userId = (Integer)request.getSession().getAttribute("memberId");
		if(userId != null && !"".equals(userId)){
			return true;
		}else{
			String id = null;
			int idx = urlStr.lastIndexOf('/');
			int dotIdx = urlStr.lastIndexOf('.');
			if (dotIdx > idx) {
				id = urlStr.substring(idx+1, dotIdx);
			} else {
				id = urlStr.substring(0, dotIdx);
			}
			
			UpPVAndUv(id, request);
			Cont  cont = cServict.findByIdCont(Integer.parseInt(id));
			String quanx = cont.getQuanxianset();
			if("1".equals(quanx)){
				return false;
			}
		}
		return true;
	}
	
	
	/**
	 * @Title: UpPVAndUv
	 * @Description: 更新访问次数
	 * @author lp
	 * @date 2014-12-11 下午10:20:59
	 * @param id
	 * @param request
	 * @return
	 */
	private Boolean UpPVAndUv(String id,HttpServletRequest request){
		if(!SystemUtils.isNum(id)){
			return false;
		}
		String ip = SystemUtils.getIpAddr(request);
		Cont  cont = cServict.findByIdCont(Integer.parseInt(id));
		int pvNumber = cont.getPvNumber()==null ? 0 : cont.getPvNumber().intValue();
		cont.setPvNumber(pvNumber+1);
		if(ipVisitTime(cont.getId(),ip)){
			int uvNumber = cont.getUvNumber() ==null ?0 : cont.getUvNumber().intValue();
			cont.setUvNumber(uvNumber+1);
		}
		dao.saveOrUpdate(cont);
		return true;
	}
	
	/**
	 * @Title: ipVisitTime
	 * @Description: 判断ip登录时间
	 * @author lp
	 * @date 2014-12-11 下午10:03:41
	 * @return
	 */
	@SuppressWarnings("unchecked")
	private Boolean ipVisitTime(Integer contId,String userIp){
		try {
			String hql = "from UVRecord where contId='"+contId+"' and userIp='"
					+userIp+"'" ;
			List<UVRecord> list = dao.queryHQL(hql);
			int sysTime = getTime();
			if(list.size()==0){
				UVRecord uvRecord = new UVRecord();
				uvRecord.setContId(contId);
				uvRecord.setUserIp(userIp);
				uvRecord.setVisitTime(sysTime);
				dao.save(uvRecord);
				return true;
			}else{
				UVRecord uvRecord = list.get(0);
				if(uvRecord.getVisitTime().intValue() == sysTime){
					return false;
				}else{
					uvRecord.setVisitTime(sysTime);
					dao.merge(uvRecord);
				}
			}
		} catch (Exception e) {
			log.error("判断uv时出错，错误内容："+e.getMessage());
			return false;
		}
		return false;
	}
	
	private Integer getTime(){
		SimpleDateFormat df=new SimpleDateFormat("yyyyMMdd");
		String  visitDate =  df.format(new Date()).toString();
		return Integer.parseInt(visitDate);
	}
	
	/**
	 * @Title: addVisitStatistics
	 * @Description: TODO(添加浏览信息)
	 * @author wangChuang
	 * @throws Exception 
	 * @date 2015-4-17 下午04:55:35
	 */
	@SuppressWarnings("unused")
	private void addVisitStatistics(HttpServletRequest request) {
		try {
			String ip = SystemUtils.getIpAddr(request);
			String time = DateTools.getDateyyMMddHHmmss();
			VisitStatistics statistics = new VisitStatistics();
			statistics.setIp(ip);
			statistics.setTime(DateTools.getDateTime(time));
			vsService.saveOrUpdate(statistics);
		} catch (Exception e) {
			System.err.println("统计出现异常,错误位置 cn.tvcms.cms.common.filter.SystemFilter.addVisitStatistics(HttpServletRequest request)方法中 ");
		}
	}
}