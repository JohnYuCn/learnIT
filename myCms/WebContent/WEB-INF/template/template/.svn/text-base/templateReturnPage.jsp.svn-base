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
	    
		var secs=2;
		
			window.onload=update();
		function update(){
			
				alert("保存成功!");
			    <c:if test="${param.cid==''}">
				self.location.href='<%=path%>/template/template.html?id=${param.id}&treePid=${param.treePid}';
				</c:if>
				<c:if test="${param.cid!=''}">
				self.location.href='<%=path%>/template/list.html?cid=${param.cid}&treePid=${param.treePid}';
				</c:if>
		
		}
	</SCRIPT>
    <div class="main-content-wrapper">
	    <div style="width:100%;text-align:center">
	    	<br>
	    	
	    </div>
    </div>
