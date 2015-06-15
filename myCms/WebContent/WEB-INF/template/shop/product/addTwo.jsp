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
	<jsp:include page="../../login/common.jsp"></jsp:include>
    <link href="<%=path%>/css/jquery.datetimepicker.css" rel="stylesheet" />
	<script type="text/javascript" src="<%=path%>/js/jquery.datetimepicker.js"></script>
	<!-- <script type="text/javascript" src="/assets/js/jquery.colorpicker.js"></script> -->
	
		<!-- <title>商品添加</title> -->
<script type="text/javascript">
	function form1Sub(){
		clickMenu('/shop/product/add','form_1');
	}
	function form2Sub(){
		clickMenu('/shop/product/add','form_2');
	}
	function form3Sub(){
		clickMenu('/shop/product/add','form_3');
	}
</script>
		<div class="main-content-wrapper" style="padding: 10px 10px;">
			<div id="main-content">
				<div class="row">
					<div class="col-md-12">
					  <div class="panel panel-default">
              			 <div class="panel-heading">
                    		<h3 class="panel-title">商品添加</h3>
               			 </div>
               			 
               			 <div class="panel-body">
								<form id="form_1" class="form-horizontal form-border" method="post" action="${pageContext.request.contextPath }/shop/product/add">
									<c:forEach items="${models}" var="model">
										 	<div class="form-group">
					                            <label class="col-sm-3 control-label" >${model.name }:</label>
					                            <input type="hidden" value="${model.name }" name="${productAttribute[i].attKey }">
					                            <div class="col-sm-6">
					                            	<c:if test="${model.msMethods==0}"><input class="form-control" name="${productAttribute[i].attValue}" /></c:if>
						                           	<c:if test="${model.msMethods==1}">
						                           		<select class="form-control" name=${productAttribute[i].attValue}>
												 		 	<c:forEach items="${model.strings}" var="str">
												 		 		<option value ="${str }" >${str }</option>
												 		 	</c:forEach>
														</select>
						                           	</c:if>
						                            
					                            </div>
		                        			</div>		
									</c:forEach>
									
		                        	<div class="form-group" align="center">
		                        		<input type="hidden"  name="pcs_ID" value="${cla.pcsID }"/>
		                        		&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
										<input class="btn btn-primary" type="button" value="提交" onclick="form1Sub()"/>
		                        	</div>
		                        </form>
		                        
		                        <form id="form_2" class="form-horizontal form-border" action="价格">
			                        <div class="form-group">
				                            <label class="col-sm-3 control-label">价格:</label>
				                            <div class="col-sm-6">
												<input type="text" name="price" class="form-control" />
				                            </div>
			                        </div>
		                        	<div class="form-group">
				                            <label class="col-sm-3 control-label">折扣价:</label>
				                            <div class="col-sm-6">
												<input type="text"  name="kickback" class="form-control" />
				                            </div>
			                        </div>
			                        <div class="form-group">
				                            <label class="col-sm-3 control-label">会员价:</label>
				                            <div class="col-sm-6">
												<input type="text"  name="vipPrice" class="form-control" />
				                            </div>
			                        </div>
			                        <div class="form-group">
				                            <label class="col-sm-3 control-label">积分价:(积分价格(可以使用的积分)纯积分商品把积分写比价格大即可)</label>
				                            <div class="col-sm-6">
												<input type="text"  name="integralPrice" class="form-control" />
				                            </div>
			                        </div>
			                        <div class="form-group">
				                            <label class="col-sm-3 control-label">特价:</label>
				                            <div class="col-sm-6">
												<input type="text"  name="specialPrice" class="form-control" />
				                            </div>
			                        </div>
			                        <div class="form-group">
				                            <label class="col-sm-3 control-label">特价开始时间:</label>
				                            <div class="col-sm-6">
												<input type="text" id="begindate"  name="begindate" class="form-control" />
				                            </div>
			                        </div>
			                        <div class="form-group">
				                            <label class="col-sm-3 control-label">特价结束时间:</label>
				                            <div class="col-sm-6">
												<input type="text" id="enddate"  name="enddate" class="form-control" />
				                            </div>
			                        </div>
			                        <div class="form-group">
				                            <label class="col-sm-3 control-label">倒计时时间:</label>
				                            <div class="col-sm-6">
												<input type="text" id="countDownenddate"  name="countDown" class="form-control" />
				                            </div>
			                        </div>
			                        <div class="form-group">
				                            <label class="col-sm-3 control-label" >循环倒计时:</label>
				                            <div class="col-sm-1" style="margin-left:-25px">
												<input type="checkbox" value="1"  name="isCountDown" class="form-control" />
				                            </div>
			                        </div>
			                        <div class="form-group">
				                            <label class="col-sm-3 control-label">数量优惠政策:</label>
				                            <div class="col-sm-6">
												<input type="text"  name="countDown" class="form-control" />
				                            </div>
			                        </div>
			                        <div class="form-group" align="center">
		                        		<input type="hidden"  name="pcs_ID" value="${cla.pcsID }"/>
		                        		&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
										<input class="btn btn-primary" type="button" onclick="form2Sub()" value="提交"/>
		                        	</div>
		                        </form>
		                        	
		                        <form id="form_3" class="form-horizontal form-border" action="库存">
		                        	<div class="form-group">
			                            <label class="col-sm-3 control-label">颜色:</label>
			                            <div class="col-sm-1" style="style="margin-left:-25px"">
				                        	<img src="<%=path%>/assets/img/colorpicker.png" id="cp2"/>
				                        	<input type="text" class="form-control" id="cp1" placeholder="测试颜色"/>
				                        	<input type="hidden" name="colorText" id="colorText" />
			                            </div>
		                        	</div>
		                        	<div class="form-group">
		                        		<li>
											<input id="prop_1627207-28341" class="J_Checkbox" type="checkbox"   data-color="000000" value="1627207:28341" name="cp_1627207">
											<label class="color-lump" for="prop_1627207-28341" style="background-color:#000000;"></label>
											<label class="labelname" title="黑色" for="prop_1627207-28341">黑色</label>
											<input id="J_Alias_1627207-28341" class="editbox text" type="text" name="cpva_1627207:28341" value="黑色" maxlength="15">
										</li>
		                        	</div>
		                        </form>
		                        	
		                        	
		                        	<div class="form-group" align="center">
		                        		<input type="hidden"  name="pcs_ID" value="${cla.pcsID }"/>
		                        		&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
										<input class="btn btn-primary" type="button" onclick="form3Sub()" value="提交"/>
		                        	</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	<script type="text/javascript">
		$(function(){		
			
			$('#begindate').datetimepicker();
			$('#countDownenddate').datetimepicker();
			$('#enddate').datetimepicker();
			/*$("#cp2").colorpicker({
    			fillcolor:true,
    			success:function(o,color){
        			$("#cp1").css("color",color);
    			}
			});
			$("#cp1").colorpicker({	
			    fillcolor:true,
			    success:function(o,color){
			    	$(o).css("color",color);
    			}
			});*/
			
		}
	</script>

