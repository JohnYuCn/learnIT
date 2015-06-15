<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
   <!--  <title>添加栏目</title> -->
	
	<script src="<%=path %>/assets/plugins/easyui/jquery.easyui.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function(){
			//插入父节点内容
			setParentValue();
			$("input[name='columnType'][value='${tvcolumn.columnType}']").prop("checked", true);
			$("input[name='isnav'][value='${tvcolumn.isnav}']").prop("checked", true);
			$("input[name='isHidden'][value='${tvcolumn.isHidden}']").prop("checked", true);
			getColumnType('${tvcolumn.columnType}');
			//  单选
			$(":radio[name='columnType']").click(function(){
				//var ra=$("input[name='columnType']").prop("value");
				ra = $(this).prop("value");
				getColumnType(ra);
			});
			      $('#indexStyle').combobox({
				    url:'<%=path %>/column/findTemplate/1.json',
				    valueField:'id',
				    textField:'templateName'
			      });
			      $('#listStyle').combobox({
				    url:'<%=path %>/column/findTemplate/3.json',
				    valueField:'id',
				    textField:'templateName'
			      });
			      $('#contStyle').combobox({
				    url:'<%=path %>/column/findTemplate/2.json',
				    valueField:'id',
				    textField:'templateName'
			      });
			   var  indexStyle =   $('#indexStyle').attr("value"); 
			   var  listStyle =   $('#listStyle').attr("value"); 
			   var  contStyle =   $('#contStyle').attr("value"); 
			   if(indexStyle==0){
			   		$('#indexStyle').combobox("setValue","");
			   }
			   if(listStyle==0){
			   		$('#listStyle').combobox("setValue","");
			   }
			   if(contStyle==0){
			   		$('#contStyle').combobox("setValue","");
			   }
		});
		
		//function basicType(){
			//document.getElementById("basicType").style.display = "block";
			//document.getElementById("templatOption").style.display = "none";
		//}
		
		function getColumnType(ra){
				if(ra == 2){
					document.getElementById("columType").style.display = "block";
					document.getElementById("fileSaveType").style.display = "none";
					document.getElementById("accessRightsType").style.display = "none";
				}else{
					document.getElementById("columType").style.display = "none";
					document.getElementById("fileSaveType").style.display = "block";
					document.getElementById("accessRightsType").style.display = "block";
				}
		}
		
		function setParentValue(){
			var parent = "${parent}";
			var bclassId = "${bclassId}";
			if(parent != null && bclassId != null ){
				document.getElementById("parent").value = parent;
				document.getElementById("bclassId").value = bclassId;
			}
		}
		
		function addUser(){
			var id =  "${tvcolumn.id}";
			var columnname =  "${tvcolumn.columnname}";
			for(var i=0; i<$("input").length;i++){
				$("input")[i].value = "";
			}
			document.getElementById("parent").value = columnname;
			document.getElementById("bclassId").value = id;
			document.getelementbyid("addtemplate").style.display = "none";
		}
		
		function cc(){
			 var columnname=document.getElementById("columnname").value;
             // var regExp = /[a-z]$/;
             var regExp = /^[a-zA-Z0-9\u4e00-\u9fa5]+$/;
               if(!regExp.test(columnname)){
                    alert("不能输入特殊字符!");
                    return ;
               }
			var url = "<%=path %>/column/columnPinyin.json";
			//window.location.href = url;
			$.ajax({
				type: 'POST',
				url: url,
				data :{
					columnname : columnname
				},
				success:function(data) {
					$("#fileSave").prop("value", data.fileSave);
				}
			});
		}
		
		
		function upClick(){
			var f=document.getElementById("f").value;
			if(!getFileName(f)){
				alert("请上传图片文件!");
				return ;
			}
			document.getElementById("thumbnail").value = f;
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
	//提交
	function formSub(){
		var columnType = document.getElementById("columType").value;
		if(columnType == '1'){
			document.getElementById("columnurl").value = "";
		}
		$("#tableDiv").load("<%=path%>/column/modifyAndSave",$("#form").serializeArray());
	}
	</script>
	<div class="main-content-wrapper">
		<div class="panel1 panel1-default">
			<div class="panel1-body">
				<div class="tab-wrapper tab-primary" >
					<ul class="nav nav-tabs">
						<li class="active"><a href="#home1" data-toggle="tab">基本属性</a></li>
						<li><a href="#profile1" id="template" data-toggle="tab">模板选项</a></li>
					</ul>
					<div class="actions pull-right" style="margin-top: -38px">
						<button class="btn btn-primary" id="addTemplate" 
							type="button" onclick="addUser()">添加栏目</button>
					</div>
					<form id="form" class="form-horizontal form-border" method="post"
						action="<%=path %>/column/modifyAndSave" enctype="multipart/form-data">
						<div class="tab-content">
							<div class="tab-pane active" id="home1">
								<div id="main-content">
									<div class="row">
										<div class="col-md-12">
											<div class="">
												<div class="tab-pane active border-warp" id="home1">
													<input type="hidden" id="cid" name="cid" value="${id}">
													<div class="form-group">
														<br> <label class="col-sm-3 control-label">栏目名称：</label>
														<div class="col-sm-6">
															<input type="text" required="" id="columnname"
																name="columnname" class="form-control"
																value="${tvcolumn.columnname}">
														</div>
														<button type="button" class="btn btn-success btn-sm" onclick="cc()">生成拼音目录</button>
													</div>
													<div class="form-group">
														<label class="col-sm-3 control-label">上级目录:</label>
														<div class="col-sm-6">
															<input type="text" required="" readonly="readonly" 
																id="parent" name="parent" class="form-control" value="${parent}"> 
															<input type="hidden" id="bclassId" name="bclassId" 
																class="form-control" value="${tvcolumn.bclassId}">
															<input type="hidden" id="id" name="id" 
																class="form-control" value="${tvcolumn.id}">	
														</div>
													</div>
													<div class="form-group">
														<label class="col-sm-3 control-label">栏目类型：</label>
														<div class="col-sm-6">
															<label class="radio-inline"> 
																<input class="icheck" type="radio" checked name="columnType" value="1">内部栏目
															</label> 
															<label class="radio-inline"> 
																<input class="icheck" type="radio" name="columnType" value="2">外部栏目
															</label>
														</div>
													</div>
													<div class="form-group" id="columType"  style="display:none;">
														<label class="col-sm-3 control-label">外部栏目连接地址：</label>
														<div class="col-sm-6">
															<input type="text" id="columnurl" name="columnurl"
																class="form-control" value="${tvcolumn.columnurl}">
														</div>
													</div>
													<div class="form-group" id="fileSaveType">
														<label class="col-sm-3 control-label">栏目存放目录：</label>
														<div class="col-sm-6">
															<input type="text" required="" id="fileSave"
																name="fileSave" class="form-control"
																value="${tvcolumn.fileSave}">
														</div>
													</div>
													<div class="form-group">
														<label class="col-sm-3 control-label">栏目缩略图：</label>
														<input type="file" id="f" name="f"  style="display:none"  onchange="upClick()">
														<div class="col-sm-6">
															<input type="text" placeholder="点击上传图片" id="thumbnail" name="thumbnail"
																class="form-control" value="${tvcolumn.thumbnail}" onclick="f.click()">
														</div>
													</div>
													<div class="form-group" id="accessRightsType">
														<label class="col-sm-3 control-label">栏目访问权限：</label>
														<div class="col-sm-6">
															<input type="text" id="accessRights" name="accessRights"
																class="form-control" value="${tvcolumn.accessRights}">
														</div>
													</div>
													<div class="form-group">
														<label class="col-sm-3 control-label">栏目标题(Title)：</label>
														<div class="col-sm-6">
															<input type="text" id="title" name="title"
																class="form-control" value="${tvcolumn.title}">
														</div>
													</div>
													<div class="form-group">
														<label class="col-sm-3 control-label">栏目关键字(Keywords)：</label>
														<div class="col-sm-6">
															<textarea class="form-control" id="keyWords"
																name="keyWords" >${tvcolumn.keyWords}</textarea>
														</div>
													</div>
													<div class="form-group">
														<label class="col-sm-3 control-label">栏目描述(Description)：</label>
														<div class="col-sm-6">
															<textarea class="form-control" id="descriPtion"
																name="descriPtion">${tvcolumn.descriPtion}</textarea>
														</div>
													</div>
													<div class="form-group" align="center">
														<button class="btn btn-primary" onclick="formSub()" type="button">提交</button>
														&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
														<button class="btn btn-primary" type="reset">重置</button>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<!-- 选项卡二 -->
							</div>
							
							<style type="text/css">
								.border-warp { 
									border-left:1px solid #ddd; 
									border-right:1px solid #ddd; 
									border-bottom:1px solid #ddd;
									background-color: white;
								}
							</style>
							
							<div class="tab-pane" id="profile1">
								<div id="main-content">
									<div class="row">
										<div class="col-md-12">
											<div class="">
												<div class="tab-pane active border-warp" id="home1">
													<br/>
													<div class="form-group">
														<label class="col-sm-3 control-label">模板风格：</label>
														<div class="col-sm-6">
															<input type="text" id="templateStyle" name=templateStyle
																class="form-control" value="">
														</div>
													</div>
													<div class="form-group">
														<label class="col-sm-3 control-label">首页模板:</label>
														<div class="col-sm-6">
															<input id="indexStyle" name="indexStyle"  editable="false"
															value="${tvcolumn.indexStyle}" style="height: 34px; width: 500px;"/>
														</div>
													</div>
													
													<div class="form-group">
														<label class="col-sm-3 control-label">列表模板:</label>
														<div class="col-sm-6">
															<input id="listStyle" name="listStyle" class="form-control" editable="false"
															 value="${tvcolumn.listStyle}" style="height: 34px; width: 500px;"/>
														</div>
													</div>
													<div class="form-group">
														<label class="col-sm-3 control-label">内容模板:</label>
														<div class="col-sm-6">
															<input id="contStyle" name="contStyle" editable="false"
															 value="${tvcolumn.contStyle}" style="height: 34px; width: 500px;"/>
														</div>
													</div>

													<div class="form-group" align="center">
														<button class="btn btn-primary" onclick="formSub()" type="button">提交</button>
														&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
														<button class="btn btn-primary" type="reset">重置</button>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</form>
					<form method="post" action="<%=path %>/column/modifyAndSave" >
					</form>
				</div>
			</div>
		</div>
	</div>
<div style="padding:20px "></div>