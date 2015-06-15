<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%
	String path = request.getContextPath();
	int i=0;
%>
		<!-- <title>商品分类添加</title> -->
<script type="text/javascript">
	function subForm(){
		clickMenu('/shop/productClassify/addOrUpdate','form_1');
	}
</script>
		<div class="main-content-wrapper" style="padding: 10px 10px;">
			<div id="main-content">
				<div class="row">
					<div class="col-md-12">
					  <div class="panel panel-default">
              			 <div class="panel-heading">
                    		<h3 class="panel-title">商品分类添加</h3>
               			 </div>
               			 
               			 <div class="panel-body">
								<form id="form_1" class="form-horizontal form-border" method="post" action="${pageContext.request.contextPath }/shop/productClassify/addOrUpdate">
									<div class="form-group">
			                            <label class="col-sm-3 control-label">分类名称:</label>
			                            <div class="col-sm-6">
			                                <input class="form-control" type="text" id="name" name="name" value="${cla.name }">
			                            </div>
		                        	</div>
		                        	
		                        	<div class="form-group">
			                            <label class="col-sm-3 control-label">上级分类:</label>
			                            <div class="col-sm-6">
				                            <select class="form-control" name="parentID">
										 		 <c:forEach items="${bysorts}" var="clas">
										 			 <option value ="${clas.svalue }" <c:if test="${clas.svalue==cla.parentID }">selected="selected"</c:if> >${clas.sname }</option>
										  		</c:forEach>
											</select>
			                            </div>
		                        	</div>
		                        	
		                        	<div class="form-group">
			                            <label class="col-sm-3 control-label">是否显示:</label>
			                            <div class="pull-left" style="padding: 0px 15px;">
			                                <input class="form-control" type="checkbox" name="isShow" <c:if test="${cla.isShow==1 }">checked="checked"</c:if>  value="1" >
			                            </div>
		                        	</div>
		                        	
		                        	<div class="form-group">
			                            <label class="col-sm-3 control-label">导航栏显示:</label>
			                            <div class="pull-left" style="padding: 0px 15px;">
			                                <input class="form-control" type="checkbox" name="isNavigation" <c:if test="${cla.isNavigation==1 }">checked="checked"</c:if> value="1">
			                            </div>
		                        	</div>
		                        	
		                        	<div class="form-group">
			                            <label class="col-sm-3 control-label">排序:</label>
			                            <div class="col-sm-6">
			                                <input class="form-control" type="text" id="sorting" name="sorting" value="${cla.sorting }" >
			                            </div>
		                        	</div>
		                        	
		                        	<div class="form-group">
			                            <label class="col-sm-3 control-label">关键字:</label>
			                            <div class="col-sm-6">
			                                <input class="form-control" type="text" id="keyword" name="keyword" value="${cla.keyword }">
			                            </div>
		                        	</div>
		                        	
		                        	<div class="form-group">
			                            <label class="col-sm-3 control-label">描述:</label>
			                            <div class="col-sm-6">
			                          		<textarea class="form-control" name="description">${cla.description }</textarea>
			                            </div>
		                        	</div>
		                        	
		                        	<div class="form-group" style="margin-bottom: 0; padding-bottom: 0;">
			                            <label class="col-sm-3 control-label">筛选属性:</label>
				                            <!-- 新添加时 (无数据)-->
				                            <c:if test="${proAttScreens==null||fn:length(proAttScreens)==0}">
					                             <div class="col-sm-6 list-group" id="selectdiv">
					                             	<div class="list-group-item" >
						                          		<a style="cursor:pointer;" class="add1" >[+]</a>
						                          		<select class="selectMode" name="proAttScreens[<%=i %>].pmdID" class="selectmodel" >
						                          			<option value="0" selected="selected">请选择商品类型</option>
						                          			<c:forEach var="pmd" items="${productModels}">
																<option value="${pmd.pmdID}"  <c:if test="${pmd.pmdID==pmdID}">selected="selected"</c:if>>${pmd.name}</option>
															</c:forEach>
						                          		</select>
						                          		<select class="selectModeStyle" name="proAttScreens[<%=i %>].msID">
						                          			<option value="0">请选择筛选属性</option>
						                          		</select>
						                          		<a style="cursor:pointer;" class="deleteDIV" >移除</a>
						                          	</div>
					                            </div>
					                            <%i++; %>
				                            </c:if>
				                            <!-- 有数据时 -->
				                            <c:if test="${fn:length(proAttScreens)>0}">
				                           		<div class="col-sm-6 list-group" id="selectdiv" >
					                            	<c:forEach var="proAtt" items="${proAttScreens}">
					                            		<div class="list-group-item" >
							                          		<a style="cursor:pointer;" class="add1" >[+]</a>
							                          		<select class="selectMode" name="proAttScreens[<%=i %>].pmdID">
							                          			<option class="model" value="0" >请选择商品类型</option>
							                          			<c:forEach var="pmd" items="${productModels}">
																	<option class="model" value="${pmd.pmdID}"  <c:if test="${pmd.pmdID==proAtt.pmdID}">selected="selected"</c:if>>${pmd.name}</option>
																</c:forEach>
							                          		</select>
							                          		<select class="selectModeStyle" name="proAttScreens[<%=i %>].msID">
							                          			<option value="0">请选择筛选属性</option>
							                          			<c:set var="proAttPmdID" value="${proAtt.pmdID }"></c:set>
							                          			<c:forEach var="ms" items="${mapStyleModel[proAttPmdID]}">
																	<option value="${ms.id}"  <c:if test="${ms.id==proAtt.msID}">selected="selected"</c:if>>${ms.name}</option>
																</c:forEach>
							                          		</select>
							                          		<a style="cursor:pointer;" class="deleteDIV" >移除</a>
							                            </div>
							                            <%i++; %>
					                            	</c:forEach>
					                            </div>
				                            </c:if>
			                          
		                        	</div>
		                        	<div class="form-group">
		                        	<div class="col-sm-3"></div>
		                        	<div class="col-sm-6"><div class="alert alert-success" role="alert">筛选属性可在前分类页面筛选商品</div></div>
		                        	</div>
		                        	<div class="form-group" align="center">
		                        		<input type="hidden"  name="pcs_ID" value="${cla.pcsID }"/>
		                        		&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
										<input class="btn btn-primary" type="button" onclick="subForm()" value="提交"/>
		                        	</div>
		                        	
		                        	
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	<script type="text/javascript">
		$(function(){
			var jsi=<%=i %>;
			bindSelect();
			$('.add1').bind('click',function(){
				var newDiv = document.createElement('div');  
             //   var strOption=$(this).parent().find(".model").each(function(){
             //  	alert($(this).html());
             //   })
                var strModel=$(this).parent().children(".selectMode").html();
             	var strModelStyle=$(this).parent().children(".selectModeStyle").html();
				newDiv.innerHTML = "<a style='cursor:pointer;' class='deleteDIV' >[-]</a>" +
				"<select class='selectMode' name='proAttScreens["+jsi+"].pmdID'> " +strModel+
				"</select>"+
				"<select class='selectModeStyle' name='proAttScreens["+jsi+"].msID'>"+
				strModelStyle+
				"</select>";
				
                newDiv.setAttribute("class","list-group-item");  
                $("#selectdiv").append(newDiv);  
                bindSelect();
                jsi++;
			});
	 		
			function bindSelect(){
				$(".selectMode").unbind().change(function(){
						var selectModelStyle=$(this).parent().children(".selectModeStyle");
						selectModelStyle.empty();
						var index=$(this).val();
						var str="<option value='0'selected='true' >请选择筛选属性</option>";
						var date=eval(${jsonMap});
						selectModelStyle.append(str);
						$.each(date,function(n,value) { 
							if(n==index){
								$(value).each(function(){ 
									var str1="<option value='"+this.id+"'>"+this.name+"</option>";
									selectModelStyle.append(str1);
								});
							}
						});
						
					});
				$(".deleteDIV").unbind().click(function(){
					var modelStyle=$(this).parent().children(".selectModeStyle");
					if($(this).parent().children(".selectMode").attr("name")=="proAttScreens[0].pmdID"){
						modelStyle.empty();
						modelStyle.append("<option value='0'>请选择筛选属性</option>");
					}else{
           				$(this).parent().remove();
					}
					
     			});
			}
		});
	</script>


