<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

    <!-- <title>${oper}成功</title> -->
    
	<link rel="stylesheet" href="<%=path%>/assets/css/main.css">
	<SCRIPT language=javascript>
	    var sidebar = window.parent.sidebar;
	    if (sidebar != null && sidebar.refreshTree != null) sidebar.refreshTree("${param.treePid}");
	    
	    <c:if test="${oper=='保存'}">
		var secs=2;
		for(i=1;i<=secs;i++){ 
			window.setTimeout("update(" + i + ")", i * 1000);} 
		function update(num){
			if(num == secs){
				self.location.href='<%=path%>/template/editCatalog.html?op=mod&id=${id}&treePid=${param.treePid}';} 
			else{ 
				
			} 
		}
		</c:if>
	</SCRIPT>
    <div class="main-content-wrapper">
	    <div style="width:100%;text-align:center">
	    	<br>
	    	<c:if test="${oper=='保存'}">
	    	<a href="<%=path%>/template/editCatalog.html?op=mod&id=${id}&treePid=${param.treePid}" target="mainFrame">保存成功，如果您的浏览器没有自动跳转，请点击这里</a>
	    	</c:if>
	    	<c:if test="${oper=='删除'}">
	    	删除成功
	    	</c:if>
	    </div>
    </div>
