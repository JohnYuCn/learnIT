<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%
	String path = request.getContextPath();
%><%--
<title>通讯录</title>
		--%>

<div class="tableDiv">
<script type="text/javascript">


$(document).ready(function() {
	//只让内容显示一部分
	for(var i=1;i<=20;i++){
		var msg=$("td[name='message"+i+"']").text();
		var msg1=$("td[name='messages"+i+"']").text();
	
		if(msg!=""){

			
			$("td[name='message"+i+"']").text(msg.substring(0,10)+"...");
		}
		if(msg1!=""){
		
			$("td[name='messages"+i+"']").text(msg1.substring(0,10)+"...");
		}
	}
	//全选
	$("#checkAll").click(function() {
		if ($("#checkAll").is(':checked')) {
			$("input[name='ad']").prop("checked", true);
		} else {
			$("input[name='ad']").prop("checked", false);
		}
	});

	//新增联系人
	$("#addAd").click(function(){
			clickMenu('/plugin/smsplatformcontroller/findMailListById/0.html');
			//var url = "/plugin/smsplatformcontroller/findMailListById/0.html";
		    //window.location.href = url;
	})
	//判读是否是删除按钮
		$("#deleteAd").click(function() {
			var checkArray = "";//获取选择的数据
				$("input[name='ad']:checked").each(function(i) {
					if (i == 0) {
						checkArray = $(this).val()
					} else {
						checkArray = checkArray + "," + $(this).val();
					}
				});
			    if(checkArray==""){
			    	alert("请选择数据！");
			    	return;
			    }
				//var url = "/plugin/smsplatformcontroller/deleteMail/" + checkArray + ".html";
				//window.location.href = url;
				clickMenu('/plugin/smsplatformcontroller/deleteMail/' + checkArray + '.html');
			})
			
			$("#sub").click(function(){
				$("#groupId").val($("#groupId1").val());
				$("#name").val($("#name1").val());
				$("#pinyin").val($("#pinyin1").val());
				$("#phone").val($("#phone1").val());
				$("#remarks").val($("#remarks1").val());
				$("#start").val(0);
			    $("#limit").val(20);
			    $("#currPage").val(0);
			    
				//$("#form").submit();
				clickMenu('/plugin/smsplatformcontroller/findMailList','form');
			});
		// 重置按钮  2015.4.3 wangchuang  
		$("#resets").click(function(){
			$("#groupId1").val(0);
			$("#name1").val("");
			$("#pinyin1").val("");
			$("#phone1").val("");
			$("#remarks1").val("");
		});
		
	});
</script>
		<div class="main-content-wrapper" style="padding: 10px;10px;">
			<div id="main-content">
				<div class="row">
		
					<div class="col-md-12">
					
					<div class="panel panel-default">										
					
						<div class="panel-heading">
							<h3 class="panel-title" >条件查询</h3>
							
							
						</div>
						
						<div class="panel-body form-horizontal form-border">
							<form>
						
							<div class="col-sm-4" >
                                <label class="control-label pull-left">所属分组：</label>
                                  <div class="col-sm-8 " style="padding-left: 0px;">
                                  <select class="form-control" id="groupId1">
                                  <option value="0">全部</option>
                                  <c:forEach items="${groupList}" var="list">
                                    <option value="${list.id}" <c:if test="${mailList.groupId.id==list.id}">selected="selected"</c:if>>${list.title}</option>
                                  </c:forEach>
                                  </select>
                                    
                                 </div>
                            </div>
                            <div class="col-sm-4">
                                <label class="control-label pull-left">姓名：</label>
                                  <div class="col-sm-8 " style="padding-left: 0px;">
                                     <input type="text" class="form-control" id="name1" value="${mailList.name}">
                                 </div>
                            </div>
                            <div class="col-sm-4">
                                <label class="control-label pull-left" >拼音：</label>
                                  <div class="col-sm-8 " style="padding-left: 0px;">
                                     <input type="text" class="form-control" id="pinyin1" value="${mailList.pinyin}">
                                 </div>
                            </div>
                            <div class="col-sm-4"  style="padding-top: 15px;">
                                <label class="control-label pull-left">手机号：　</label>
                                  <div class="col-sm-8 " style="padding-left: 0px;">
                                     <input type="text" class="form-control" id="phone1" value="${mailList.phone}">
                                 </div>
                            </div>
                            <div class="col-sm-4"  style="padding-top: 15px;">
                                <label class="control-label pull-left">备注：</label>
                                  <div class="col-sm-8 "  style="padding-left: 0px;">
                                     <input type="text" class="form-control" id="remarks1" value="${mailList.remarks}">
                                 </div>
                            </div>
 </form>
						</div>
						
						<div class="panel-body" style="text-align: center;">
							<button type="button" class="btn btn-primary btn-trans" style="margin-right:20px;" id="sub">查询</button>
							<button type="button" class="btn btn-primary btn-trans" id="resets">重置</button>
						</div>
						
					</div>
					
						<div class="panel panel-default" style="position: relative;">
							<div class="panel-heading">
								<h3 class="panel-title">
									通讯录管理
								</h3>
		
								<div class="actions pull-right" style="margin-top: 25px">
									<button class="btn btn-primary" type="button"
										id="addAd">
										新增联系人
									</button>
									<button class="btn btn-primary" type="button"
										id="deleteAd">
										批量删除
									</button>
									
								</div>
							</div>

				
							<div class="panel-body ">
								<table id="example" class="table table-striped table-bordered"
									cellspacing="0" width="100%">
									<thead>
										<tr>
											<th>
												<input type="checkbox" id="checkAll" />	
											</th>
											<th>序号</th>
											<th>姓名</th>
											<th>
												拼音
											</th>
											<th>
												手机号
											</th>
											<th>
												所属分组
											</th>
											<th>
												备注
											</th>
											<th>操作</th>
										</tr>
									</thead>

									<tbody>
										<c:forEach var="ml" items="${paging.object}" varStatus="rownum">
											<tr>
												<td>
													<input type="checkbox" name="ad" value="${ml.id}"/>
												</td>
												  <td>${rownum.index+1}</td>
												<td>
													${ml.name}
												</td>
												<td >${ml.pinyin}</td>
												<td>
													${ml.phone}
												</td>
													<td>
													${ml.groupId.title}
												</td>
											
												<td  name="message${rownum.index+1+paging.paging.start}" >${ml.remarks}</td>
												<td>
													<a href="javaScript:void(0);" onclick="clickMenu('plugin/smsplatformcontroller/findMailListById/${ml.id}.html')">修改</a>
													<a href="javaScript:void(0);" onclick="clickMenu('plugin/smsplatformcontroller/deleteMail/${ml.id}.html')">删除</a>
												</td>
											</tr>
										</c:forEach>
									</tbody>
									 <tr>
                                    	<jsp:include  page="../public/public.jsp" />
                                    </tr>
								</table>
								<form id="form" action="<%=path%>/plugin/smsplatformcontroller/findMailList" method="post" >
								<!-- 查询条件所需 -->
								<input type="hidden" id ="groupId" name="groupId.id" value="${mailList.groupId.id}">
								<input type="hidden" id ="name" name="name" value="${mailList.name}">
								<input type="hidden" id ="pinyin" name="pinyin" value="${mailList.pinyin}">
								<input type="hidden" id ="phone" name="phone" value="${mailList.phone}">
								<input type="hidden" id ="remarks" name="remarks" value="${mailList.remarks}">
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
</div>