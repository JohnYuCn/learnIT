<%@ page language="java" import="java.util.*"  pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tims" uri="/tvcmsTagLib"%>
<%
	String path = request.getContextPath();
%>
	<link rel="stylesheet" href="<%=path%>/css/jquery.datetimepicker.css" />
	<script type="text/javascript" src="<%=path%>/js/jquery.datetimepicker.js"></script>
<script type="text/javascript">
function clickMenu(url) {
	$("#contentDiv").load("<%=path%>/"+url);
}
function clickMenu(url,id) {
    $("#contentDiv").load("<%=path%>/"+url,$('#'+id).serializeArray());
}
function clickMenu1(url,name) {
      $("#contentDiv").load("<%=path%>/"+url);
	   if(name!=null&&name!=""){
		$("#menu_name").html("<font color='red' size='5px'>当前位置："+name+"</font>");
	}else{
		$("#menu_name").html("<font color='red' size='5px'>当前位置：首页</font>");
	}
}
//退出(注销)
function logOut(){
	window.top.location = "admin";
}
function aaa(){
	var className = $("#body_home").attr('class');
	if(className=="pace-done"){
		//移除class
		$("#body_home").removeClass("pace-done");
		//添加class
		$("#body_home").addClass("pace-done mini-navbar");
	}
	if(className=="pace-done mini-navbar"){
		//移除class
		$("#body_home").removeClass("pace-done mini-navbar");
		//添加class
		$("#body_home").addClass("pace-done");
	}
}
</script>
<style type="text/css">
.nav>li>a {
	font-weight: normal;
}
</style>
<nav class="navbar-default navbar-static-side" role="navigation" >
<div class="sidebar-collapse">
	<ul class="nav" id="side-menu">
		<li class="nav-header">
			<div class="dropdown profile-element">
				<center>
				<span>
					<img alt="image" class="img-circle" src='<tims:systemSetting attr="root"/>/assets/ins/img/profile_small.jpg' 
						onclick="location.href='<tims:systemSetting attr="root"/>/login/doLogin.html?positionId=-1'" 
						style="cursor:pointer"/>
				</span><br/>
				<a href='javaScript:void(0);' style="cursor:text">
					<span class="block m-t-xs"><strong class="font-bold">当前登录: ${sessionScope.trueName}</strong></span> 
				</a>
				</center>
			</div>
			<div class="logo-element">
				<a href="<tims:systemSetting attr="root"/>/login/doLogin.html?positionId=-1">IN+</a>
			</div>
		</li>
		<c:forEach var="heads" items="${sessionScope.headList}">
			<li stedid="li${heads.id}">
				<c:if test="${empty heads.enterUrl}">
					<a href="javaScript:void(0);"> 
						<i class="${heads.imgPath}" title="${heads.name}"></i> 
						<span class="nav-label">${heads.name}</span> 
						<span class="fa arrow"></span>
					</a>
					<ul class="nav nav-second-level collapse ">
					<c:forEach var="power" items="${sessionScope.powerList}">
						<c:if test="${power.parentId==heads.id}">
							<li stedid="li${power.id}">
								<c:if test="${empty power.enterUrl}">
									<a href="#">${power.name} <span class="fa arrow"></span></a>
									<ul class="nav nav-third-level collapse" style="height: 0px;">
										<c:forEach var="subPower" items="${sessionScope.subPowerList}">
											<c:if test="${power.id==subPower.parentId}">
												<li stedid="li${subPower.id}">
													<a href="javascript:clickMenu1('${subPower.enterUrl}?menu_name=${subPower.name}','${heads.name} → ${power.name} → ${subPower.name}')">
														${subPower.name}
													</a>
												</li>
											</c:if>
										</c:forEach>
									</ul>
								</c:if>
								<c:if test="${not empty power.enterUrl  &&  not empty subPower.name}">
									<a href="javascript:clickMenu1('${power.enterUrl}?menu_name=${subPower.name}','${heads.name} → ${power.name} → ${subPower.name}')">${power.name}
										<span class="fa arrow"></span>
									</a>
								</c:if>
								<c:if test="${not empty power.enterUrl}">
									<a href="javascript:clickMenu1('${power.enterUrl}?menu_name=${subPower.name}','${heads.name} → ${power.name}')">${power.name}
									</a>
								</c:if>
							</li>
						</c:if>
					</c:forEach>
				</ul>
				</c:if>
				<c:if test="${not empty heads.enterUrl}">
					<a href="javascript:clickMenu1('${heads.enterUrl}?menu_name=${heads.name}','${heads.name}')" >
						<i class="${heads.imgPath}" title="${heads.name}"></i> 
						<span class="nav-label">${heads.name}</span> 
					 </a>
				</c:if>
			</li>
		</c:forEach>
	</ul>
</div>
</nav>
<div id="page-wrapper" class="gray-bg dashbard-1">
	<div class="row  border-bottom white-bg dashboard-header" style="background-color: #eee;height:70px">
		<nav class="navbar navbar-static-top" style="margin-bottom: 0;background-color:#eee;margin-top:-15px ;" role="navigation">
			<div class="navbar-header">
				<!-- 控制隐藏显示菜单按钮		 -->
				<a class="navbar-minimalize minimalize-styl-2 btn btn-primary " href="JavaScript:void(0)">
					<i class="fa fa-bars"></i>
				</a>
				
			</div>
			<div style="float: left;padding-top: 13px;" >
				<span class="m-r-sm text-muted welcome-message" id="menu_name">
					<font color="red" size="5px">当前位置：首页</font>
				</span>	
			</div>
			<ul class="nav navbar-top-links navbar-right">
				<li>
					
					<a href="JavaScript:void(0)" onclick="logOut()">
						<i class="fa fa-sign-out"></i>注销
					</a>
				</li>
			</ul>
		</nav>
	</div>
