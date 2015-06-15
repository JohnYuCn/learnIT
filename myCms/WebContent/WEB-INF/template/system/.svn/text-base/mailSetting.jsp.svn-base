<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!-- <title>系统设置--邮箱设置</title> -->
	<script type="text/javascript">
		function subForm(){
			
			clickMenu('/mail/saveOrUpdate','form');
		}
	</script>
<div class="main-content-wrapper">
<div id="main-content">
    
    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">邮箱设置</h3>
                </div>
                <div class="panel-body">
                    <form id="form" class="form-horizontal form-border" method="post" action="<%=path%>/mail/saveOrUpdate">
                         <input type="hidden" id="id" name="id" value="${mailUtil.id}" />
                        <div class="form-group">
                            <label class="col-sm-3 control-label">邮箱地址：</label>
                            <div class="col-sm-6">
                                <input type="text" value="${mailUtil.emailUserName}" required="邮箱地址不能为空"  placeholder="邮箱地址"
                                	id="emailUserName" name="emailUserName" class="form-control">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">密码：</label>
                            <div class="col-sm-6">
                                <input type="password" value="${mailUtil.emailPassword}" required="邮箱密码不能为空"  placeholder="邮箱密码"
                                	id="emailPassword" name="emailPassword" class="form-control">
                            </div>
                        </div>
						<div class="form-group">
							<label class="col-sm-3 control-label">邮箱主机：</label>
							<div class="col-sm-6">
								<input type="text"
									value="${mailUtil.emailHost}" required="邮箱主机不能为空"  placeholder="邮箱服务器主机地址"
									id="emailHost" name="emailHost" class="form-control">
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label">邮箱端口：</label>
							<div class="col-sm-6">
								<input type="text" value="${mailUtil.port}" required="邮箱端口不能为空"  placeholder="邮箱服务器端口"
									id="port" name="port" class="form-control ">
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label">邮件标题：</label>
							<div class="col-sm-6">
								<input type="text" value="${mailUtil.subject}" required="邮件标题不能为空"  placeholder="邮件标题"
									id="subject" name="subject" class="form-control ">
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label">邮件内容：</label>
							<div class="col-sm-6">
								<textarea class="textarea form-control" rows="5" cols="20" 
								 id="content" name="content"  required="邮件内容不能为空"  placeholder="邮件内容"
								style="width: 100%; height: 80px">${mailUtil.content}</textarea>
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
