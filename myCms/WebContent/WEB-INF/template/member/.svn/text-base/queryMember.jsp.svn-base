<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%String path=request.getContextPath(); %>
<div class="tableDiv">
    <!-- <title>查询会员</title> -->
    <jsp:include page="../login/common.jsp"></jsp:include>
    <link href="<%=path%>/css/jquery.datetimepicker.css" rel="stylesheet" />
	<script type="text/javascript" src="<%=path%>/js/jquery.datetimepicker.js"></script>
	<script type="text/javascript">
		$(document).ready(function(){
			
		     //复选框选择
			 $("#chkAll").click(function(){
			     if($("#chkAll").is(':checked')){
			     	$("input[name='checkboxNode']").prop("checked", true);
			     }else{
			     	$("input[name='checkboxNode']").prop("checked", false);
			     }
			 });
		//判读是否是删除按钮
			$("#delete").click(function(){
				var checkArray = "";//获取选择的数据
				$("input[name='checkboxNode']:checked").each(function(i){
					if(i==0){
						checkArray =  $(this).val();
					}else{
						checkArray = checkArray+","+ $(this).val();
					}
				});
				   if(checkArray==""){
			    	alert("请选择数据！");
			    	return;
			    }
				var url = "member/memberController/delete/${id}/"+checkArray+".html";
				clickMenu(url);
			});
			   	$("#sub").click(function() {
					$("#username").val($("#username1").val());
					$("#registerTime").val($("#registerTime1").val());
					 $("#start").val(0);
					$("#limit").val(20);
					$("#currPage").val(0);
					//$("#form").submit();
					clickMenu('member/memberController/findAll','form');
				});
				$("#res").click(function() {
					$("#username").val('');
					$("#username1").val('');
					$("#registerTime").val('');
					$("#registerTime1").val('');
				});
		});
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


								<div class="clearfix col-sm-4" style="width:330px; padding:10px; float:left;">
									<label class="control-label pull-left">
										用户姓名：
									</label>
									<div class="col-sm-8 " style="padding-left:0px;">
										<input type="text" class="form-control" id="username1"
											value="${member.trueName}">
									</div>
								</div>
								<div class="clearfix col-sm-4" style="width:330px; padding:10px; float:left;">
								
									<label class="control-label pull-left">
										注册时间：
									</label>
									
									<div class="col-sm-8 " style="padding-left: 0px;">
										<input type="text" class="form-control" id="registerTime1"
										value="<fmt:formatDate value='${member.registerTime}'
														pattern='yyyy-MM-dd HH:mm:ss'/>" >
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
                                <h3 class="panel-title">会员列表</h3>
                                <div class="actions pull-right" style="margin-top: 25px">
									<button class="btn btn-primary" type="button" onclick="clickMenu('/member/memberController/findById/0.html')">添加会员</button>
									<button class="btn btn-primary" type="button" id="delete">删除栏目</button>
                                </div>
                            </div>

                            <div class="panel-body">
                                <table id="example" class="table table-striped table-bordered" cellspacing="0" width="100%">
                                    <thead>
                                        <tr>
                                        	<th><input id="chkAll" type="checkbox"></th>
                                        	<th>序号</th>
                                            <th>会员名</th>
                                            <th>真实姓名</th>
                                             <th>性别</th>
                                             <th>年龄</th>
                                            <th>注册时间</th>
                                            <th>上次登录时间</th>
                                            <th>操作</th>
                                        </tr>
                                    </thead>

                                    <tbody>
                                    	<c:forEach var="member" items="${paging.object}" varStatus="rownum">
	                                        <tr>
	                                        	<td><input name="checkboxNode" type="checkbox"  value="${member.id}"></td>
												<td>${rownum.index+1+paging.paging.start}</td>
	                                            <td>${member.username}</td>
	                                            <td>${member.trueName}</td>
	                                            <td> <c:if test="${member.gender==1}">男</c:if>
	                                            <c:if test="${member.gender==2}">女</c:if></td>
	                                            <td>${member.age}</td>
	                                            <td><fmt:formatDate value="${member.registerTime}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
	                                            <td><fmt:formatDate value="${member.lastLoginTime}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
	                                            <td>
	                                            	<a href="javaScript:void(0);" onclick="clickMenu('member/memberController/findById/${member.id}.html')">修改</a>  
	                                            	<a href="javaScript:void(0);" onclick="clickMenu('member/memberController/delete/${member.id }.html')">删除</a>
	                                            </td>
	                                        </tr>
                                        </c:forEach>
                                        
                                    </tbody>
                                	<tr>
                                    	<jsp:include  page="../public/public.jsp" />
                                    </tr>
                                    
								</table>
								
								<form action="<%=path %>/member/memberController/findAll" id="form" method="post">
									<!-- 查询条件所需 -->
									<input type="hidden" id="username"  name="trueName" value="${member.trueName}">
									<input type="hidden" id="registerTime" name="registerTimes" value="<fmt:formatDate value='${member.registerTime}'
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
		$('#registerTime1').datetimepicker();
	</script>
	</div>
