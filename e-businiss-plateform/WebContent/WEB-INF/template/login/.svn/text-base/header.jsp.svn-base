<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%String path = request.getContextPath(); %>
<%--= <title>特维内容管理系统</title>--%>

<script src="<%=path %>/assets/js/jquery-1.10.2.min.js"></script>

<script type="text/javascript">
$(document).ready(function(){
    $("button").bind("click", function() {
        var dom = $(this);
        var id = dom.attr("_id");
        if(id == 3){
        	window.parent.sidebar.location = "<%=path %>/column/column.html";
        }else if (id == 4) {
        	window.parent.sidebar.location = "<%=path %>/template/sidebar.html?id=" + id;
        }else if(id == 2){
        	window.parent.sidebar.location = "<%=path %>/cont/cont.html";
        }else{
        	window.parent.sidebar.location = "sidebar.html?id=" + id;
        }
        
        
    });
    
    //退出登陆
    $("#outLogin").click(function(){
    	window.top.location = "admin";
    });
    
});
</script>
	<div id="header" class="tvHeader" style="margin: 0px 0px;">
		<div class="brand">
			<a class="logo" href="javascript:;">特维CMS</a>
		</div>

		<div class="btn-group btn-group-justified tvcms_nav_li">
			<ul>
			    <c:forEach var="power" items="${powerList}">
			    <li><button class="btn btn-primary" type="button" _id="<c:out value="${power.id}"/>"><c:out value="${power.name}"/></button></li>
			    </c:forEach>
			    <li><input  type="button" class="btn btn-primary" id="outLogin" value="退出登录" /></li>
			</ul>
		</div>

	</div>


