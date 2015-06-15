<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
  	<!-- 管理栏目 -->
    
    
    <link rel="stylesheet" type="text/css" href="<%=path %>/assets/plugins/easyui/themes/default/combo.css">
	 <link rel="stylesheet" type="text/css" href="<%=path %>/assets/plugins/easyui/themes/default/combobox.css">
	<script src="<%=path %>/assets/plugins/easyui/jquery.easyui.min.js"></script>
    
	<script type="text/javascript">

		$(document).ready(function(){
		     //复选框选择
			 $("#chkAll").click(function(){
			     if($("#chkAll").is(':checked')){
			     	$("input[name='checkboxNode']").prop("checked", true);
			     }else{
			     	$("input[name='checkboxNode']").prop("checked", false);
			     }
			 });
			
			//判读是否是删除按钮
			$("#deleteUser").click(function(){
				var checkArray = "";//获取选择的数据
				$("input[name='checkboxNode']:checked").each(function(i){
					if(i==0){
						checkArray =  $(this).val()
					}else{
						checkArray = checkArray+","+ $(this).val();
					}
				})
				if(checkArray){
					var url = "<%=path %>/column/delete/"+ checkArray +"/${id}.html";
					$("tableDiv").load(url);
					window.location.href = url;
				}else{
					alert("请选择需要删除的记录!");
					return ;
				}
			});
				$("#sub").click(function() {
					$("#columnname").val($("#columnname1").val());
					$("#start").val(0);
					$("#limit").val(20);
					$("#currPage").val(0);
					$("#tableDiv").load("<%=path %>/column/findById/${id}",$("#form").serializeArray());
				});
			$("#res").click(function() {
				$("#columnname").val('');
				$("#columnname1").val('');
			});
			
			$('#indexStyle').combobox({
			    url:'<%=path %>/column/findTemp/1.json',
			    valueField:'id',
			    textField:'templateName',
			    editable : false,
			    value : '',
			    onSelect : function(param){
					 var r=confirm("您确定要更改列表模板为"+param.templateName+"吗")
					 if (!r){
					     $('#indexStyle').combobox('setValue', '');
					 }else{
					 	modeyType('indexStyle',$('#indexStyle'),param);
					 }
				}
	      });
	      $('#listStyle').combobox({
			    url:'<%=path %>/column/findTemp/3.json',
			    valueField:'id',
			    textField:'templateName',
			    editable : false,
			    value : '',
			    onSelect : function(param){
					 var r=confirm("您确定要更改列表模板为"+param.templateName+"吗")
					 if (!r){
					     $('#listStyle').combobox('setValue', '');
					 }else{
					 	modeyType('listStyle',$('#listStyle'),param);
					 }
				}
	      });
	      $('#contStyle').combobox({
			    url:'<%=path %>/column/findTemp/2.json',
			    valueField:'id',
			    textField:'templateName',
			    editable : false,
			    onSelect : function(param){
					 var r=confirm("您确定要更改首页模板为"+param.templateName+"吗")
					 if (!r){
					     $('#contStyle').combobox('setValue', '');
					 }else{
					 	modeyType('contStyle',$('#contStyle'),param);
					 }
				}
	      });
	      $('#indexStyle').combobox("setValue","");
	      $('#listStyle').combobox("setValue","");
	      $('#contStyle').combobox("setValue","");
		});
		
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
				url : '<%=path%>/column/modefyContType.json',
				data : {
					ids : checkArray,
					val : param.id,
					type : type
				},
				success : function(data) {
					if(data){
						alert("生成成功");
						location.reload() 
					}else{
						alert("生成失败");
						obj.combobox('setValue', '');
					}
				}
			});
		}
	
	
	</script>
	
    <div class="main-content-wrapper" style="padding: 10px 10px;">
    	 <div id="main-content">
                <div class="row">
                    <div class="col-md-12">
                    <div class="panel panel-default form-horizontal form-border">

							<div class="panel-heading">
								<h3 class="panel-title">
									查询条件
								</h3>
							</div>
							<div class="panel-body">
								<div class="col-sm-4" >
									<label class="col-sm-4 control-label pull-left" style="padding-right: 0px;">
										栏目名称：
									</label>
									<div class="col-sm-8 " style="padding-left:0px;">
										<input type="text" class="form-control" id="columnname1"
											value="${tvcmsColumn.columnname}">
									</div>
								</div>
							</div>
							<div class="panel-body" style="text-align: center;">
								<button type="button" class="btn btn-primary btn-trans"
									style="margin-right: 20px;" id="sub">
									查询
								</button>
								<button type="button" id="res" class="btn btn-primary btn-trans">
									重置
								</button>
							</div>
						</div>
                        <div class="panel panel-default" style="position: relative;">	
                            <div class="panel-heading">
                                <h3 class="panel-title">栏目信息</h3>
                                <div class="actions pull-right" style="margin-top: 25px">
									<button class="btn btn-primary" type="button" onclick="$('#tableDiv').load('<%=path%>/column/columnSetting/0/${id}.html')">添加栏目</button>
									<button class="btn btn-primary" type="button" id="deleteUser">删除栏目</button>
                                </div>
                            </div>
                            <div class="panel-body">
                                <table id="example" class="table table-striped table-bordered" cellspacing="0" width="100%">
                                    <thead>
                                        <tr>
                                        	<th><input id="chkAll" type="checkbox"></th>
                                            <th>序号</th>
                                            <th>ID</th>
                                            <th>栏目名称</th>
                                            <th>排列顺序</th>
                                            <th>操作</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    	<c:forEach var="tvColumn" items="${paging.object}" varStatus="rownum">
	                                        <tr>
	                                            <td><input name="checkboxNode" type="checkbox"  value="${tvColumn.id}" ></td>
	                                            <td>${rownum.index+1+paging.paging.start}</td>
	                                            <td>${tvColumn.id}</td>
	                                            <td>${tvColumn.columnname}</td>
	                                            <td>${tvColumn.sort}</td>
	                                            <td>
	                                            	<a href="javaScript:void(0);" onclick="$('#tableDiv').load('<%=path %>/column/columnSetting/${tvColumn.id}/${tvColumn.bclassId}.html')">修改</a>
	                                            	<a href="javaScript:void(0);" onclick="$('#tableDiv').load('<%=path %>/column/delete/${tvColumn.id}/${tvColumn.bclassId}.html')">删除</a>
	                                        </tr>
                                        </c:forEach>
                                    </tbody>
                                    <tr>
                                    	<jsp:include  page="../public/public.jsp" />
                                    </tr>
                                </table>
							 <form action="<%=path %>/column/findById/${id}" id="form" method="post">
							 <!-- 查询条件所需 -->
									<input type="hidden"  id="columnname" name="columnname" value="${tvcmsColumn.columnname}">
									<!-- 查询条件所需 -->
							 	<input type="hidden" id="start" name="start" value="${paging.paging.start}" />
							 	<input type="hidden" id="limit" name="limit" value="${paging.paging.limit}" />
							 	<input type="hidden" id="currPage" name="currPage" value="${paging.paging.currPage}" />
							 </form>
							 <div class="func" style="padding-bottom: 15px;">
								  <select id="indexStyle" style="height: 30px; width: 120px;">
								  </select>
								  <select id="listStyle" style="height: 30px; width: 120px;">
								  </select>
								  <select id="contStyle" style="height: 30px; width: 120px;">
								  </select>
								</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
    </div>

    
    <div style="padding:20px "></div>