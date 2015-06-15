<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%
	String path = request.getContextPath();
%>
		<script type="text/javascript">


$(document).ready(function() {
	//只让内容显示一部分
	for(var i=1;i<=20;i++){
		
		var msg=$("td[name='comment"+i+"']").text();
		if(msg!=""){
			$("td[name='comment"+i+"']").text(msg.substring(0,10)+"...");
		}
		var msg=$("td[name='replycomment"+i+"']").text();
		if(msg!=""){
			$("td[name='replycomment"+i+"']").text(msg.substring(0,10)+"...");
		}
	}
	//全选
	$("#checkAll").click(function() {
		if ($("#checkAll").is(':checked')) {
			$("input[name='comment']").prop("checked", true);
		} else {
			$("input[name='comment']").prop("checked", false);
		}
	});
	//新增
	$("#addComment").click(function(){
		var url = "cont/contController/findCommentById/0/${contId}.html";
		clickMenu(url);
	});

	//判读是否是删除按钮
		$("#deleteComment").click(function() {
			var checkArray = "";//获取选择的数据
				$("input[name='comment']:checked").each(function(i) {
					if (i == 0) {
						checkArray = $(this).val()
					} else {
						checkArray = checkArray + "," + $(this).val();
					}
				});
			   if(checkArray==""){
			    	alert("请选择数据！");
			    	return;
			    }
				var url = "cont/contController/deleComment/" + checkArray + "/${contId}.html";
				clickMenu(url);
			});
	
		$("#sub").click(function() {
			$("#title").val($("#title1").val());
			$("#commentContent").val($("#commentContent1").val());
			$("#commentTime").val($("#commentTime1").val());
			$("#isExamine").val($("input[name='isExamine1']:checked").val());
			$("#start").val(0);
			$("#limit").val(20);
			$("#currPage").val(0);
			clickMenu("cont/queryComments/${contId}.html","form");
		});
	});
     function examine(id,type){
    	
    	 $.ajax({
    		   type: "post",
					   cache : false,
                       url: "<%=path%>/cont/contController/isCommentExamine/"+id+"/"+type+".html",
                       success:function(result){
					      if(result=="1"){
					    	  alert("审核成功!");
					    	  $("#isExamine"+id).text("取消审核")
					    	  $("#isExamine"+id).attr("onclick","examine("+id+",2)");
					    	  $("#isExamineShow"+id).text("通过");
					      }else if(result=="2"){
					    	   alert("取消审核成功!");
					    	  $("#isExamine"+id).text("通过审核")
					    	  $("#isExamine"+id).attr("onclick","examine("+id+",1)");
					    	  $("#isExamineShow"+id).text("未通过");
					      }else{
					    	  alert("系统错误!");
					      }
					 }
    	 });
    	 
     }
