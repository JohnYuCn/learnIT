<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
	System.out.println(path);
%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
 <!--    <title>信息添加</title> -->
	<jsp:include page="../login/common.jsp" />
	<link rel="stylesheet" href="<%=path%>/css/jquery.datetimepicker.css" />
	<script type="text/javascript" src="<%=path%>/js/jquery.datetimepicker.js"></script>
	<link rel="stylesheet" href="<%=path %>/assets/plugins/bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" href="<%=path %>/assets/css/font-awesome.min.css" />
<link rel="stylesheet" href="<%=path %>/assets/css/animate.css" />
<link rel="stylesheet" href="<%=path %>/assets/css/main.css" />
<link rel="stylesheet" href="<%=path %>/assets/plugins/jvectormap/css/jquery-jvectormap-1.2.2.css" />
<link rel="stylesheet" href="<%=path %>/assets/plugins/todo/css/todos.css">
<link rel="stylesheet" href="<%=path %>/assets/plugins/morris/css/morris.css" />
<link rel="stylesheet" href="<%=path %>/assets/plugins/icheck/css/_all.css" />
<script src="<%=path %>/assets/plugins/nanoScroller/jquery.nanoscroller.min.js" type="text/javascript"></script>
<script src="<%=path %>/assets/js/application.js" type="text/javascript"></script>
<script src="<%=path %>/js/jquery.colorpicker.js" type="text/javascript"></script>
<script src="<%=path %>/assets/plugins/ueditor1.4.3/ueditor.config.js" charset="utf-8" type="text/javascript"></script>
<script src="<%=path %>/assets/plugins/ueditor1.4.3/ueditor.all.min.js" charset="utf-8" type="text/javascript"></script>
<script src="<%=path %>/assets/plugins/ueditor1.4.3/lang/zh-cn/zh-cn.js" charset="utf-8" type="text/javascript"></script>

