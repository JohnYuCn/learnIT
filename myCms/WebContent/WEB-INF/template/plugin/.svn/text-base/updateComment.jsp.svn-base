<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%    String path = request.getContextPath();
 %>
<!-- <title>评论修改</title> -->
</script>
		<!-- end datetimepicker -->
		<script type="text/javascript">
			function subForm(){
				clickMenu('<%=path%>/plugin/messageBoardController/updateComment.html','form');
			}
		</script>
<div class="main-content-wrapper">
<div id="main-content">
    
    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">修改评论</h3>
                </div>
                <div class="panel-body">
                    <form id="form" class="form-horizontal form-border" method="post" action="<%=path%>/plugin/messageBoardController/updateComment.html">
                         <input type="hidden" id="id" name="id" value="${comment.id}" />
                         <input type="hidden" id="member.id" name="memberId" value="${comment.member.id}"/>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">标题：</label>
                            <div class="col-sm-6">
                                <input type="text" value="${comment.title}"  
                                	id="title" name="title" class="form-control">
                            </div>
                        </div>
                    
						<div class="form-group">
							<label class="col-sm-3 control-label">用户：</label>
							<div class="col-sm-6">
								<input type="text"
								<c:if test="${comment.member==null||comment.member==''}">
								value="匿名用户"
								</c:if>
								<c:if test="${comment.member!=null}">
								value="${comment.member.username}"
								</c:if>
									id="" name="" class="form-control" readonly="readonly">
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label">评论时间：</label>
							<div class="col-sm-6">
								<input type="text"
									value="${comment.reviewTime}"
									id="reviewTimes" name="reviewTimes"  class="form-control">
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label">评论内容：</label>
							<div class="col-sm-6">
								<textarea class="textarea form-control" rows="5" cols="20" 
								 id="content" name="content" 
								style="width: 100%; height: 80px">${comment.content}</textarea>
							</div>
					
					
						<div class="form-group" align="center">
							<button class="btn btn-primary" type="button" onclick="subForm()">修改</button>
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
$('#reviewTimes').datetimepicker();
</script>