</script>
	<jsp:include page="cont.jsp"></jsp:include>
		<div class="main-content-wrapper">
			<div id="main-content">
				<div class="row">
					<div class="col-md-12">
								<div class="panel">

							<div class="panel-heading">
								<h3 class="panel-title">
									查询条件
								</h3>

							</div>

							<div class="panel-body panel-default form-horizontal">

							<div class="clearfix">
								<div class="col-sm-4" style="width: 312px;padding-bottom:10px;">
									<label class="control-label">标题：</label>
									<div class="col-sm-8 pull-right">
										<input type="text" class="form-control" id="title1"
											value="${contComments.title}">
									</div>
								</div>
									<div class="col-sm-4" style="width: 312px;padding-bottom:10px;">
									<label class="control-label">评论内容：</label>
									<div class="col-sm-8 pull-right">
										<input type="text" class="form-control" id="commentContent1"
											value="${contComments.commentContent}">
									</div>
								</div>
								
									<div class="col-sm-4" style="width: 312px;padding-bottom:10px;">
									<label class="control-label">评论时间：</label>
									<div class="col-sm-8 pull-right">
										<input type="text" class="form-control" id="commentTime1"  onClick="WdatePicker({dateFmt:'yyyy-MM-dd'})"
										value="<fmt:formatDate value="${contComments.commentTime}"
														pattern="yyyy-MM-dd" />">
									</div>
								</div>
								
								</div>
								<div >
							
							<div class="row">
							 <div class="col-sm-6 clearfix">
							 		<label class="col-sm-3 control-label">是否通过审核：</label>
                                      <label class="radio-inline">
                                     
                                          <input class="icheck" type="radio"  value="2" name="isExamine1"  <c:if test="${contComments.isExamine==2}">checked="checked"</c:if> />未通过</label>
                                      <label class="radio-inline">
                                          <input class="icheck" type="radio"   value="1"  name="isExamine1"  <c:if test="${contComments.isExamine==1}">checked="checked"</c:if> />通过</label>
                                                  <label class="radio-inline">
                                          <input class="icheck" type="radio"   value="0"  name="isExamine1"  <c:if test="${contComments.isExamine==0}">checked="checked"</c:if> />全部</label>
                                  </div>
                                  </div>
						</div>
							


							</div>

							<div class="panel-body" style="text-align: center;">
								<button type="button" class="btn btn-primary btn-trans"
									style="margin-right: 20px;" id="sub">
									查询
								</button>
								<button type="button" class="btn btn-primary btn-trans">
									重置
								</button>
							</div>

						</div>
						<div class="panel panel-default" style="position: relative;">
							<div class="panel-heading">
								<h3 class="panel-title">
									内容评论管理
								</h3>
								<div class="actions pull-right" style="margin-top: -12px">
									<button class="btn btn-primary" type="button"
										id="deleteComment">
										批量删除
									</button>
									<button class="btn btn-primary" type="button"
										id="addComment">
										新增评论
									</button>
								</div>
							</div>
							<div class="panel-body">
								<table id="example" class="table table-striped table-bordered"
									cellspacing="0" width="100%">
									<thead>
										<tr>
											<th>
												<input type="checkbox" id="checkAll" />	
											</th>
											<th>序号</th>
											<th>标题</th>
											<th>
												内容
											</th>
											<th>
												是否通过审核
											</th>
										
											<th>
												评论时间
											</th>
											<th>回复内容</th>
											<th>回复时间</th>
											<th>操作</th>
										</tr>
									</thead>

									<tbody>
										<c:forEach var="comment" items="${paging.object}" varStatus="rownum">
											<tr>
												<td>
													<input type="checkbox" name="comment" value="${comment.id}"/>
												</td>
												  <td>${rownum.index+1+paging.paging.start}</td>
												<td>
													${comment.title}
												</td>
												<td name="comment${rownum.index+1+paging.paging.start}" >${comment.commentContent}</td>
												<td id="isExamineShow${comment.id}">
													<c:choose>
														<c:when test="${comment.isExamine==1}">已通过</c:when>
														<c:otherwise>未通过</c:otherwise>
													</c:choose>
												</td>
												
												<td>
												<fmt:formatDate value="${comment.commentTime}" pattern="yyyy-MM-dd HH:mm:ss"/>
												</td>
												<td name="replycomment${rownum.index+1+paging.paging.start}" >${comment.replyContent}</td>
														<td>
												<fmt:formatDate value="${comment.replyTime}" pattern="yyyy-MM-dd HH:mm:ss"/>
												</td>
												<td>
													<a
														href="<%=path%>/cont/contController/findCommentById/${comment.id}/${contId}.html">修改</a>
													
														<a href="<%=path%>/cont/contController/deleComment/${comment.id}/${contId}.html">删除</a>
														<c:if test="${comment.isExamine==1}">
														<a  href="javascript:void(0);" onclick="examine(${comment.id},2)" id="isExamine${comment.id}">取消审核</a>
													</c:if>
														<c:if test="${comment.isExamine == ''||comment.isExamine == null||comment.isExamine==2}">
														<a href="javascript:void(0);"  id="isExamine${comment.id}" onclick="examine(${comment.id},1)">通过审核</a>
														</c:if>
														
												</td>
											
											</tr>
										</c:forEach>
									</tbody>
									 <tr>
                                    	<jsp:include  page="../public/public.jsp" />
                                    </tr>
								</table>
								<form action="<%=path%>/cont/queryComments/${contId}.html"  id="form" method="post">
									<!-- 查询条件所需 -->
									<input type="hidden"  id="title"  name="title" value="${contComments.title}">
									<input type="hidden" id="commentContent"  name="commentContent" value="${contComments.commentContent}">
									<input type="hidden"  id="commentTime" name="commentTimes" value="<fmt:formatDate value="${contComments.commentTime}"
														pattern="yyyy-MM-dd HH:mm:ss" />">
								
									<input type="hidden"  id="isExamine" name="isExamine" value="${contComments.isExamine}"/>
									<!-- 查询条件所需 -->
							 	<input type="hidden" id="start" name="start" value="${paging.paging.start}" />
							 	<input type="hidden" id="limit" name="limit" value="${paging.paging.limit}" />
							 	<input type="hidden" id="currPage" name="currPage" value="${paging.paging.currPage}" />
							 </form>
							

							</div>
						</div>
					</div>
				</div>

			</div>
		</div>
