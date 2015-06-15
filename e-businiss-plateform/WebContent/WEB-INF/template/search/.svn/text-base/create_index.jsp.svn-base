<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!-- <title>创建索引</title> -->
	<script type="text/javascript">
		$(document).ready(function() {
			$("#reCreateBtn").bind("click", function() {
				submitReq(1);
			});
			
			$("#updateBtn").bind("click", function() {
				submitReq(2);
			});
			
			function submitReq(reqType) {
				var reqData = {reqType:reqType};
				
				if (reqType == 2) {
					var index = ($("#indexPage").prop("checked")) ? "1" : "0";
					var list = ($("#listPage").prop("checked")) ? "1" : "0";
					var content = ($("#contentPage").prop("checked")) ? "1" : "0";
					var single = ($("#singlePage").prop("checked")) ? "1" : "0";
					if (index == "0" && list == "0" && content == "0" && single == "0") {
						alert("至少需要选择一项！");
						return;
					}
					reqData.index = index;
					reqData.list = list;
					reqData.content = content;
					reqData.single = single;
				}
				
				
				$.ajax({
					type: "POST",
					url: "create.json",
					data: reqData,
					beforeSend: function() {
						$("#waitDiv").show();
					},
					complete: function() {
						$("#waitDiv").hide();
					},
					success: function(data) {
						var name = (reqType == 1) ? "创建索引" : "更新索引";
						if (data != null && data.success) {
							alert(name + "成功！");
						} else {
							alert(name + "失败！");
						}
					}
				});
			};
		});
	</script>
<div class="main-content-wrapper">
<div id="main-content">
    
    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">创建索引</h3>
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
							<label class="col-sm-6 control-label">操作中...</label>
						</div>
						<div class="form-group" align="center">
						    <button id="reCreateBtn" class="btn btn-primary" type="button">重建索引</button>
							&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
							<button id="updateBtn" class="btn btn-primary" type="button">更新索引</button>
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
