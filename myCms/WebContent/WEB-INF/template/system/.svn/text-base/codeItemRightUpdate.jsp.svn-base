<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%
	String path = request.getContextPath();
%>
		<!-- <title>服务项目修改</title> -->
		<jsp:include page="../login/common.jsp"></jsp:include>
		<script type="text/javascript">
		$(document).ready(function(){
			$("#postSubmit").click(function(){
				  var type = "${type}";
				  var url = "<%=path%>/system/codeItemRight/add.html";
	              if(type == 1){
	             	 url = "<%=path%>/system/codeItemRight/update.html";
	              }
				  $.ajax({
				  		url:url,
				  		type:'post',
				  		data:$('#form').serialize(),
				  		success : function(data){
				  			if(data == "success"){
				  				alert("保存成功");
				  				$("#tableDiv").load("<%=path%>/system/codeItemRight/${category.superiorId}");
				  			}else{
				  				alert("保存失败");
				  			}
				  		},
				  		error : function(){
				  			alert("服务器连接失败");
				  		}
				 });
			});
		});
	</script>

		<div class="main-content-wrapper" style="margin-left: 0;">
			<div id="main-content">

				<div class="row">
					<div class="col-md-12">
						<div class="panel panel-default">
							<div class="panel-heading">

								<h3 class="panel-title">
									<c:if test="${type=='1'}">修改服务项目</c:if>
									<c:if test="${type=='2'}">添加服务项目</c:if>
								</h3>
							</div>
							<div class="panel-body">
								<form id="form" class="form-horizontal form-border" >
									<input type="hidden" id="id" name="id" value="${category.id}" />
									<div class="form-group">
										<label class="col-sm-3 control-label">
											项目名称：
										</label>
										<div class="col-sm-6">
											<input type="text" value="${category.itemsName}" id="name"
												name="itemsName" class="form-control">
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-3 control-label">
											英文项目名称：
										</label>
										<div class="col-sm-6">
											<input type="text" value="${category.enItemsName}"
												id="contact" name="enItemsName" class="form-control">
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-3 control-label">
											中文描述：
										</label>
										<div class="col-sm-6">
											<input type="text" value="${category.description}"
												id="writtenIp" name="description" class="form-control">
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-3 control-label">
											英文描述：
										</label>
										<div class="col-sm-6">
											<input type="text" value="${category.enDescription}"
												id="writtenTime1" name="enDescription" class="form-control">
										</div>
									</div>
									<div class="form-group">
							            <label class="col-sm-3 control-label">项目类型：</label>
							            <div class="col-sm-6">
                                           <label class="radio-inline">
                                              <input class="icheck" type="radio" id="indexMode" value="1" name="type" <c:if test="${category.type==1}">checked="checked"</c:if>>套餐项目</label>
                                              
                                           <label class="radio-inline">
                                           <input class="icheck" type="radio"  id="indexMode" value="2"  name="type" <c:if test="${category.type==2||category.type==null}">checked="checked"</c:if>>普通项目</label>
                                         </div>
						            </div>
									<div class="form-group">
										<label class="col-sm-3 control-label">
											价格：
										</label>
										<div class="col-sm-6">
										<input type="text" value="${category.price}"
												id="message" name="price" class="form-control">
											
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-3 control-label">
											参考值：
										</label>
										<div class="col-sm-6">
											<textarea class="textarea form-control" rows="5" cols="20"
												id="message" name="referenceValue"
												style="width: 100%; height: 80px">${category.referenceValue}</textarea>
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-3 control-label">
											单位：
										</label>
										<div class="col-sm-6">
										<input type="text" value="${category.unit}"
												id="message" name="unit" class="form-control">
											
										</div>
									</div>
									<input type="hidden" value="${category.superiorId}" name="superiorId" id="replyContent"/>
								

									<div class="form-group" align="center">
										<button class="btn btn-primary" id="postSubmit" type="button"">
											<c:if test="${type=='1'}">修改</c:if>
									        <c:if test="${type=='2'}">保存</c:if>
										</button>
										&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
										<button class="btn btn-primary" type="reset">
											重置
										</button>

									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