<link href="<%=path %>/assets/plugins/ueditor1.4.3/themes/default/css/ueditor.css" type="text/css" rel="stylesheet">
<script src="<%=path %>/assets/plugins/ueditor1.4.3/third-party/codemirror/codemirror.js" type="text/javascript" defer="defer"></script>
<link href="<%=path %>/assets/plugins/ueditor1.4.3/third-party/codemirror/codemirror.css" rel="stylesheet" type="text/css" >
<script src="<%=path %>/assets/plugins/ueditor1.4.3/third-party/zeroclipboard/ZeroClipboard.js" type="text/javascript" defer="defer"></script>
<script src="<%=path %>/js/jquery.form.js" type="text/javascript"></script>


	
    <!--建议手动加在语言，避免在ie下有时因为加载语言失败导致编辑器加载失败-->
    <!--这里加载的语言文件会覆盖你在配置项目里添加的语言类型，比如你在配置项目里配置的是英文，这里加载的中文，那最后就是中文-->
	<script type="text/javascript">
		$(document).ready(function(){
			$('#releaseTime').datetimepicker();	
			$('#upTime').datetimepicker();
			$('#downTime').datetimepicker();
			$('#topStartDate').datetimepicker();
			$('#topEndDate').datetimepicker();
			 
			 
			 
			 
			 $('#contTemp').combobox({
			    url:'<%=path %>/column/findTemplate/2.json',
			    valueField:'id',
			    textField:'templateName'
		      });
		      //查询作者
			 $('#person').combobox({
			    url:'<%=path %>/cont/findPersion.json',
			    valueField:'id',
			    textField:'templateName',
			    onSelect : function(param){
			    	document.getElementById('author').value = param.id;
				}
		     });
		      
		       //查询信息来源
			 $('#source').combobox({
			    url:'<%=path %>/cont/getSource.json',
			    valueField:'id',
			    textField:'templateName',
			    onSelect : function(param){
			    	document.getElementById('infoSource').value = param.id;
				}
		     });
		       
		      document.getElementById('tuijian').value = ('${cont.tuijian}') ? '${cont.tuijian}' : '0';
		      document.getElementById('toutiao').value = ('${cont.toutiao}') ? '${cont.toutiao}' : '0';
		      document.getElementById('topRank').value = ('${cont.topRank}') ? '${cont.topRank}' : '0';
		      document.getElementById('infoSource').value = ('${cont.infoSource}') ? '${cont.infoSource}' : '本站';
		      document.getElementById('quanxianset').value = '${cont.quanxianset}';
		      var topRule = '${cont.topRule}';
		      if(topRule){
		      	document.getElementById('topRule').value = topRule;
		      }
		      if('${cont.isModel}' == '1'){
		      	  $("#editor").attr("checked","checked");  
		      	  document.getElementById("myEditorDiv").style.display = "none";
				  document.getElementById("newConDiv").style.display = "block";
				  document.getElementById("newCon").value = '${cont.newContent}';
		      }
		});
		function getTime(id){
			var myDate = new Date();
			var time = myDate.toLocaleString();
			var reg=new RegExp("/","g");  
			time = time.replace("上午","");
			time = time.replace("下午","");
			time = time.replace(reg,"-");
			document.getElementById(id).value = time;
		};
	</script>
	
	
	
	</script>
	
	<style type="text/css">
		.panel-title { color: inherit; font-size: 16px;}
		.form-group label { font-size:14px; font-weight:normal;}
	</style>
	<div class="main-content-wrapper" >
		<div class="panel panel-default">
			<div class="panel-body">
				<div class="tab-wrapper tab-primary">
					<ul class="nav nav-tabs">
						<li class="active"><a href="#home1" data-toggle="tab">基本属性</a></li>
						<li><a href="#profile1" data-toggle="tab">选项设置</a></li>
					</ul>
					<form id="form" class="form-horizontal form-border" enctype="multipart/form-data" method="post" action="<%=path %>/cont/savecont">
					<input type="hidden" id="newContent" name="newContent" value="">
					<input type="hidden" name="onlyId" value="${cont.onlyId}"/>
					<input type="hidden" name="isDeleted" value="0"/>
					<input type="hidden" name="createTime" value="${cont.createTime}"/>
					<input type="hidden" id="isModel" name="isModel" value="${cont.isModel}">
						<div class="tab-content">
							<div class="tab-pane active" id="home1">
								<div id="main-content">
									<div class="row">
										<div class="col-md-12">
											<div class="panel panel-default">
												<div class="panel-heading">
													<h3 class="panel-title">添加信息</h3>
												</div>
												<div class="tab-pane active" id="home1">
													<input type="hidden" id="columnId" name="columnId" value="${cid}">
													<input type="hidden" id="id" name="id" value="${cont.id}">
													<div style="height: 15px;"></div>
													<div class="form-group" style="margin:0px 0px;">
													
														<label class="col-sm-3 control-label">标题：</label>
														<div class="col-sm-6">
															<input type="text" required id="title" name="title"
																class="form-control" value="${cont.title}">
														</div>
													</div>
													<div class="form-group" style="margin:0px 0px;">
													<br>
														<label class="col-sm-3 control-label">推荐数：</label>
														<div class="col-sm-6">
															<input type="text" required id="recommend" name="recommend"
																class="form-control" value="${cont.recommend}">
														</div>
													</div>	
													<div class="form-group" style="margin:0px 0px;">
													<br>
														<label class="col-sm-3 control-label">不推荐数：</label>
														<div class="col-sm-6">
															<input type="text" required id="noRecommend" name="noRecommend"
																class="form-control" value="${cont.noRecommend}">
														</div>
													</div>
													<div class="form-group" style="margin:0px 0px;">
														<label class="col-sm-3 control-label">属性设置:</label>
														<div class="col-sm-6">
															推&nbsp;&nbsp;荐&nbsp;&nbsp;： <select class="form-control-xl" name="tuijian"
																id="tuijian">
																<option value="0">不推荐</option>
																<option value="1">一级推荐</option>
																<option value="2">二级推荐</option>
																<option value="3">三级推荐</option>
																<option value="4">四级推荐</option>
																<option value="5">五级推荐</option>
																<option value="6">六级推荐</option>
																<option value="7">七级推荐</option>
																<option value="8">八级推荐</option>
																<option value="9">九级推荐</option>
															</select> &nbsp;&nbsp;&nbsp;
															头条： 
															<select class="form-control-xl" name="toutiao"
																id="toutiao">
																<option value="0">非头条</option>
																<option value="1">一级头条</option>
																<option value="2">二级头条</option>
																<option value="3">三级头条</option>
																<option value="4">四级头条</option>
																<option value="5">五级头条</option>
																<option value="6">六级头条</option>
																<option value="7">七级头条</option>
																<option value="8">八级头条</option>
																<option value="9">九级头条</option>
															</select><br><br> 
																<!--  关键字 &nbsp;： <input type="text" id="keywords" name="keywords" 
																	class="form-control-pro" value="${cont.keywords}"> <br> <br>-->
																外部链接： <input type="text" id="extUrl" name="extUrl" 
																	class="form-control-pro" value="${cont.extUrl}">
															<br>
														</div>
													</div>
													<div class="form-group" style="margin:0px 0px;">
														<label class="col-sm-3 control-label">发布时间：</label>
														<div class="col-sm-6">
														   
															<input type="text" class="form-control" id="releaseTime" name="releaseTimes" value="${cont.releaseTime}">
															<span class="add-on"> 
																<i data-time-icon="icon-time" data-date-icon="icon-calendar"> </i>
															</span>
														</div>
													</div>
													<div class="form-group" style="margin:0px 0px;">
														<label class="col-sm-3 control-label">标题图片：</label>
														<input type="file" id="f" name="f"  style="display:none"  onchange="upClick()">
														<div class="col-sm-6">
															<input type="text" placeholder="点击上传图片" id="titleImg" name="titleImg"
																class="form-control" value="${cont.titleImg}" onclick="f.click()">
														</div>
													</div>
													<div class="form-group" style="margin:0px 0px;">
														<label class="col-sm-3 control-label">内容摘要：</label>
														<div class="col-sm-6">
															<textarea class="form-control" id="contAbs"
																name="contAbs" value="${cont.contAbs }">${cont.contAbs }</textarea>
														</div>
													</div>
													<div class="form-group" style="margin:0px 0px;">
														<label class="col-sm-3 control-label">作者：</label>
														<div class="col-sm-6">
															<input type="text" class="form-control-xl"
																id="author" name="author" value="${cont.author}">
																
															<select id="person" name="person" style="height: 33px; width: 120px;">
								  							</select>
								  							<span class="on_Click_Author btn-sm"><i style="cursor: pointer; font-size:16px;" class="fa fa-plus-square"></i></span>
								  							<span class="on_delete_Author btn-sm"><i style="cursor: pointer; font-size:16px;" class="fa fa-minus-square"></i></span>
														</div>
													</div>
													<div class="form-group" style="margin:0px 0px;">
														<label class="col-sm-3 control-label">信息来源：</label>
														<div class="col-sm-6">
															<input type="text" class="form-control-xl"
																id="infoSource" name="infoSource" value="${cont.infoSource}">
															<select id="source" name="source" style="height: 33px; width: 120px;">
								  							</select>
								  							<span class="on_Click_source btn-sm"><i style="cursor: pointer; font-size:16px;" class="fa fa-plus-square"></i></span>
								  							<span class="on_delete_source btn-sm"><i style="cursor: pointer; font-size:16px;" class="fa fa-minus-square"></i></span>
														</div>
													</div>
													<div class="form-group" style="margin:0px 0px;">
														<label class="col-md-3 control-label">新闻正文：</label>
													</div>
													<div class="form-group" style="margin:0px 0px;">
													<div id="myEditorDiv"  class="col-md-10 col-md-offset-1" style="height:400px; pading:2em 1em;">
															<script type="text/plain" id="myEditor" style="height:256px;">
															</script>
														</div>
														<div id="newConDiv" class="col-md-10 col-md-offset-1" style="display:none">
							                                <textarea class="textarea form-control" rows="5" cols="20"
															 id="newCon"
															style="wheight:240px;height:256px; pading:2em 1em;"></textarea>
							                            </div>
													</div>
													<div class="form-group" align="center" style="margin:0px 0px;">
														<button class="btn btn-primary" type="button" onclick="tsub()">提交</button>
														&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
														&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
														<button class="btn btn-primary" type="reset">重置</button>
														&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
														<input type="checkbox" value="1"
															id="editor" onclick="switchingModel()">切换模式
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<!-- 选项卡二 -->
							</div>
							<div class="tab-pane" id="profile1">
								<div id="main-content">
									<div class="row">
										<div class="col-md-12">
											<div class="panel panel-default">
												<div class="panel-heading">
													<h3 class="panel-title">选项设置</h3>
												</div>
												<div class="tab-pane active" id="home1">
												<br/>
													<div class="form-group" style="margin:0px 0px;">
														<label class="col-sm-3 control-label">置顶级别:</label>
														<div class="col-sm-6">
															<select class="form-control" name="topRank" id="topRank">
																<option value="0">不置顶</option>
																<option value="1">一级置顶</option>
																<option value="2">二级置顶</option>
																<option value="3">三级置顶</option>
																<option value="4">四级置顶</option>
																<option value="5">五级置顶</option>
																<option value="6">六级置顶</option>
																<option value="7">七级置顶</option>
																<option value="8">八级置顶</option>
																<option value="9">九级置顶</option>
															</select> 
															</div>
													</div>
													<div class="form-group" style="margin:0px 0px;">
														<label class="col-sm-3 control-label">内容模板:</label>
														<div class="col-sm-6">
																<input id="contTemp" name="contTemp"  editable="false"
																	value="${cont.contTemp}" style="height: 34px; width: 500px;"/>
															
														</div>
													</div>
													<div class="form-group" style="margin:0px 0px;">
														<label class="col-sm-3 control-label">权限设置:</label>
														<div class="col-sm-6">
															<select class="form-control" name="quanxianset" id="quanxianset">
																<option value="0">游客</option>
																<option value="1">普通会员</option>
															</select> 
														</div>
													</div>
													<div class="form-group" style="margin:0px 0px;">
														<label class="col-sm-3 control-label">查看扣除点数：</label>
														<div class="col-sm-6">
															<input type="text" id="lookPoint" name="lookPoint" 
																class="form-control" value="${cont.lookPoint}">
														</div>
													</div>
													<div class="form-group" style="margin:0px 0px;">
														<label class="col-sm-3 control-label">点击数：</label>
														<div class="col-sm-6">
															<input type="text" id="hits" name="hits"
																class="form-control" value="${cont.hits}">
														</div>
													</div>
													<div class="form-group" style="margin:0px 0px;">
														<label class="col-sm-3 control-label">下载数：</label>
														<div class="col-sm-6">
															<input type="text" id="dowNum" name="dowNum" 
																class="form-control" value="${cont.dowNum}">
														</div>
													</div>
													<div class="form-group" style="margin:0px 0px;">
														<label class="col-sm-3 control-label">TAGS：</label>
														<div class="col-sm-6">
															<input type="text" id="tags"
																name="tags" class="form-control"
																value="${cont.tags}" placeholder="(多个用,逗号格开)">
														</div>
													</div>
													<div class="form-group" style="margin:0px 0px;">
														<label class="col-sm-3 control-label">定时上线时间：</label>
														<div class="col-sm-6">
															<div style="float: left;"><input type="text"  style="width: 200px" class="form-control" id="upTime" name="upTimes" value="${cont.upTime}"></div>
															<div style="float: left;padding:3px 5px;"><button type="button" onclick="getTime('upTime')" class="btn btn-success btn-sm">设置为当前时间</button></div>
														</div>
													</div>
													<div class="form-group" style="margin:0px 0px;">
														<label class="col-sm-3 control-label">定时下线时间：</label>
														<div class="col-sm-6">
															<div style="float: left;"><input type="text"  style="width: 200px" class="form-control" id="downTime" name="downTimes" value="${cont.downTime}"></div>
															<div style="float: left; padding:3px 5px;"><button type="button" onclick="getTime('downTime')" class="btn btn-success btn-sm">设置为当前时间</button></div>
														</div>
													</div>
													<div class="form-group" style="margin:0px 0px;">
														<label class="col-sm-3 control-label">评论选项：</label>
														 <div class="col-sm-6">
							                                      <label class="radio-inline">
							                                          <input class="icheck" type="radio" checked="" id="commentOption" 
							                                          name="commentOption" value="1">允许评论</label>
							                                      <label class="radio-inline">
							                                          <input class="icheck" type="radio"  id="commentOption" name="commentOption" 
							                                          value="2">禁止评论</label>
							                                  </div>
							                        </div>
							                        <div class="form-group" style="margin:0px 0px;">
														<label class="col-sm-3 control-label">置顶规则:</label>
														<div class="col-sm-6">
															<select class="form-control" name="topRule" id="topRule">
																<option value="1">置顶一周</option>
																<option value="2">置顶半个月</option>
																<option value="3">置顶一个月</option>
																<option value="4">置顶半年</option>
																<option value="5">置顶一年</option>
																
															</select> 
														</div>
													</div>
													<div class="form-group" style="margin:0px 0px;">
														<label class="col-sm-3 control-label">置顶起始日期：</label>
														<div class="col-sm-6">
															<div style="float: left;"><input type="text" style="width: 200px" class="form-control" id="topStartDate" name="topStartDates" value="${cont.topStartDate}"></div>
															<div style="float: left; padding:3px 5px;"><button type="button" onclick="getTime('topStartDate')" class="btn btn-success btn-sm">设置为当前时间</button></div>
														</div>
													</div>
													<div class="form-group" style="margin:0px 0px;">
														<label class="col-sm-3 control-label">置顶结束日期：</label>
														<div class="col-sm-6">
															<div style="float: left;"><input type="text" style="width: 200px" class="form-control" id="topEndDate" name="topEndDates" value="${cont.topEndDate}"></div>
															<div style="float: left; padding:3px 5px;"><button type="button" onclick="getTime('topEndDate')" class="btn btn-success btn-sm" onclick="setNewTime()">设置为当前时间</button></div>
														</div>
													</div>
													
													<div class="form-group" align="center" style="margin:0px 0px;">
														<button class="btn btn-primary" type="button" onclick="tsub()">提交</button>
														&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
														<button class="btn btn-primary" type="reset">重置</button>
														&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
														
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		//实例化编辑器
		var um = UE.getEditor('myEditor');
		um.addListener('blur', function() {
			$('#focush2').html('编辑器失去焦点了')
		});
		um.addListener('focus', function() {
			$('#focush2').html('')
		});
		//UE.getEditor('myEditor').setContent("${cont.newContent}");
		document.getElementById("contAbs").innerText += '${cont.contAbs}';
		
		um.ready(function() {
		    um.setContent('${cont.newContent}');
		});
		
		function tsub(){

		    var contAbs = document.getElementById("contAbs").value;
		    var newCont = UE.getEditor('myEditor').getContentTxt();
		    var clickValue = document.getElementById("editor").checked;
		    if(contAbs == "" && newCont != ""){
		    	if(newCont.length > 100){
		    		contAbs = newCont.substring(0,100);
		    	}else{
		    		contAbs = newCont;
		    	}
		    }
		    if(clickValue){
		    	document.getElementById("newContent").value = document.getElementById('newCon').value;
		    	document.getElementById("isModel").value = 1;
		    }else{
		    	document.getElementById("newContent").value = UE.getEditor('myEditor').getContent();
		    	document.getElementById("isModel").value = 0;
		    }
	        document.getElementById("contAbs").value = contAbs;
	        $("#form").ajaxSubmit({
	        	success: function (html, status) {
	        		var result = html.replace("<pre>", "");
					result = result.replace("</pre>", "");
					$("#tableDiv").html(result);
				}
	        });
	        
	       //$("#form").submit();
	       // $("#tableDiv").load("/cont/savecont",$("#form").serializeArray());
		}
		
		function upClick(){
			var f=document.getElementById("f").value;
			if(!getFileName(f)){
				alert("请上传图片文件!");
				return ;
			}
			document.getElementById("titleImg").value = f;
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
	
	function switchingModel(){
		var clickValue = document.getElementById("editor").checked;
		if(clickValue){
			document.getElementById("myEditorDiv").style.display = "none";
			document.getElementById("newConDiv").style.display = "block";
			document.getElementById("isModel").value = 1;
		}else{
			document.getElementById("newConDiv").style.display = "none";
			document.getElementById("myEditorDiv").style.display = "block";
		}
	}
		
	</script>
	<script src="<%=path %>/assets/ins/js/layer/layer.min.js" charset="utf-8" type="text/javascript"></script>
	<script src="<%=path %>/assets/ins/js/layer/extend/layer.ext.js" charset="utf-8" type="text/javascript"></script>
	<script>
		$(".on_Click_source").click(function(){
			//页面层
			saveData("输入信息来源","<%=path%>/cont/contController/addSource/",true)
		});
		$(".on_Click_Author").click(function(){
			//页面层
			saveData("输入作者名称","<%=path%>/cont/contController/addAuthor/",false)
		})
		
		function saveData(title,url,type){
			layer.prompt({
			    title: title,
			    formType: 1 //prompt风格，支持0-2
			}, function(pass){
			    $.ajax({
				  		url:url+pass,
				  		type:'get',
				  		success : function(data){
				  			if(data == "success"){
				  				if(type){
				  					$('#source').combobox('reload');
				  				}else{
				  					$('#person').combobox('reload');
				  				}
				  				alert("保存成功");
				  			}else{
				  				alert("保存失败");
				  			}
				  		}
				 });
			});
		}
		
		$(".on_delete_source").click(function(){
			var id = $("#source").val();
			saveData("<%=path%>/cont/contController/deleteInfo/",id,0)
		});
		$(".on_delete_Author").click(function(){
			var id = $("#author").val();
			deleteData("<%=path%>/cont/contController/deleteInfo/",id,1)
		})
		
		function deleteData(url,id,type){
		    $.ajax({
			  		url:url+type,
			  		type:'post',
			  		data : {
			  			name : id
			  		},
			  		success : function(data){
			  			if(data == "success"){
			  				if(type){
			  					$('#person').combobox('reload');
			  				}else{
			  					$('#source').combobox('reload');
			  				}
			  			}else{
			  				alert("删除失败");
			  			}
			  		}
			 });
		}
	</script>
