<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%    String path = request.getContextPath();%>
<!-- <title>通讯录</title> -->
		<!-- end datetimepicker -->
		<script type="text/javascript">
			function subForm(){
				clickMenu('/plugin/smsplatformcontroller/addOrUpdateMail.html','form');
			}
		</script>
<div class="main-content-wrapper" style="padding: 10px 10px;">
<div id="main-content">
    
    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">通讯录维护</h3>
                </div>
                <div class="panel-body">
                    <form id="form" class="form-horizontal form-border" method="post" action="<%=path%>/plugin/smsplatformcontroller/addOrUpdateMail.html">
                         <input type="hidden" id="id" name="id" value="${mailList.id}" />
                         <input type="hidden" id="pinyin" name="pinyin" value="${mailList.pinyin}"/>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">所属分组：</label>
                            <div class="col-sm-6">
                                	<select name="groupId.id" class="form-control">
                                
                                	    <c:forEach items="${groupList}" var="list">
                                    <option value="${list.id}" <c:if test="${mailList.groupId.id==list.id}">selected="selected"</c:if>>${list.title}</option>
                                  </c:forEach>
                                	
                                	</select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">姓名：</label>
                            <div class="col-sm-6">
                                <input type="text" value="${mailList.name}" 
                                	id="name" name="name" class="form-control">
                            </div>
                        </div>
						<div class="form-group">
							<label class="col-sm-3 control-label">手机号：</label>
							<div class="col-sm-6">
								<input type="text"
									value="${mailList.phone}"
									id="phone" name="phone" class="form-control">
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label">备注：</label>
							<div class="col-sm-6">
								<input type="text"
									value="${mailList.remarks}"
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

