<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!-- <title>模板目录</title> -->
	<script type="text/javascript">
		$(document).ready(function() {
		    $("#delBtn").bind("click", function() {
                if (confirm("确定要删除吗？")) {
                    var id = $("#id").prop("value");
                    var treePid = $("#treePid").prop("value");
                    $.ajax({
				  		url:"<%=path%>/template/delCatalog.html?id=" + id + "&treePid=" + treePid,
				  		type:'post',
				  		data:$('#form').serialize(),
				  		success : function(data){
				  			if(data == "success"){
				  				alert("删除成功");
				  				$("#tableDiv").load("<%=path %>/template/list.html?cid=${param.id}&treePid=${param.treePid}");
				  			}else{
				  				alert("删除失败");
				  			}
				  		},
				  		error : function(){
				  			alert("服务器连接失败");
				  		}
				 });
                }
            });
            
            $("#postSub").click(function(){
				  $.ajax({
				  		url:"<%=path%>/template/saveCatalog.html",
				  		type:'post',
				  		data:$('#form').serialize(),
				  		success : function(data){
				  			if(data == "success"){
				  				alert("保存成功");
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
<div class="main-content-wrapper" style="padding: 10px 10px;">
<div id="main-content">
    
    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">模板目录</h3>
                </div>
                <div class="panel-body">
                    <form id="form" class="form-horizontal form-border">
                         <input type="hidden" id="id" name="id" value="${param.id}" />
                         <input type="hidden" id="pid" name="pid" value="${param.pid}" />
                         <input type="hidden" id="treePid" name="treePid" value="${param.treePid}" />
                         <input type="hidden" id="op" name="op" value="${param.op}" />
                        <div class="form-group">
                            <label class="col-sm-3 control-label">目录名称：</label>
                            <div class="col-sm-6">
                                <c:if test="${param.op=='add'}">
                                <input type="text" placeholder="" required="" id="name" name="name" class="form-control">
                                </c:if>
                                <c:if test="${param.op=='mod'}">
                                <input type="text" placeholder="" value="${ctl.catalogName}" required="" id="name" name="name" class="form-control">
                                </c:if>
                            </div>
                        </div>
						<div class="form-group" align="center">
							<button class="btn btn-primary" id="postSub"  type="button">提交</button>
							&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
							<button class="btn btn-primary" type="reset">重置</button>
							<c:if test="${param.op=='mod'}">
							&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
							<button class="btn btn-primary" type="button" id="delBtn">删除</button>
							</c:if>
						</div>
					</form>
						</div>
					</div>
				</div>
			</div>
		</div>
		</div>
