<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!--  <title>系统设置--邮箱设置</title>-->
	<link type="image/x-icon" href="<%=path %>/assets/img/favicon.ico" rel="shortcut icon" />
	<link href="<%=path %>/assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
	<link href="<%=path %>/assets/css/font-awesome.min.css" rel="stylesheet" />
	<link href="<%=path %>/assets/css/animate.css" rel="stylesheet" />
	<link href="<%=path %>/assets/css/main.css" rel="stylesheet" />
	<script src="<%=path %>/assets/js/jquery-1.10.2.min.js"></script>
	<link href="<%=path %>/assets/plugins/icheck/css/_all.css" rel="stylesheet" />
	<script src="<%=path %>/assets/js/modernizr-2.6.2.min.js"></script>
	<script type="text/javascript">
	function subFrom(){
		clickMenu('/mail/saveorupdate','form');
	}
</script>

<div class="main-content-wrapper">
<div id="main-content">
    
    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">邮箱设置 </h3>
                </div>
                <div class="panel-body">
                    <form id="form" class="form-horizontal form-border" method="post" action="<%=path%>/mail/saveorupdate">
                         <input type="hidden" id="id" name="id" value="${mailUtil.id}" />
                        <div class="form-group">
                            <label class="col-sm-3 control-label">邮箱地址：</label>
                            <div class="col-sm-6">
                                <input type="text" value="${mailUtil.emailUserName}" required="" 
                                	id="emailUserName" name="emailUserName" class="form-control">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">密码：</label>
                            <div class="col-sm-6">
                                <input type="text" value="${mailUtil.emailPassword}" required="" 
                                	id="emailPassword" name="emailPassword" class="form-control">
                            </div>
                        </div>
						<div class="form-group">
							<label class="col-sm-3 control-label">邮箱主机：</label>
							<div class="col-sm-6">
								<input type="text"
									value="${mailUtil.emailHost}"
									id="emailHost" name="emailHost" required="" class="form-control">
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label">邮箱端口：</label>
							<div class="col-sm-6">
								<input type="text" value="${mailUtil.port}" 
									id="port" name="port" required="" class="form-control ">
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label">邮件标题：</label>
							<div class="col-sm-6">
								<input type="text" value="${mailUtil.subject}" 
									id="subject" name="subject" required="" class="form-control ">
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label">邮件内容：</label>
							<div class="col-sm-6">
								<textarea class="textarea form-control" rows="5" cols="20" 
								 id="content" name="content" 
								style="width: 100%; height: 80px">${mailUtil.content}</textarea>
							</div>
						</div>
						<div class="form-group" align="center">
							<!-- <button class="btn btn-primary" type="submit" >提交</button> -->
							<button class="btn btn-primary" onclick="subFrom()">提交</button>
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
