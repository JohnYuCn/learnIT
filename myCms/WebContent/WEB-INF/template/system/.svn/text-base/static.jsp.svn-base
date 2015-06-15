<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%
String path = request.getContextPath();
%>
	<!-- <title>页面静态化</title> -->
	<script type="text/javascript">
		$(document).ready(function() {
			$("#submitBtn").bind("click", function() {
				var index = ($("#indexPage").prop("checked")) ? "1" : "0";
				var list = ($("#listPage").prop("checked")) ? "1" : "0";
				var content = ($("#contentPage").prop("checked")) ? "1" : "0";
				var single = ($("#singlePage").prop("checked")) ? "1" : "0";
				if (index == "0" && list == "0" && content == "0" && single == "0") {
					alert("至少需要选择一项！");
					return;
				}
				
				$.ajax({
					type: "POST",
					url: "<%=path%>/system/makeStatic.json",
					data: {index:index, list:list, content:content, single:single},
					beforeSend: function() {
						$("#waitDiv").show();
					},
					complete: function() {
						$("#waitDiv").hide();
					},
					success: function(data) {
						if (data != null && data.success) {
							alert("生成成功！");
						} else {
							alert("生成失败！");
						}
					}
				});
			})
		});
	</script>
<div class="main-content-wrapper">
<div id="main-content">
    
    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">静态化</h3>
                </div>
                <div class="panel-body">
                    <form id="form" class="form-horizontal form-border" method="post" action="">
                         <input type="hidden" id="id" name="id" value="${systemSetting.id}" />
                        <div class="form-group">
                            <label class="col-sm-3 control-label">网站首页：</label>
                            <div class="col-sm-6">
                                <input type="checkbox" value="1" 
                                	id="indexPage" name="indexPage" class="form-control">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">栏目列表：</label>
                            <div class="col-sm-6">
                                <input type="checkbox" value="" 
                                	id="listPage" name="listPage" class="form-control">
                            </div>
                        </div>
						<div class="form-group">
							<label class="col-sm-3 control-label">内容：</label>
							<div class="col-sm-6">
								<input type="checkbox" value=""
									id="contentPage" name="contentPage" class="form-control">
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label">单页面：</label>
							<div class="col-sm-6">
								<input type="checkbox" value=""
									id="singlePage" name="singlePage" class="form-control">
							</div>
						</div>
						<div id="waitDiv" class="form-group" style="display:none">
							<label class="col-sm-6 control-label">正在生成静态化页面...</label>
						</div>
						<div class="form-group" align="center">
							<button id="submitBtn" class="btn btn-primary" type="button">提交</button>
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
