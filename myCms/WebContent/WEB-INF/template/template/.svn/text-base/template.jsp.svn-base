<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%
String path=request.getContextPath();
%>
<!-- <title>模板</title> -->
<script type="text/javascript">
  function reductions(type){
	  if(confirm("确定要还原吗?")){
		  if(type==1){
		  $("#templateContent").val($("#recordOne").val());
		  }
		  if(type==2){
			$("#templateContent").val($("#recordTwo").val());  
		  }
		  $(".pop-up").hide();
			$(".shade").hide();
	  }
  }
  
  function formSub(){
	  	$.ajax({
	  		url:"<%=path%>/template/saveTemplate.html",
	  		type:'post',
	  		data:$('#form').serialize(),
	  		success : function(data){
	  			if(data == "success"){
	  				alert("保存成功");
	  				$("#tree").load("<%=path %>/template/sidebarLeft");
	  				$("#tableDiv").load("<%=path %>/template/list.html?cid=${cid}");
	  			}else{
	  				alert("保存失败");
	  			}
	  		},
	  		error : function(){
	  			alert("服务器连接失败");
	  		}
	 	});
  }
</script>
<div class="main-content-wrapper" >
<div id="main-content">
    
    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">模板</h3>
                </div>
                <div class="panel-body">
                    <form id="form" class="form-horizontal form-border">
                         <input type="hidden" id="id" name="id" value="${param.id}" />
                         <input type="hidden" id="cid" name="cid" value="${param.cid}" />
                         <input type="hidden" id="treePid" name="treePid" value="${param.treePid}" />
                        <div class="form-group">
                            <label class="col-sm-3 control-label">模板名称：</label>
                            <div class="col-sm-6">
                                <input type="text" placeholder="" value="${tpl.templateName}" required="" id="templateName" name="templateName" class="form-control">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">文件名：</label>
                            <div class="col-sm-6">
                                <input type="text" placeholder="" value="${tpl.filename}" required="" id="filename" name="filename" class="form-control">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">变量名：</label>
                            <div class="col-sm-6">
                                <input type="text" placeholder="" value="${tpl.varName}" id="varName" name="varName" class="form-control">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">内容：</label>
                            <div class="col-sm-6">
                                <textarea class="textarea form-control" rows="5" cols="20" 
								 id="templateContent" name="templateContent" 
								style="width: 100%; height: 300px">${tpl.templateContent}</textarea>
                            </div>
                        </div>
						<div class="form-group" align="center">
							<button class="btn btn-primary" onclick="formSub()" type="button">提交</button>
							<c:if test="${param.cid==4||tpl.catalogId==4}">
								<input type="checkbox" name="isBuild" value="1"/>同时生成静态文件
							</c:if>
							 
							&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
							<button class="btn btn-primary" type="reset">重置</button>
	<a href="javascript:void(0);" onclick="showPopTop();">[修改记录]</a>
						</div>
					</form>
						</div>
					</div>
				</div>
			</div>
		</div>
		</div>
			<style type="text/css">
			.pop-up { width:800px; height:600px; background:#fff; z-index:6; border-radius:5px; position: absolute;}
			.pop-up-tit { line-height:42px; height:42px; background:#0a3265; border-radius:5px 5px 0 0;} 
			.pop-up-tit a{ color:#fff; padding-right:10px;}
			.pop-up-tit h3{ color:#fff; padding-left:10px;}
			.shade { background:#000; position:absolute; top:0; left:0; z-index:5;filter:alpha(opacity=50); -moz-opacity:0.5; -khtml-opacity: 0.5; opacity: 0.5;}
		</style>
		<div class="clearfix abs pop-up" style="display: none;">
			<div class="pop-up-tit">
				<a href="javascript:;" onClick="closePops();" style="float: right;">關閉</a>
				<h3 class="panel-title" style="line-height: 40px;">
					历史记录
				</h3>
			</div>
			<div class="clearfix">
			 <c:if test="${tpl.recordOneTime!=null}">
		         <p>${tpl.recordOneTime}<textarea readonly="readonly" id="recordOne">${tpl.recordOneContent} </textarea><a href="javascript:void(0);" onclick="reductions(1)">【还原】</a></p>
		         </c:if>
		         <c:if test="${tpl.recordTwoTime!=null}">
		         <p>${tpl.recordTwoTime}<textarea readonly="readonly" id="recordTwo">${tpl.recordTwoContent} </textarea><a href="javascript:void(0);" onclick="reductions(2)">【还原】</a></p>
	         </c:if>
			</div>
			
		</div>
		<div class="shade abs" onClick="closePops();" style="display: none;"></div>
		
		<script type="text/javascript">
			function showPopTop() {
				var bodyWidth = $(document.body).width();
				var bodyHeight = $(document.body).outerHeight(true);
				var bodyHideTop = $(document).scrollTop();	
			$(".shade").css({
					width:bodyWidth,
					height:bodyHeight,
				}).show();
			$(".pop-up").css({
					top:bodyHideTop+100,
					left:"50%",
					marginLeft:"-400px"
				}).show();
			}
		
	function closePops(){
			$(".pop-up").hide();
			$(".shade").hide();
		}
			
		</script>

 <div style="padding:20px "></div>
