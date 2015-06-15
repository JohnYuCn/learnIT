<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!-- 查询内容 -->

		<jsp:include page="../login/common.jsp"></jsp:include>
		<link rel="stylesheet" href="<%=path%>/css/jquery.datetimepicker.css" />
		<script type="text/javascript" src="<%=path%>/js/jquery.datetimepicker.js"></script>
		<script type="text/javascript">
		function addCont() {
			var url = "<%=path%>/cont/addCont/${id}";
			$("#tableDiv").load(url);
		}
		
		
		function modefy(url){
			$("#tableDiv").load(url);
		}
		
		//判读是否是删除按钮
		function deleteCont(url){
			var checkArray = "";//获取选择的数据
			if(url == ''){
				$("input[name='checkboxNode']:checked").each(function(i) {
					if (i == 0) {
						checkArray = $(this).val()
					} else {
						checkArray = checkArray + "," + $(this).val();
					}
				});
				if (checkArray == "") {
					alert("请选择数据！");
					return;
				}
				url = "<%=path%>/cont/updateDele/" + checkArray + ".html";
			};
			$.ajax( {
				url : url,
				data : {
					ids : checkArray,
					columnId : ${id}
				},
				success : function(data) {
					if(data=="success"){
						alert("删除成功");
						$("#tableDiv").load('<%=path%>/cont/findById/${id }.html');
					}else{
						alert("删除失败");
					}
				}
			});
		}
		
		$(document).ready(function() {
			
			$('#releaseTime1').datetimepicker();	
			//复选框选择
				$("#chkAll").click(function() {
					if ($("#chkAll").is(':checked')) {
						$("input[name='checkboxNode']").prop("checked", true);
					} else {
						$("input[name='checkboxNode']").prop("checked", false);
					}
				});
					
				//回收站
				$("#recycle").click(function() {
					var checkArray = "";//获取选择的数据
						var url = "<%=path%>/cont/findDeleteById/${id}.html";
						window.location.href = url;
					});
				
				$("#res").click(function() {
					$("#title").val('');
					$("#title1").val('')
					$("#releaseTime").val('');
					$("#releaseTime1").val('')
				});
				
				$("#staticCont").click(function() {
					var checkArray = "";//获取选择的数据
					$("input[name='checkboxNode']:checked").each(function(i){
						if(i==0){
							checkArray =  $(this).val()
						}else{
							checkArray = checkArray+","+ $(this).val();
						}
					})
					if (checkArray == "") {
						alert("请选择数据！");
						return;
					}
					$.ajax( {
						url : '<%=path%>/cont/staticCont.json',
						data : {
							ids : checkArray,
							columnId : ${id}
						},
						success : function(data) {
							if(data){
								alert("生成成功");
							}else{
								alert("生成失败");
							}
						}
					});
				})
			})
		function subForm(id){
			$("#title").val($("#title1").val());
			$("#releaseTime").val($("#releaseTime1").val());
		    $("#start").val(0);
			$("#limit").val(20);
			$("#currPage").val(0);
			
			$("#tableDiv").load("<%=path%>/cont/findById/"+id,$('#form').serializeArray());
		}
		function staticContId(checkArray){
			if (checkArray == "") {
				alert("请选择数据！");
				return;
			}
			$.ajax( {
				url : '<%=path%>/cont/staticCont.json',
				data : {
					ids : checkArray,
					columnId : ${id }
				},
				success : function(data) {
					if(data){
						alert("生成成功");
					}else{
						alert("生成失败");
					}
				}
			});
		}	
	</script>
		<input type="hidden" id="cid" name="cid" value="${cid}">
		<div class="main-content-wrapper">
			<div id="main-content">
				<div class="row">
					<div class="col-md-12">
					 <div class="panel panel-default">

							<div class="panel-heading">
								<h3 class="panel-title">
									查询条件
								</h3>

							</div>

							<div class="panel-body form-horizontal form-border">


								<div class="col-md-3" style="width: 360px; padding:10px;">
									<label class="control-label pull-left" >
										标题：
									</label>
									<div class="col-sm-8 " style="padding-left: 0px;" >
										<input type="text" class="form-control" id="title1"
											value="${title}">
									</div>
								</div>
								<div class="col-md-3" style="width: 390px; padding:10px;">
									<label class="control-label pull-left">
										发布时间：
									</label>
									<div class="col-sm-8" style="padding-left: 0px;">
										<input type="text" class="form-control" id="releaseTime1" value="${releaseTime}" />
									</div>
								</div>
						
								
							</div>

						<div class="panel-body" style="text-align: center;">
							<button type="button" class="btn btn-primary btn-trans"
									style="margin-right: 20px;" id="sub" onclick="subForm(${id})">
									查询
								</button>
								<button type="button" id="res" class="btn btn-primary btn-trans">
									重置
								</button>
						</div>
						
						</div>
						<div class="panel panel-default" style="position: relative;">
							<div class="panel-heading">
								<h3 class="panel-title">
									内容查询
								</h3>
								<div class="actions pull-right" style="margin-top: 25px">
									<button class="btn btn-primary" type="button"
										onclick="addCont()">
										添加内容
									</button>
									<button class="btn btn-primary" type="button" onclick="deleteCont('')">
										删除内容
									</button>
									<button class="btn btn-primary" type="button" id="staticCont">
										生成
									</button>
								</div>
							</div>
							<div class="panel-body">
								<table id="example" class="table table-striped table-bordered"
									cellspacing="0" width="100%">
									<thead>
										<tr>
											<th>
												<input id="chkAll" type="checkbox">
											</th>
											<th>
												序号
											</th>
											<th>
												ID
											</th>
											<th>
												标题
											</th>
											<th>
												发布者
											</th>
											<th>
												文章属性
											</th>
											<th>
												发布时间
											</th>
											<th>
												PV
											</th>
											<th>
												UV
											</th>
											<th>
												点击
											</th>
											<th>
												操作
											</th>
										</tr>
									</thead>

									<tbody>
										<c:forEach var="cont" items="${paging.object}"
											varStatus="rownum">
											<tr>
												<td>
													<input name="checkboxNode" type="checkbox"
														value="${cont.id}">
												</td>
												<td>
													${rownum.index+1+paging.paging.start}
												</td>

												<td>
													${cont.id}
												</td>
												<td>
													${cont.title}
												</td>
												<td>
													${cont.author}
												</td>
												<td>
													<font color="red">
														<c:if test="${cont.tuijian!=0}">
															[${cont.tuijian}级推荐]
														</c:if>
														<c:if test="${cont.toutiao!=0}">
															[${cont.toutiao}级头条]
														</c:if>
														<c:if test="${cont.topRank !=0}">
															[${cont.topRank}级置顶]
														</c:if>
														<c:if test="${cont.titleImg != ''}">
															[图]
														</c:if>
													</font>
												</td>
												<td><fmt:formatDate value="${cont.releaseTime}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
												<td>
													${cont.pvNumber}
												</td>
												<td>
													${cont.uvNumber}
												</td>
												<td>
													${cont.hits}
												</td>
												<td>
													<a href="javascript:modefy('<%=path%>/cont/findId/${cont.id}.html')">修改</a>
													<a href="javascript:deleteCont('<%=path%>/cont/updateDele/${cont.id }.html')">删除</a>
													<c:if test="${userSet.isComments==1}">
													<a href="javascript:commentAdmin('<%=path%>/cont/queryComments/${cont.id}.html')">管理评论</a>
													</c:if>
													<a href="javascript:staticContId(${cont.id });">生成</a>
												</td>
											</tr>
										</c:forEach>
									</tbody>
									<tr>
										<jsp:include page="../public/public.jsp" />
									</tr>
								</table>
								<form action="<%=path%>/cont/findById/${id}" id="form" method="post">
									<!-- 查询条件所需 -->
									<input type="hidden"  id="title"  name="title" value="${title}">
									<input type="hidden"  id="releaseTime"  name="releaseTimes" value="${releaseTime}" >
									
									
									<!-- 查询条件所需 -->
									<input type="hidden" id="start" name="start"
										value="${paging.paging.start}" />
									<input type="hidden" id="limit" name="limit"
										value="${paging.paging.limit}" />
									<input type="hidden" id="currPage" name="currPage"
										value="${paging.paging.currPage}" />
								</form>
								<div class="func" style="padding-bottom: 15px;">
								  <select id="columns">
								    <c:forEach items="${columnList}" var="cols">
								      <option value="${cols.id}">${cols.columnname}</option>
								    </c:forEach>
								  </select>
								  <button id="mobile">移动</button>
								  <button id="copy">复制</button>
								  <button id="recycle">回收站</button>
								  <select id="modefyTuijian" style="height: 30px; width: 120px;">
								    <option value="">修改推荐</option>
								    <option value="0">不推荐</option>
									<option value="1">一级推荐</option>
									<option value="2">二级推荐</option>
									<option value="3">三级推荐</option>
									<option value="4">四级推荐</option>
									<option value="5">五级推荐</option>
									<option value="6">六级推荐</option>
									<option value="7">七级推荐</option>
									<option value="8">八级推荐</option>
									<option value="9">九级推荐</option>
								  </select>
								  <select id="modefyToutiao" style="height: 30px; width: 120px;">
								    <option value="">修改头条 </option>
								    <option value="0">非头条</option>
									<option value="1">一级头条</option>
									<option value="2">二级头条</option>
									<option value="3">三级头条</option>
									<option value="4">四级头条</option>
									<option value="5">五级头条</option>
									<option value="6">六级头条</option>
									<option value="7">七级头条</option>
									<option value="8">八级头条</option>
									<option value="9">九级头条</option>
								  </select>
								  <select id="modefyTopRank" style="height: 30px; width: 120px;">
								    <option value="">修改置顶</option>
								    <option value="0">不置顶</option>
									<option value="1">一级置顶</option>
									<option value="2">二级置顶</option>
									<option value="3">三级置顶</option>
									<option value="4">四级置顶</option>
									<option value="5">五级置顶</option>
									<option value="6">六级置顶</option>
									<option value="7">七级置顶</option>
									<option value="8">八级置顶</option>
									<option value="9">九级置顶</option>
								  </select>
								</div>
						
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<script type="text/javascript">
		$(function(){
		$("#mobile").click(function(){
			var checkArray = "";//获取选择的数据
				$("input[name='checkboxNode']:checked").each(function(i) {
					if (i == 0) {
						checkArray = $(this).val()
					} else {
						checkArray = checkArray + "," + $(this).val();
					}
				});
				if (checkArray == "") {
					alert("请选择数据！");
					return;
				}
				url="<%=path%>/cont/Controller/mobileCont/"+$("#columns").val()+"/"+checkArray+"/${colId}.html";
				clickMenu(url);
		});
		$("#copy").click(function(){
			var checkArray = "";//获取选择的数据
				$("input[name='checkboxNode']:checked").each(function(i) {
					if (i == 0) {
						checkArray = $(this).val()
					} else {
						checkArray = checkArray + "," + $(this).val();
					}
				});
				if (checkArray == "") {
					alert("请选择数据！");
					return;
				}
				url="cont/Controller/copyCont/"+$("#columns").val()+"/"+checkArray+"/${colId}.html";
				clickMenu(url);
		});
			$('#modefyTuijian').combobox({
				onSelect : function(param){
					 var r=confirm("您确定要更改文章为"+param.text+"吗")
					 if (!r){
					     $('#modefyTuijian').combobox('setValue', '');
					 }else{
					 	modeyType('tuijian',$('#modefyTuijian'),param);
					 }
				}
		    });
		    
			$('#modefyToutiao').combobox({
				onSelect : function(param){
					 var r=confirm("您确定要更改头条为"+param.text+"吗")
					 if (!r){
					     $('#modefyToutiao').combobox('setValue', '');
					 }else{
					 	modeyType('toutiao',$('#modefyToutiao'),param);
					 }
				}
		    });
		    
			$('#modefyTopRank').combobox({
				onSelect : function(param){
					 var r=confirm("您确定要更改置顶为"+param.text+"吗")
					 if (!r){
					     $('#modefyTopRank').combobox('setValue', '');
					 }else{
					 	modeyType('topRank',$('#modefyTopRank'),param);
					 }
				}
		    });
		})
		
		function modeyType(type,obj,param){
			 var checkArray = "";//获取选择的数据
			 $("input[name='checkboxNode']:checked").each(function(i){
				if(i==0){
					checkArray =  $(this).val()
				}else{
					checkArray = checkArray+","+ $(this).val();
				}
			 })
			 if (checkArray == "") {
			 	obj.combobox('setValue', '');
				alert("请选择数据！");
				return;
			 }
		 	 $.ajax( {
				url : '<%=path%>/cont/modefyContType.json',
				data : {
					ids : checkArray,
					val : param.value,
					type : type
				},
				success : function(data) {
					if(data){
						alert("修改成功");
						var url= "<%=path %>/cont/findById/${id}.html";
							$("#tableDiv").load(url);
					}else{
						alert("修改失败");
						obj.combobox('setValue', '');
					}
				}
			});
		}
		</script>
		
		<div style="padding:20px "></div>
