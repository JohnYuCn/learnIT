<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<!-- <title>系统设置-用户设置</title> -->

<style type="text/css">

iframe {
	background-color: transparent;
	border: 0;
	padding: 0;
	margin: 0;
}
</style>
<script type="text/javascript">
		$(document).ready(function(){
		
			$("#postSubmit").click(function(){
				  $.ajax({
				  		url:"<%=path %>/system/saveUserSet",
				  		type:'post',
				  		data:$('#form').serialize(),
				  		success : function(data){
				  			if(data == "success"){
				  				alert("保存成功");
				  				$("#contentDiv").load("<%=path %>/system/UserSettings");
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
        <div class="row" style="padding: 10px 10px;">
            <div class="col-lg-12">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5>后台用户设置</h5>
                    </div>
                    <div class="ibox-content">
                        <form id="form" class="form-horizontal">
							<input type="hidden" id="id" name="id" value="${userset.id}"/>
                            <div class="form-group"><label class="col-sm-2 control-label">后台登录验证码：</label>
                                <div class="col-sm-10">
                                	<label class="radio-inline"> 
							<input class="icheck" type="radio" name="loginNum"  value="1" >开启
						</label> 
						<label class="radio-inline"> 
							<input class="icheck" type="radio" name="loginNum" value="2">关闭
						</label>
                           		</div>
                            </div>
                            <div class="hr-line-dashed"></div>
                            <div class="form-group"><label class="col-sm-2 control-label">后台登录次数限制：</label>
                                <div class="col-sm-10">
                                	<input type="text" id="loginFre" name="loginFre" class="form-control" value="${userset.loginFre}">
                                </div>
                            </div>
                            <div class="hr-line-dashed"></div>
                            <div class="form-group"><label class="col-sm-2 control-label">重新登录时间间隔：</label>
                                <div class="col-sm-10">
						<input type="text" id="loginTime" name="loginTime" class="form-control" value="${userset.loginTime}">
					</div>
                            </div>
                            <div class="hr-line-dashed"></div>
                            <div class="form-group"><label class="col-sm-2 control-label">登录超时限制：</label>
                                <div class="col-sm-10">
						<input type="text" id="sessionTime" name="sessionTime" class="form-control" value="${userset.sessionTime}">
					</div>
                            </div>
                            <div class="hr-line-dashed"></div>
                            <div class="form-group">
                            	<div class="ibox-title">
                           <h5>后台用户设置</h5>
                       </div>
                            </div>
                            <div class="hr-line-dashed"></div>
                            <div class="form-group"><label class="col-lg-2 control-label">注册用户名限制：</label>

                                <div class="col-lg-10">
						<div class="col-sm-3">
                                        <input type="text" id="userLimitStart"	name="userLimitStart" class="form-control" value="${userset.userLimitStart}" />
                                 </div>
                                 <div class="col-sm-3">
                                         <input type="text" id="userLimitEnd" name="userLimitEnd" class="form-control" value="${userset.userLimitEnd}" />
                                 </div>
					</div>
                            </div>
                            <div class="hr-line-dashed"></div>
                            <div class="form-group"><label class="col-sm-2 control-label">>注册密码限制：</label>
                                <div class="col-sm-10">
                                	<div class="col-sm-3">
							<input type="text" id="pwdLimitStart" name="pwdLimitStart" class="form-control" value="${userset.pwdLimitStart}">
						</div> 
					    <div class="col-sm-3">
							<input type="text" id="pwdLimitEnd" name="pwdLimitEnd" class="form-control" value="${userset.pwdLimitEnd}">
						</div>
                                </div>
                            </div>
                            <div class="hr-line-dashed"></div>
                            <div class="form-group"><label class="col-sm-2 control-label">会员邮箱唯一性检查：</label>
                                <div class="col-sm-10">
						<label class="radio-inline"> 
							<input class="icheck" type="radio" checked="" name="emalUniqueness" value="1">开启
						</label> 
						<label class="radio-inline"> 
							<input class="icheck" type="radio" name="emalUniqueness" value="2">关闭
						</label>
					</div>
                            </div>
                            <div class="hr-line-dashed"></div>
                            <div class="form-group"><label class="col-sm-2 control-label">用户名保留关键字：</label>

                                <div class="col-sm-10">
						<input type="text" placeholder="用户保留关键字多个以英文逗号分隔" id="reserveKeyword" 
							name="reserveKeyword" class="form-control" value="${userset.reserveKeyword}">
					</div>
                            </div>
                            <div class="hr-line-dashed"></div>
                            <div class="form-group">
					<label class="col-sm-2 control-label">会员登录验证码：</label>
					<div class="col-sm-10">
						<label class="radio-inline"> 
							<input class="icheck" type="radio"  name="loginNumber" value="1">开启
						</label> 
						<label class="radio-inline"> 
							<input class="icheck" type="radio" name="loginNumber" value="2">关闭
						</label>
					</div>
				</div>
                            <div class="hr-line-dashed"></div>
                            <div class="form-group">
					<label class="col-sm-2 control-label">会员注册验证码：</label>
					<div class="col-sm-10">
						<label class="radio-inline"> 
							<input class="icheck" type="radio" checked="" name="registerNumber" value="1">开启
						</label> 
						<label class="radio-inline"> 
							<input class="icheck" type="radio" name="registerNumber" value="2">关闭
						</label>
					</div>
				</div>
                            <div class="hr-line-dashed"></div>
                            <div class="form-group">
					<label class="col-sm-2 control-label">是否开启内容评论：</label>
					<div class="col-sm-10">
						<label class="radio-inline"> 
							<input class="icheck" type="radio" name="isComments" value="1" <c:if test="${userset.isComments==1||userset.isComments==null}">checked="" </c:if>>开启
						</label> 
						<label class="radio-inline"> 
							<input class="icheck" type="radio" name="isComments" value="2" <c:if test="${userset.isComments==2}">checked="" </c:if>>关闭
						</label>
					</div>
				</div>
                            <div class="hr-line-dashed"></div>
                            <div class="form-group">
					<label class="col-sm-2 control-label">注册方式：</label>
					<div class="col-sm-10">
						<label class="radio-inline"> 
							<input type="checkbox" value="1"
							id="nameReg" name="nameReg"  class="form-control">用户
						</label> 
						<label class="radio-inline"> 
							<input type="checkbox" value="2"
							id="mailReg" name="mailReg"  class="form-control">邮箱
						</label>
						<label class="radio-inline"> 
							<input type="checkbox" value="3"
							id="phoneReg" name="phoneReg" class="form-control">手机
						</label>
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
    </div>

	<script>
        $(document).ready(function() {
        	$("input[name='loginNum'][value='${userset.loginNum}']").prop("checked", true);
        	$("input[name='emalUniqueness'][value='${userset.emalUniqueness}']").prop("checked", true);
        	$("input[name='loginNumber'][value='${userset.loginNumber}']").prop("checked", true);
        	$("input[name='registerNumber'][value='${userset.registerNumber}']").prop("checked", true);
        	var nameReg = '${userset.nameReg}';
        	var mailReg = '${userset.mailReg}';
        	var phoneReg = '${userset.phoneReg}';
        	if(nameReg == '' && mailReg == '' &&  phoneReg == '' ){
        		$("input[name='nameReg']").prop("checked", true);
        	}else{
        		$("input[name='nameReg'][value='${userset.nameReg}']").prop("checked", true);
        		$("input[name='mailReg'][value='${userset.mailReg}']").prop("checked", true);
        		$("input[name='phoneReg'][value='${userset.phoneReg}']").prop("checked", true);
        	}
        	
        	$("#res").click(function() {
        		$("#loginFre").val(${userset.loginFre});
        		$("#loginTime").val(${userset.loginTime});
        		$("#sessionTime").val(${userset.sessionTime});
        		$("#userLimitStart").val(${userset.userLimitStart});
        		$("#userLimitEnd").val(${userset.userLimitEnd});
        		$("#pwdLimitStart").val(${userset.pwdLimitStart});
        		$("#pwdLimitEnd").val(${userset.pwdLimitEnd});
        		$("#reserveKeyword").val('${userset.reserveKeyword}');
	  			$("input[name='loginNum'][value='${userset.loginNum}']").prop("checked", true);
	        	$("input[name='emalUniqueness'][value='${userset.emalUniqueness}']").prop("checked", true);
	        	$("input[name='loginNumber'][value='${userset.loginNumber}']").prop("checked", true);
	        	$("input[name='registerNumber'][value='${userset.registerNumber}']").prop("checked", true);
	        	var nameReg = '${userset.nameReg}';
	        	var mailReg = '${userset.mailReg}';
	        	var phoneReg = '${userset.phoneReg}';
	        	if(nameReg == '' && mailReg == '' &&  phoneReg == '' ){
	        		$("input[name='nameReg']").prop("checked", true);
	        	}else{
	        		$("input[name='nameReg'][value='${userset.nameReg}']").prop("checked", true);
	        		$("input[name='mailReg'][value='${userset.mailReg}']").prop("checked", true);
	        		$("input[name='phoneReg'][value='${userset.phoneReg}']").prop("checked", true);
	        	}
			});
        });
    </script>
    </div>
