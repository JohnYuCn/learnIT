<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
    <div id="tableDiv">
    <!-- <title>短信发送列表</title> -->
	<link rel="stylesheet" href="<%=path%>/css/jquery.datetimepicker.css" />
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
			//删除
			$("#delete").click(function(){
				var checkArray = "";//获取选择的数据
				$("input[name='checkboxNode']:checked").each(function(i){
					if(i==0){
						checkArray = $(this).val();
					}else{
						checkArray = checkArray+","+ $(this).val();
					}
				});
				var url = "plugin/smsplatformcontroller/deleteRecord/"+checkArray+".html";
				//alert(url);
				clickMenu(url)
			});
			   	$("#sub").click(function() {
	  		
			$("#phone").val($("#phone1").val());
			$("#type").val($("#type1").val());
			$("#state").val($("#state1").val());
			$("#sendTime").val($("#sendTime1").val());
			$("#start").val(0);
			$("#limit").val(20);
			$("#currPage").val(0);
			//$("#form").submit();
			clickMenu('/plugin/smsplatformcontroller/smsRecordFindAll','form');
		});
			// 重置按钮 2015.4.3 wangchuang
			$("#resets").click(function(){
				$("#phone1").val("");
				$("#type1").val(0);
				$("#state1").val(0);
				$("#sendTime1").val("");
			});
		});
	</script>
    <div class="main-content-wrapper" style="padding: 10px;10px;">
    	 <div id="main-content">
                <div class="row">
                
                    <div class="col-md-12">

                    <div class="panel panel-default">

							<div class="panel-heading">
								<h3 class="panel-title">
									查询条件
								</h3>

							</div>
							
							<div class="panel-body form-horizontal form-border">


								<div class="col-sm-4">
									<label class="control-label pull-left" >
										手机号：
									</label>
									<div class="col-sm-8 " style="width:285px;">
										<input type="text" class="form-control" id="phone1"
											value="${sendSmsRecord.phone}">
									</div>
								</div>
									
							<div class="col-sm-4" >
									<label class="control-label pull-left">
										发送类型：
									</label>
									<div class="col-sm-8 "style="padding-left: 0px;" >
										<select id="type1" class="form-control">
										   <option value="0" <c:if test="${sendSmsRecord.type==0}" >selected="selected" </c:if>>全部</option>
										   <option value="1" <c:if test="${sendSmsRecord.type==1}" >selected="selected" </c:if>>预约发送</option>
										   <option value="2" <c:if test="${sendSmsRecord.type==2}" >selected="selected" </c:if>>留言发送</option>
										   <option value="3" <c:if test="${sendSmsRecord.type==3}" >selected="selected" </c:if>>后台发送</option>
										   <option value="4" <c:if test="${sendSmsRecord.type==4}" >selected="selected" </c:if>>其他发送</option>
										</select>
									</div>
								</div>
							
							<div class="col-sm-4 " >
									<label class="control-label pull-left">
										发送状态：
									</label>
									
									<div class="col-sm-8" style="padding-left: 0px;">
										<select  id="state1" class="form-control">
										   <option value="0" <c:if test="${sendSmsRecord.state==0}"> selected="selected" </c:if>>全部</option>
										   <option value="1" <c:if test="${sendSmsRecord.state==1}" >selected="selected" </c:if>>发送成功</option>		   
										   <option value="2" <c:if test="${sendSmsRecord.state==2}" >selected="selected" </c:if>>用户名为空</option>
										   <option value="3" <c:if test="${sendSmsRecord.state==3}" >selected="selected" </c:if>>密码为空</option>
										   <option value="4" <c:if test="${sendSmsRecord.state==4}" >selected="selected" </c:if>>手机号为空</option>
										     <option value="5" <c:if test="${sendSmsRecord.state==5}"> selected="selected" </c:if>>信息为空</option>
										   <option value="6" <c:if test="${sendSmsRecord.state==6}" >selected="selected" </c:if>>错误的号码</option>		   
										   <option value="7" <c:if test="${sendSmsRecord.state==7}" >selected="selected" </c:if>>位置错误</option>
										   <option value="8" <c:if test="${sendSmsRecord.state==8}" >selected="selected" </c:if>>未配置短信平台用户名或密码</option>
										   
										</select>
									</div>
								</div>
								
								<div class="col-sm-4" style="padding-top: 15px;">
									<label class="control-label pull-left">
										发送时间：
									</label>
									<div class="col-sm-8 " style="padding-left: 0px; ">
										<input type="text" class="form-control" id="sendTime1"
										value="<fmt:formatDate value='${sendSmsRecord.sendTime}' 
														pattern='yyyy-MM-dd'/>"  >
									</div>
								</div>
							</div>

							<div class="panel-body" style="text-align: center;">
								<button type="button" class="btn btn-primary btn-trans"
									style="margin-right: 20px;" id="sub">
									查询
								</button>
								<button type="button" class="btn btn-primary btn-trans" id="resets">
									重置
								</button>
							</div>

						</div>
                        <div class="panel panel-default">

                            <div class="panel-heading" style="position: relative;">
                                <h3 class="panel-title">短信发送列表</h3>
                                <div class="actions pull-right" style="margin-top: 25px">
									<button class="btn btn-primary" type="button" id="delete">删除记录</button>
                                </div>
                            </div>
                     
                            <div class="panel-body">
                                <table id="example" class="table table-striped table-bordered" cellspacing="0" width="100%">
                                    <thead>
                                        <tr>
                                        	<th><input id="chkAll" type="checkbox"></th>
                                        	<th>序号</th>
                                            <th>手机号码</th>
                                            <th>发送内容</th>
                                            <th>发送时间</th>
                                            <th>状态</th>
                                        </tr>
                                    </thead>

                                    <tbody>
                                    	<c:forEach var="member" items="${paging.object}" varStatus="rownum">
	                                        <tr>
	                                        	<td><input name="checkboxNode" type="checkbox"  value="${member.id}"></td>
												<td style="text-align:center">${rownum.index+1+paging.paging.start}</td>
	                                            <td>${member.phone}</td>
	                                            <td>${member.txt}</td>
	                                            <td><fmt:formatDate value="${member.sendTime}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
	                                            <td>
													<c:if test="${member.state==1}">发送成功</c:if>
													<c:if test="${member.state==2}">用户名为空</c:if>
													<c:if test="${member.state==3}">密码为空</c:if>
													<c:if test="${member.state==4}">手机号为空</c:if>
													<c:if test="${member.state==5}">信息为空</c:if>
													<c:if test="${member.state==6}">错误的号码</c:if>
													<c:if test="${member.state==7}">未知错误${sms_return}</c:if>
													<c:if test="${member.state==8}">未配置</c:if>
	                                            </td>
	                                        </tr>
                                        </c:forEach>
                                        
                                    </tbody>
                                	<tr>
                                    	<jsp:include  page="../public/public.jsp" />
                                    </tr>
                                    
								</table>
								<form action="<%=path %>/plugin/smsplatformcontroller/smsRecordFindAll" id="form" method="post">
									<!-- 查询条件所需 -->
									<input type="hidden" id="phone"  name="phone" value="${sendSmsRecord.phone}">
									<input type="hidden" id="type"  name="type" value="${sendSmsRecord.type}">
									<input type="hidden"  id="state" name="state" value="${sendSmsRecord.state}">
									<input type="hidden" id="sendTime"  name="sendTimes" value="<fmt:formatDate value='${sendSmsRecord.sendTime}'
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
		$('#sendTime1').datetimepicker();
	</script>
</div>