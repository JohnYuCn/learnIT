<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%    String path = request.getContextPath();
 %>
<!-- <title>留言修改</title> -->
		<!-- end datetimepicker -->
		<script type="text/javascript">
			function subForm(){
				clickMenu('<%=path%>/plugin/messageBoardController/updateMsg/1/3.html','form');
			}
		</script>
<div class="main-content-wrapper">
<div id="main-content">
    
    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">修改/回复留言</h3>
                </div>
                <div class="panel-body">
                    <form id="form" class="form-horizontal form-border" method="post" action="<%=path%>/plugin/messageBoardController/updateMsg/1/3.html">
                         <input type="hidden" id="id" name="id" value="${messageBoard.id}" />
                        <div class="form-group">
                            <label class="col-sm-3 control-label">标题：</label>
                            <div class="col-sm-6">
                                <input type="text" value="${messageBoard.name}"  
                                	id="name" name="name" class="form-control">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">联系方式：</label>
                            <div class="col-sm-6">
                                <input type="text" value="${messageBoard.contact}" 
                                	id="contact" name="contact" class="form-control">
                            </div>
                        </div>
						<div class="form-group">
							<label class="col-sm-3 control-label">留言IP：</label>
							<div class="col-sm-6">
								<input type="text"
									value="${messageBoard.writtenIp}"
									id="writtenIp" name="writtenIp" class="form-control">
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label">留言时间：</label>
							<div class="col-sm-6">
								<input type="text"
									value="${messageBoard.writtenTime}"
									id="writtenTime1" name="writtenTime1"  class="form-control">
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label">留言内容：</label>
							<div class="col-sm-6">
								<textarea class="textarea form-control" rows="5" cols="20" 
								 id="message" name="message" 
								style="width: 100%; height: 80px">${messageBoard.message}</textarea>
							</div>
						</div>
							<div class="form-group">
							<label class="col-sm-3 control-label">回复内容：</label>
							<div class="col-sm-6">
								<textarea class="textarea form-control" rows="5" cols="20" 
								 id="replyContent" name="replyContent" 
								style="width: 100%; height: 80px">${messageBoard.replyContent}</textarea>
							</div>
						</div>
					
						<div class="form-group" align="center">
							<button class="btn btn-primary" type="button" onclick="subForm()">修改/回复</button>
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
						<script type="text/javascript">
$('#writtenTime1').datetimepicker();
</script>
