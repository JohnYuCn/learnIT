<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%
	String path = request.getContextPath();
%>
 <div id="tableDiv">
	<link href="<%=path%>/css/jquery.datetimepicker.css" rel="stylesheet">
	<script type="text/javascript" src="<%=path%>/js/jquery.datetimepicker.js"></script>
   <!--  <title>用户</title> -->
	<script type="text/javascript">
	
		$(document).ready(function(){
			$("#addUser").click(function(){
				clickMenu('/user/userController/findById/0.html');
			});
					   	$("#sub").click(function() {
	  		
			$("#userName").val($("#userName1").val());
			$("#lastLoginTime").val($("#lastLoginTime1").val());
												 $("#start").val(0);
			$("#limit").val(20);
			$("#currPage").val(0);
			//$("#form").submit();
			clickMenu('/user/userController/findAll','form');
		});
			$("#res").click(function() {
				$("#userName").val('');
				$("#userName1").val('');
				$("#lastLoginTime").val('');
				$("#lastLoginTime1").val('');
			});
		});
		//去往更新(修改)
		function toUpdate(id){
			clickMenu('/user/userController/findById/'+id+'.html');
		}
		//去往删除
		function doDelete(id){
			clickMenu('/user/userController/delete/'+id+'.html');
		}
	</script>
	
    <div class="main-content-wrapper" style="padding: 10px 10px;">
    	 <div id="main-content">
                <div class="row">
                    <div class="col-md-12">
                       <div class="panel panel-default form-horizontal form-border">

							<div class="panel-heading">
								<h3 class="panel-title">
									查询条件
								</h3>

							</div>

							<div class="panel-body">


								<div class="clearfix col-sm-4" >
									<label class="control-label pull-left">
										用户名：
									</label>
									<div class="col-sm-8 " style="padding-left:0px; ">
										<input type="text" class="form-control" id="userName1"
											value="${user.userName}">
									</div>
								</div>
								
								<div class="clearfix col-sm-4"  >
									<label class="control-label pull-left">
										最后登录时间：
									</label>
									<div class="col-sm-8 " style="padding-left:0px; ">
										<input type="text" class="form-control" id="lastLoginTime1"
										value="<fmt:formatDate value='${user.lastLoginTime}'
														pattern='yyyy-MM-dd'/>" >
									</div>
								</div>

							</div>

								<div class="panel-body" style="text-align: center;">
								<button type="button" class="btn btn-primary btn-trans"
									style="margin-right: 20px;" id="sub">
									查询
								</button>
								<button type="button" id="res" class="btn btn-primary btn-trans">
									重置
								</button>
							</div>


						</div>
                        <div class="panel panel-default" style="position: relative;">
                            <div class="panel-heading">
                                <h3 class="panel-title">用户信息</h3>
                                <div class="actions pull-right" style="margin-top: 25px">
									<button class="btn btn-primary" type="button" id="addUser">添加用户</button>
                                </div>
                            </div>
                           
                            <div class="panel-body">
                                <table id="example" class="table table-striped table-bordered" cellspacing="0" width="100%">
                                    <thead>
                                        <tr>
                                        <th>序号</th>
                                            <th>用户名</th>
                                            <th>用户组</th>
                                            <th>登录次数</th>
                                            <th>最后登录时间</th>
                                            <th>登录IP</th>
                                            <th>操作</th>
                                        </tr>
                                    </thead>

                                    <tbody>
                                    	<c:forEach var="user" items="${paging.object}" varStatus="rownum">
	                                        <tr>
	                                            <td>${rownum.index+1+paging.paging.start}</td>
	                                            <td>${user.userName}</td>
	                                            <td>${user.userGroup.name}</td>
	                                            <td>${user.loginTimes}</td>
	                                            <td><fmt:formatDate value="${user.lastLoginTime}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
	                                            <td>${user.lastLoginIp}</td>
	                                            <td>
	                                            	<a href="javascript:void(0)" onclick="toUpdate(${user.id})">修改</a>
	                                            	<a href="javascript:void(0)" onclick="doDelete(${user.id})">删除</a>
	                                        </tr>
                                        </c:forEach>
                                    </tbody>
                                     <tr>
                                    	<jsp:include  page="../public/public.jsp" />
                                    </tr>
                                </table>
                                	<form action="<%=path %>/user/userController/findAll" id="form" method="post">
                                		<!-- 查询条件所需 -->
									<input type="hidden"  id="userName" name="userName" value="${user.userName}">
									
									<input type="hidden"  id="lastLoginTime" name="lastLoginTimes" value="<fmt:formatDate value='${user.lastLoginTime}'
													 	pattern='yyyy-MM-dd HH:mm:ss' />" >
									
									
									<!-- 查询条件所需 -->
							 	<input type="hidden" id="start" name="start" value="${paging.paging.start}" />
							 	<input type="hidden" id="limit" name="limit" value="${paging.paging.limit}" />
							 	<input type="hidden" id="currPage" name="currPage" value="${paging.paging.currPage}" />
							 </form>
                           </div>
                        </div>
                    </div>
                </div>

            </div>
    </div>
	<script type="text/javascript">
		$('#lastLoginTime1').datetimepicker();
	</script>
	</div>
