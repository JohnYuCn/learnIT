<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%    String path = request.getContextPath();
 %>
<!-- <title>通讯录分组</title> -->
		<!-- end datetimepicker -->
		<script type="text/javascript">
			function subForm(){
				clickMenu('/plugin/smsplatformcontroller/addOrUpdateMailGroup','form');
			}
		</script>
<div class="main-content-wrapper">
<div id="main-content">
    
    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">通讯录分组维护</h3>
                </div>
                <div class="panel-body">
                    <form id="form" class="form-horizontal form-border" method="post" action="<%=path%>/plugin/smsplatformcontroller/addOrUpdateMailGroup">
                         <input type="hidden" id="id" name="id" value="${mailListGroup.id}" />
                  
                       
                        <div class="form-group">
                            <label class="col-sm-3 control-label">分组名称：</label>
                            <div class="col-sm-6">
                                <input type="text" value="${mailListGroup.title}" 
                                	id="title" name="title" class="form-control">
                            </div>
                        </div>
				
						<div class="form-group">
							<label class="col-sm-3 control-label">备注：</label>
							<div class="col-sm-6">
								<input type="text"
									value="${mailListGroup.remarks}"
									id="remarks" name="remarks"  class="form-control">
							</div>
						</div>
						
							
						<div class="form-group" align="center">
							<button class="btn btn-primary" type="button" onclick="subForm()" >保存</button>
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
