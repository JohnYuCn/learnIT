<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%
	String path = request.getContextPath();
%>
<div id="tableDiv">
		<!-- <title>通讯录分组</title> -->
		<div class="main-content-wrapper" style="padding: 10px;10px;">
			<div id="main-content">
				<div class="row">
					<div class="col-md-12">
					<div class="panel panel-default">										
						<div class="panel-heading">
							<h3 class="panel-title" >条件查询</h3>
						</div>
						<div class="panel-body form-horizontal form-border">
                            <div class="col-sm-4">
                                <label class="control-label pull-left">分组名称：</label>
                                  <div class="col-sm-8 " style="padding-left: 0px;">
                                     <input type="text" class="form-control" id="title1" value="${mailListGroup.title}">
                                 </div>
                            </div>
                            <div class="col-sm-4">
                                <label class="control-label pull-left">备注：</label>
                                  <div class="col-sm-8" style="padding-left: 0px;">
                                     <input type="text" class="form-control" id="remarks1" value="${mailListGroup.remarks}">
                                 </div>
                            </div>
 
						</div>
						
						<div class="panel-body" style="text-align: center;">
							<button type="button" class="btn btn-primary btn-trans" style="margin-right:20px;" id="sub">查询</button>
							<button type="button" class="btn btn-primary btn-trans" id="resets">重置</button>
						</div>
						
					</div>
					
						<div class="panel panel-default" style="position: relative;">
							<div class="panel-heading">
								<h3 class="panel-title">
									通讯录分组管理
								</h3>
		
								<div class="actions pull-right" style="margin-top: 25px">
									<button class="btn btn-primary" type="button"
										id="addAd">
										新增分组
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
											<th>分组名称</th>
										
											<th>
												备注
											</th>
											<th>操作</th>
										</tr>
									</thead>

									<tbody>
										<c:forEach var="mlg" items="${paging.object}" varStatus="rownum">
											<tr>
												<td>
													<input type="checkbox" name="ad" value="${mlg.id}"/>
												</td>
												  <td>${rownum.index+1}</td>
												<td>
													${mlg.title}
												</td>
											
												<c:if test="${mlg.id==1}">
												<td>${mlg.remarks}</td>
												</c:if>
												<c:if test="${mlg.id!=1}">
											
													<td  name="message${rownum.index+1+paging.paging.start}" >${mlg.remarks}</td>
														
												</c:if>
												
												<td>
												<c:if test="${mlg.id==1}">
												不可操作
												</c:if>
												<c:if test="${mlg.id!=1}">
													<a href="javascript:void(0);" onclick="toUpdate(${mlg.id})">修改</a>
													<a  class="down_but" slook="${mlg.id}" href="javascript:;" >删除</a>
														
												</c:if>
														
												</td>
											</tr>
										</c:forEach>
									</tbody>
									 <tr>
                                    	<jsp:include  page="../public/public.jsp" />
                                    </tr>
								</table>
								<form action="<%=path%>/plugin/smsplatformcontroller/findMailListGroup" method="post" id="form">
								<!-- 查询条件所需 -->
								<input type="hidden" id ="title" name="title" value="${mailListGroup.title}">
								
								<input type="hidden" id ="remarks" name="remarks" value="${mailListGroup.remarks}">
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
		function toUpdate(id){
			clickMenu('/plugin/smsplatformcontroller/findMailListGroupById/'+id+'.html');
		}

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

	//新增联系人分组
	$("#addAd").click(function(){
		clickMenu('/plugin/smsplatformcontroller/findMailListGroupById/0.html');
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
			    if(confirm("此操作会导致所删除分组下联系人全部移至未分组下，请慎重操作!确定删除?")){
			    clickMenu('/plugin/smsplatformcontroller/deleteMailGroup/' + checkArray +'.html');
			    }else{
			    	return;
			    } 
				
			})
			
			$("#sub").click(function(){
			
				$("#title").val($("#title1").val());
			
				$("#remarks").val($("#remarks1").val());
				$("#start").val(0);
			    $("#limit").val(20);
			    $("#currPage").val(0);
				//$("#form").submit();
				clickMenu('/plugin/smsplatformcontroller/findMailListGroup','form');
			});
			// 重置按钮  2015.4.3 wangchuang
			$("#resets").click(function(){
				$("#title1").val("");
				$("#remarks1").val("");
			});
	
	
	});
</script>	
		
  <script type="text/javascript">
     $(".down_but").click(function(){
    	 var slook = $(this).attr("slook");
    	 if( confirm("删除此分组会将其分组下的联系人移至未分组下，请慎重操作!确定删除?")){
    		 clickMenu('/plugin/smsplatformcontroller/deleteMailGroup/'+slook+'.\html');
    		//  window.location.href = ("/plugin/smsplatformcontroller/deleteMailGroup/"+slook+".\html");
    		  }
     });
     </script>
</div>
