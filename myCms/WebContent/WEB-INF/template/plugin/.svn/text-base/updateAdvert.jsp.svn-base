<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%
	String path = request.getContextPath();
%>
		<!-- <title>更新广告</title> -->
		<link href="<%=path%>/assets/css/animate.css" rel="stylesheet" />
		<link href="<%=path%>/assets/css/main.css" rel="stylesheet" />
		<script src="<%=path%>/assets/js/jquery-1.10.2.min.js"></script>
		<link href="<%=path%>/assets/plugins/icheck/css/_all.css" rel="stylesheet" />
		<script src="<%=path%>/assets/js/modernizr-2.6.2.min.js"></script>
		<script type="text/javascript">
		var imageClick=1;
$(document).ready(
		function() {
			var type = $("#type").val();
			if (type == "add") {
				$("#title").text("新增广告");
				$("#sub").text("新增广告");
			
				$("#image").css("display","none");
				$("#sel").val(1);
			} else if (type == "update") {
				$("#title").text("修改广告");
				$("#sub").text("修改广告");
			
				var adType=$("#adType").val();
				
				$("#sel").val(adType);
				if(adType=="1"){
				
					$("#image").css("display", "none");
		            $("#content").css("display", "inline");
				}else if(adType=="2"){
					
					$("#image").css("display", "inline");
		            $("#content").css("display", "none");
				}
			}
			
			
		});
function replace() {

	var type = $("#sel option:selected").val();

	if (type == "2") {
		$("#image").css("display", "inline");
		
	} else if (type == "1") {
		$("#image").css("display", "none");
		
	}
}

		function upClick(){
			var f=document.getElementById("f").value;
			if(!getFileName(f)){
				alert("请上传图片文件!");
				return ;
			}
			
			document.getElementById("imageUrl").value = f;
			$("#imageName").val($("#imageUrl").val());
			imageClick=2;
		   
			
		}
		
		function getFileName(filePath){
			 var info = new Array("ai","jpeg","jpg","gif","bmp","png");   
			 if(filePath ==null || filePath ==""){
				 return;
			 }
			 var lastName = filePath.substring(filePath.lastIndexOf(".")+1,filePath.length);
			 for(var i=0;i<info.length;i++){
				 var s = info[i];
				 if(lastName == s){
					 return true;
				 }
			 }
		 return false;
	}
		function showImage(){
			var imageUrl=$("#imageUrl").val();
			if(imageUrl==""||imageUrl==null){
				alert("请选择图片");
				return;
			}
			if(imageClick==2){
				alert("暂时不开通本地预览");
				return;
			}
		
			url="<%=path%>/pictureFile/"+$("#urls").val();
			
			window.open(url);
		}
		function subForm(){
			clickMenu('<%=path%>/plugin/advertController/addOrUpdateAdvert.html','form');
			
		}
</script>
		<input type="hidden" id="type" value="${type}" />
		<input type="hidden" id="adType" value="${advert.type}"/>
		<div class="main-content-wrapper">
			<div id="main-content">

				<div class="row">
					<div class="col-md-12">
						<div class="panel panel-default">
							<div class="panel-heading">
								<h3 class="panel-title" id="title">
								</h3>

							</div>
							<div class="panel-body">
								<form id="form" class="form-horizontal form-border"
									method="post" action="<%=path%>/plugin/advertController/addOrUpdateAdvert.html"
									enctype="multipart/form-data">
									<input type="hidden" id="id" name="id" value="${advert.id}" />
									<input type="hidden" id="imageName" name="imageName" value="${advert.imageName}" />
									<div class="form-group">
										<label class="col-sm-3 control-label">
											广告模式：
										</label>
										<div class="col-sm-6">
											<select class="form-control input-sm" name="type"
												onchange="replace()" id="sel">
												
												<option value="2"
													>
													图片广告
												</option>

												<option value="1"
													>
													文字广告
												</option>
											</select>
										</div>
									</div>
									<div class="form-group" id="image" >
										<label class="col-sm-3 control-label">
											广告图片：
										</label>
										<input type="file" id="f" name="f" style="display: none"
											onchange="upClick()">
										<div class="col-sm-6">
										<input type="hidden" id="urls" value="${advert.imageUrl}"/>
											<input type="text" placeholder="点击上传图片" id="imageUrl"
												name="imageUrl" class="form-control"
												value="${advert.imageUrl}" onclick="f.click()">
												<a id="showImage"  onclick="showImage()">点击查看图片</a>
										</div>
										
									</div>

							
									<div class="form-group">
										<label class="col-sm-3 control-label">
											广告名称：
										</label>
										<div class="col-sm-6">
											<input type="text" value="${advert.adName}" id="adName"
												name="adName" class="form-control">
										</div>
									</div>

									<div class="form-group">
										<label class="col-sm-3 control-label">
											提示文字：
										</label>
										<div class="col-sm-6">
											<input type="text" value="${advert.altName}" id="altName"
												name="altName" class="form-control">
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-3 control-label">
											链接地址：
										</label>
										<div class="col-sm-6">
											<input type="text" value="${advert.linkAddress}" id="linkAddress"
												name="linkAddress" class="form-control">
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-3 control-label">
											备注：
										</label>
										<div class="col-sm-6">
											<textarea class="textarea form-control" rows="5" cols="20"
												id="notes" name="notes" style="width: 100%; height: 80px">${advert.notes}</textarea>
										</div>

									</div>
									<div class="form-group" align="center">
										<button class="btn btn-primary" type="button" id="sub" onclick="subForm()">
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
