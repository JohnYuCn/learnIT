<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%    String path = request.getContextPath();
 %>
	<!-- <title>添加用户</title> -->
	<script type="text/javascript">
		function getUsername(){
			var userName = document.getElementById("userName").value;
			var id = document.getElementById("id").value;
			var url = "<%=path %>/user/userController/userName.json";
			$.ajax({
				type: 'POST',
				url: url,
				data :{
					userName : userName,
					id : id
				},
				success:function(data) {
				  if(data){
				  	 document.getElementById("user").style.display = "none";
				  }else{
				  	 document.getElementById("user").style.display = "block";
				  	 document.getElementById("user").validity.valid = false;
				  	 document.getElementById("user").validationMessage = "用户名不能重复!";
				  }
				}
			});
		}
		
		function formsub(){
			var flag = document.getElementById("user").style.display;
			if(flag == 'block'){
				alert("用户名不能重复!");
				return ;
			}
			clickMenu('/user/userController/addUserOrUpdate','form');
			
		}
	</script>
<div class="main-content-wrapper" style="padding: 10px 10px;">
<div id="main-content">   
    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">添加用户</h3>
                </div>
                <div class="panel-body">
                    <form id="form" class="form-horizontal form-border" method="post" action="<%=path%>/user/userController/addUserOrUpdate">
                    <input type="hidden" name="id"  id="id" value="${id}" />
                    <input type="hidden" name="oldpwd"  id="oldpwd" value="${user.password}" />
                        <div class="form-group">
                            <label class="col-sm-3 control-label">用户名：</label>
                            <div class="col-sm-6">
                                <input onblur="getUsername()" type="text" placeholder="userName" id="userName" value="${user.userName}" name="userName" required="" class="form-control">
                            </div>
                            <div id="user" style="display:none;">
                                <label class="col-sm-3 control-label"><font color="red">*用户名不能重复</font></label>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">密码：</label>
                            <div class="col-sm-6">
                                <input type="password" placeholder="密码" required="" value="${user.password}" id="password" name="password" class="form-control">
                            </div>
                        </div>
						<div class="form-group">
							<label class="col-sm-3 control-label">重复密码：</label>
							<div class="col-sm-6">
								<input type="password" id="pwd" name="pwd" required="" value="${user.password}" class="form-control">
							</div>
						</div>
						<div class="form-group" >
							<label class="col-sm-3 control-label">真实姓名：</label>
							<div class="col-sm-6">
								<input type="text" placeholder="特维网讯" id="trueName" name="trueName" required="" value="${user.trueName}" class="form-control">
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label">性别：</label>
							<div class="col-sm-6">
								<select class="form-control" name="sex" id="sex">
									<option value="1">未知</option>
									<option value="2">男</option>
									<option value="3">女</option>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label">邮箱：</label>
							<div class="col-sm-6">
								<input type="text" placeholder="tvcms@163.com" id="email" name="email" value="${user.email}" required="" class="form-control ">
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label">用户组：</label>
							<div class="col-sm-6">
								<select class="form-control" name="groupId" id="groupId">
								    <option value=""></option>
								    <c:forEach var="group" items="${groupList}">
								    <option value="<c:out value="${group.id}"/>" <c:if test="${group.id==user.userGroup.id}">selected</c:if>>${group.name}</option>
								    </c:forEach>
								</select>
							</div>
						</div>
						<div class="form-group" align="center">
							<button class="btn btn-primary" type="button" onclick="formsub()">提交</button>
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
