<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!-- <title>短信平台配置</title> -->
	<link type="image/x-icon" href="<%=path %>/assets/img/favicon.ico" rel="shortcut icon" />
	<link href="<%=path %>/assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
	<link href="<%=path %>/assets/css/font-awesome.min.css" rel="stylesheet" />
	<link href="<%=path %>/assets/css/animate.css" rel="stylesheet" />
	<link href="<%=path %>/assets/css/main.css" rel="stylesheet" />
	<script src="<%=path %>/assets/js/jquery-1.10.2.min.js"></script>
	<link href="<%=path %>/assets/plugins/icheck/css/_all.css" rel="stylesheet" />
	<script src="<%=path %>/assets/js/modernizr-2.6.2.min.js"></script>
	<script type="text/javascript">
		function subForm(){
			clickMenu('/plugin/smsplatformcontroller/smsformsave.html','form');
		}
	</script>

<div class="main-content-wrapper" style="padding: 10px 10px;">
<div id="main-content">
    
    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">短信平台配置</h3>
                </div>
                <div class="panel-body">
                    <form id="form" class="form-horizontal form-border" method="post" action="<%=path%>/plugin/smsplatformcontroller/smsformsave.html">
                         <input type="hidden" id="id" name="id" value="${sms.id}" />
                        <div class="form-group">
                            <label class="col-sm-3 control-label">用户名：</label>
                            <div class="col-sm-6">
                                <input type="text" value="${sms.smsName}"  
                                	id="smsName" name="smsName" class="form-control">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">密码：</label>
                            <div class="col-sm-6">
                                <input type="text" value="${sms.smsPwd}" 
                                	id="smsPwd" name="smsPwd" class="form-control">
                            </div>
                        </div>
						<div class="form-group">
							<label class="col-sm-3 control-label">签名：</label>
							<div class="col-sm-6">
								<input type="text"
									value="${sms.sign}"
									id="sign" name="sign"  class="form-control">
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label">发送手机号：</label>
							<div class="col-sm-6">
								<textarea class="textarea form-control" rows="5" cols="20" 
								 id="sendPhone" name="sendPhone" 
								style="width: 100%; height: 80px">${sms.sendPhone}</textarea>
								<p style="padding-top: 10px;">如需发送多个号码，请用“,”（英文逗号）间隔。</p>
							</div>
							<div class="col-sm-6">
							<label class="col-sm-3 control-label"></label>
								
							</div>
						</div>
						<div class="form-group" align="center">
							<button class="btn btn-primary" type="button" onclick="subForm()">提交</button>
							&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
							<button class="btn btn-primary" type="reset">重置</button>
							
						</div>
					</form>
						</div>
					</div>
				</div>
			</div>
		</div>
		</div>
