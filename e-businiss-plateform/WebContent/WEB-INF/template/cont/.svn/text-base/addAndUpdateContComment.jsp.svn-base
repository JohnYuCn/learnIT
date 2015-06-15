<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%    String path = request.getContextPath();
 %>
 <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!-- <title>评论更新</title> -->
<script type="text/javascript">
	function subForm(){
		
		var url = "cont/contController/addAndUpdateComment/"+${contId}+".html"
		clickMenu(url,"form");
	}
</script>
<div class="main-content-wrapper">
<div id="main-content">
    
    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">更新评论</h3>
                </div>
                <div class="panel-body">
                    <form id="form" class="form-horizontal form-border" method="post" action="<%=path%>/cont/contController/addAndUpdateComment/${contId}.html">
                         <input type="hidden" id="id" name="id" value="${contComments.id}" />   
                         <input type="hidden" name="contId"  value="${contComments.contId}"/>
                         <input type="hidden" name="isExamine"  value="${contComments.isExamine}"/>
                         <input type="hidden" name="userId"  value="${contComments.userId}"/>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">标题：</label>
                            <div class="col-sm-6">
                                <input type="text" value="${contComments.title}"  
                                	id="title" name="title" class="form-control">
                            </div>
                        </div>
                    
					   
						<div class="form-group">
							<label class="col-sm-3 control-label">评论时间：</label>
							<div class="col-sm-6">
								<input type="text"  
									value="<fmt:formatDate value="${contComments.commentTime}" pattern="yyyy-MM-dd HH:mm:ss"/>"
									id="commentTimes" name="commentTimes" onClick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss'})"  class="form-control">
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label">评论内容：</label>
							<div class="col-sm-6">
								<textarea class="textarea form-control" rows="5" cols="20" 
								 id="commentContent" name="commentContent" 
								style="width: 100%; height: 80px">${contComments.commentContent}</textarea>
							</div>
					
					</div>
				
						
							<div class="form-group">
							<label class="col-sm-3 control-label">回复时间：</label>
							<div class="col-sm-6">
								<input type="text"
									value="<fmt:formatDate value="${contComments.replyTime}" pattern="yyyy-MM-dd HH:mm:ss"/>"   onClick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss'})"
									id="replyTimes" name="replyTimes"  class="form-control" >
									
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label">回复内容：</label>
							<div class="col-sm-6">
								<textarea class="textarea form-control" rows="5" cols="20" 
								 id="replyContent" name="replyContent" 
								style="width: 100%; height: 80px">${contComments.replyContent}</textarea>
							</div>
					</div>
					
						<div class="form-group" align="center">
							<button class="btn btn-primary" type="subForm()" ">提交</button>
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
