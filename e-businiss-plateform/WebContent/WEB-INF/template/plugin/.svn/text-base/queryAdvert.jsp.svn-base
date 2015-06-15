<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%
	String path = request.getContextPath();
%>

		<!-- <title>广告管理</title> -->
		<link type="image/x-icon" href="<%=path %>/assets/img/favicon.ico"rel="shortcut icon" />
		<link href="<%=path %>/assets/plugins/bootstrap/css/bootstrap.min.css"rel="stylesheet" />
		<link href="<%=path %>/assets/css/font-awesome.min.css" rel="stylesheet" />
		<link href="<%=path %>/assets/css/animate.css" rel="stylesheet" />
		<link href="<%=path %>/assets/css/main.css" rel="style sheet" />
		<link rel="stylesheet" href="<%=path %>/assets/plugins/dataTables/css/dataTables.css" />
		<script src="<%=path%>/assets/js/modernizr-2.6.2.min.js"></script>
		<script src="<%=path%>/assets/js/jquery-1.10.2.min.js"></script>
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

	//新增 广告
	$("#addAd").click(function(){
			var url = "<%=path%>/plugin/advertController/findById/0.html";
		    window.location.href = url;
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
				var url = "<%=path%>/plugin/advertController/deleAd/" + checkArray + ".html";
				window.location.href = url;
			})
			
			$("#sub").click(function(){
				$("#adName").val($("#adName1").val());
							 $("#start").val(0);
			$("#limit").val(20);
			$("#currPage").val(0);
				//$("#form").submit();
				clickMenu('/plugin/advertController/findAll.html','form');
			});
	});
</script>
		<div class="main-content-wrapper">
			<div id="main-content">
				<div class="row">
		
					<div class="col-md-12">
					
					<div class="panel panel-default">										
					
						<div class="panel-heading">
							<h3 class="panel-title" >条件查询</h3>
							
							
						</div>
						
						<div class="panel-body form-horizontal form-border">
						
						
							<div class="col-sm-4" style="width: 312px;padding-bottom:10px;">
                                <label class="control-label">广告名称：</label>
                                  <div class="col-sm-8 pull-right">
                                     <input type="text" class="form-control" id="adName1" value="${advert.adName}">
                                 </div>
                            </div>
 
						</div>
						
						<div class="panel-body" style="text-align: center;">
							<button type="button" class="btn btn-primary btn-trans" style="margin-right:20px;" id="sub">查询</button>
							<button type="button" class="btn btn-primary btn-trans">重置</button>
						</div>
						
					</div>
					
						<div class="panel panel-default" style="position: relative;">
							<div class="panel-heading">
								<h3 class="panel-title">
									广告管理
								</h3>
		
								<div class="actions pull-right" style="margin-top: -12px">
									<button class="btn btn-primary" type="button"
										id="addAd">
										新增广告
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
											<th>ID</th>
											<th>广告名称</th>
											<th>
												提示文字
											</th>
											<th>
												浏览次数
											</th>
											<th>
												Ip浏览次数
											</th>
											<th>
												备注
											</th>
											<th>
												链接地址
											</th>
											<th>广告类型</th>
											<th>操作</th>
										</tr>
									</thead>

									<tbody>
										<c:forEach var="ad" items="${paging.object}" varStatus="rownum">
											<tr>
												<td>
													<input type="checkbox" name="ad" value="${ad.id}"/>
												</td>
												  <td>${ad.id}</td>
												<td>
													${ad.adName}
												</td>
												<td >${ad.altName}</td>
												<td>
													${ad.pvCount}
												</td>
													<td>
													${ad.uvCount}
												</td>
												<td  name="message${rownum.index+1+paging.paging.start}" >${ad.notes}</td>
												
												
												<td>
													${ad.linkAddress}
												</td>
												<td><c:if test="${ad.type==1}">文字广告</c:if>
												<c:if test="${ad.type==2}">图片广告</c:if></td>
												<td>
													<a
														href="<%=path%>/plugin/advertController/findById/${ad.id}.html">修改</a>
													
														<a href="<%=path%>/plugin/advertController/deleAd/${ad.id}.html">删除</a>
														
												</td>
											</tr>
										</c:forEach>
									</tbody>
									 <tr>
                                    	<jsp:include  page="../public/public.jsp" />
                                    </tr>
								</table>
								<form action="<%=path%>/plugin/advertController/findAll.html" method="post" id="form">
								<input type="hidden" id ="adName" name="adName" value="${advert.adName}">
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
		
		

		

