<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
	<!-- <title>系统设置-基本属性</title> -->
    
	<script type="text/javascript">
		$(document).ready(function(){
		
			$("input[name='indexMode'][value='${systemSetting.indexMode}']").prop("checked", true);
			$("input[name='webMode'][value='${systemSetting.webMode}']").prop("checked", true);
			
			var verifyNum = "${systemSetting.verifyNum}";
			if(verifyNum != null && verifyNum != undefined){
				document.getElementById("verifyNum").value= verifyNum;
			}
			
			$("#postSubmit").click(function(){
				  $.ajax({
				  		url:"<%=path%>/system/setting/saveorupdate",
				  		type:'post',
				  		data:$('#form').serialize(),
				  		success : function(data){
				  			if(data == "success"){
				  				alert("保存成功");
				  				$("#contentDiv").load("<%=path%>/system/setting");
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
<div id="wrapper" style="padding:10px 10px;">
        <div class="row">
            <div class="col-lg-12">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5>基本属性</h5>
                    </div>
                    <div class="ibox-content">
                        <form id="form" class="form-horizontal">
                        	<input type="hidden" id="id" name="id" value="${systemSetting.id}" />
                            <div class="form-group"><label class="col-sm-2 control-label">站点名称：</label>
                                <div class="col-sm-10">
                                	<input type="text" value="${systemSetting.websiteName}" required="" 
                           				id="websiteName" name="websiteName" class="form-control">
                           		</div>
                            </div>
                            <div class="hr-line-dashed"></div>
                            <div class="form-group"><label class="col-sm-2 control-label">网站地址：</label>
                                <div class="col-sm-10">
                                	<input type="text" value="${systemSetting.websiteUrl}" required="" 
                           				id="websiteUrl" name="websiteUrl" class="form-control">
                                </div>
                            </div>
                            <div class="hr-line-dashed"></div>
                            <div class="form-group"><label class="col-sm-2 control-label">关键字：</label>

                                <div class="col-sm-10">
						<input type="text" value="${systemSetting.keyword}"
							id="keyword" name="keyword" required="" class="form-control">
					</div>
                            </div>
                            <div class="hr-line-dashed"></div>
                            <div class="form-group"><label class="col-sm-2 control-label">网站描述：</label>

                                <div class="col-sm-10">
						<textarea class="textarea form-control" rows="5" cols="20" 
							 id="description" name="description" 
							style="width: 100%; height: 80px">${systemSetting.description}</textarea>
					</div>
                            </div>
                            <div class="hr-line-dashed"></div>
                            <div class="form-group"><label class="col-lg-2 control-label">首页模式：</label>

                                <div class="col-lg-10">
						<label class="radio-inline">
                                       <input class=radio type="radio" checked="" id="indexMode" value="1" name="indexMode">静态页面</label>
                                    <label class="radio-inline">
                                       <input class="radio" type="radio"  id="indexMode" value="2"  name="indexMode">动态页面</label>
					</div>
                            </div>
                            <div class="hr-line-dashed"></div>
                            <div class="form-group"><label class="col-lg-2 control-label">整站模式：</label>

                                <div class="col-lg-10">
						<label class="radio-inline">
                                       <input class="icheck" type="radio" checked="" id="webMode" value="1" name="webMode">静态页面</label>
                                    <label class="radio-inline">
                                       <input class="icheck" type="radio"  id="webMode" value="2"  name="webMode">动态页面</label>
					</div>
                            </div>
                            <div class="hr-line-dashed"></div>
                            <div class="form-group"><label class="col-sm-2 control-label">文档HTML默认保存路径：</label>
                                <div class="col-sm-10">
                                	<input type="text" value="${systemSetting.htmlSavePath}" 
							id="htmlSavePath" name="htmlSavePath" required="" class="form-control ">
                                </div>
                            </div>
                            <div class="hr-line-dashed"></div>
                            <div class="form-group"><label class="col-sm-2 control-label">图片文件默认上传路径：</label>

                                <div class="col-sm-10">
						<input type="text" value="${systemSetting.imgSavePath}" 
							id="imgSavePath" name="imgSavePath" required="" class="form-control ">
					</div>
                            </div>
                            <div class="hr-line-dashed"></div>
                            <div class="form-group">
					<label class="col-sm-2 control-label">验证码字母组合：</label>
					<div class="col-sm-10">
						<select class="form-control" name="verifyNum" id="verifyNum">
							<option value="1">数字</option>
							<option value="2">字母</option>
							<option value="3">数字+字母</option>
						</select>
					</div>
				</div>
                            <div class="hr-line-dashed"></div>
                            <div class="form-group" align="center">
                                <div class="col-sm-4 col-sm-offset-2">
                                    <button class="btn btn-primary" id="postSubmit" type="button">提交</button>
                                    	&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                                    <button class="btn btn-primary" type="reset">重置</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
	        </div>
    </div></div>
</div>