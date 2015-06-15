<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%
	String path = request.getContextPath();
%>
		<!-- <title>服务项目右侧列表</title> -->
		<jsp:include page="../login/common.jsp"></jsp:include>
		<script type="text/javascript">
function delLoginLog() {
	var url = "/user/userController/deleteLoginLog.html";
	window.location.href = url;
}

$(document).ready(function() {

	$("#checkAll").click(function() {
		if ($("#checkAll").is(':checked')) {
			$("input[name='sc']").prop("checked", true);
		} else {
			$("input[name='sc']").prop("checked", false);
		}
	});

	//判读是否是删除按钮
		$("#deleteSc").click(function() {

			var checkArray = "";//获取选择的数据
				$("input[name='sc']:checked").each(function(i) {
					if (i == 0) {
						checkArray = $(this).val()
					} else {
						checkArray = checkArray + "," + $(this).val();
					}
				});
				if (checkArray == "") {
					alert("请选择要删除的项目！");
					return;
				}
				if (!confirm("此次删除可能会将其下级项目全部删除，确定要删除吗?")) {
					return;
				}
				var url = "<%=path%>/system/codeItemRight/dele/" + checkArray + ".html";
				  $.ajax({
				  		url:url,
				  		type:'post',
				  		success : function(data){
				  			if(data == "success"){
				  				alert("删除成功");
				  				$("#tableDiv").load("<%=path%>/system/codeItemRight/"+$("#superiorId").val());
				  			}else{
				  				alert("删除失败");
				  			}
				  		},
				  		error : function(){
				  			alert("服务器连接失败");
				  		}
				 });
			});
		$("#sub").click(function() {

			$("#itemsName").val($("#itemsName1").val());
			$("#start").val(0);
			$("#limit").val(20);
			$("#currPage").val(0);
			$("#tableDiv").load(document.forms[0].action,{
				start: 0,
				limit: 20,
				itemsName : $("#itemsName1").val(),
				currPage : 0
			});
		});

		$("#res").click(function() {
			$("#itemsName").val('');
			$("#itemsName1").val('')
		});
	});
function delSc(id, superiorId) {
	if(id== 1){
		return ;
	}
	if (!confirm("此次删除可能会将其下级项目全部删除，确定要删除吗?")) {
		return;
	}
	var url = "<%=path%>/system/codeItemRight/dele/" + id + ".html";
	  $.ajax({
	  		url:url,
	  		type:'post',
	  		success : function(data){
	  			if(data == "success"){
	  				alert("删除成功");
	  				$("#tableDiv").load("<%=path%>/system/codeItemRight/"+superiorId);
	  			}else{
	  				alert("删除失败");
	  			}
	  		},
	  		error : function(){
	  			alert("服务器连接失败");
	  		}
	 });
}

function modefy(url){
	$("#tableDiv").load(url);
}

function addSc() {
	var url = "<%=path%>/system/codeItemRightUpdate/" + $("#superiorId").val()
			+ "/2.html";
	$("#tableDiv").load(url);
}
</script>
	<script type="text/javascript">
		function subForm(){
			clickMenu('/system/codeItemRight/${superiorId}','form');
		}
	</script>
	<input type="hidden" id="leftUrl" value="${leftUrl}"/>
	<input type="hidden" id="superiorId" value="${superiorId}"/>
		<div class="main-content-wrapper" style="margin-left:0; padding-top:0;">
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


								<div class="col-md-4" >
									<label class="control-label pull-left">项目名：</label>
									<div class="col-sm-9 " style="padding-left: 0px" >
										<input type="text" class="form-control" id="itemsName1"
											value="${servicesCategory.itemsName}">
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
								<h3 class="panel-title">
									服务项目列表
								</h3>
								<div class="actions pull-right" style="margin-top: 25px">
									<button class="btn btn-primary" type="button"
										id="addSc" onclick="addSc()">
										新增项目
									</button>
									<button class="btn btn-primary" type="button"
										id="deleteSc">
										批量删除
									</button>
								</div>
							</div>
							<div class="panel-body">
								<table id="example" class="table table-striped table-bordered"
									cellspacing="0" width="100%">
									<thead>
										<tr>
											<th>
												<input type="checkbox" id="checkAll" />
												
											</th>
											<th>序号</th>
											<th>
												项目名
											</th>
											<th>
												The project English name
											</th>
											<th>
												中文描述
											</th>
											<th>
												English description
											</th>
											<th>
												价格
											</th>
												<th>
												参考值
											</th>
												<th>
												单位
											</th>
											<th>操作</th>
										</tr>
									</thead>

									<tbody>
										<c:forEach var="sc" items="${paging.object}" varStatus="rownum">
											<tr>
												<td>
												<c:if test="${sc.id!=1}">
													<input type="checkbox" name="sc" value="${sc.id}"/>
													</c:if>
													
												</td>
												  <td>${rownum.index+1+paging.paging.start}</td>
												<td>
													${sc.itemsName}
												</td>
												<td>
													${sc.enItemsName}
												</td>
												<td>
												${sc.description}
												</td>
												<td>
													${sc.enDescription}
												</td>
												<td>
												￥${sc.price}
												</td>
												<td>
													${sc.referenceValue}
												</td>
												<td>
												${sc.unit}
												</td>
												<td>
													<a href="javascript:modefy('<%=path%>/system/codeItemRightUpdate/${sc.id}/1')">修改</a>
													<a href="javascript:delSc(${sc.id},${sc.superiorId})" >删除</a>
												</td>
											</tr>
										</c:forEach>
									</tbody>
									 <tr>
                                    	<jsp:include  page="../public/public.jsp" />
                                    </tr>
								</table>
								<form action="<%=path%>/system/codeItemRight/${superiorId}" id="form" method="post">
									<!-- 查询条件所需 -->
									<input type="hidden" id="itemsName"  name="itemsName" value="${servicesCategory.itemsName}">
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
 <div style="padding:20px "></div>