<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
%>
    <link rel="stylesheet" href="<%=path%>/assets/plugins/ztree/css/zTreeStyle.css">
    <script src="<%=path%>/assets/plugins/ztree/js/jquery.ztree.all-3.5.min.js"></script>
    <script>
        $(document).ready(function() {
        	
        

        	function showData(data) {
        		if (data == null) return;
        		$("#id").prop("value", (data.id == null) ? "" : data.id);
        		$("#parentId").prop("value", (data.parentId == null) ? "" : data.parentId);
        		$("#name").prop("value", (data.name == null) ? "" : data.name);
        		$("#enterUrl").prop("value", (data.enterUrl == null) ? "" : data.enterUrl);
        		$("#otherUrl").prop("value", (data.otherUrl == null) ? "" : data.otherUrl);
        		$("#sort").prop("value", (data.sort == null) ? "" : data.sort);
        		$("#imgPath").prop("value", (data.imgPath == null) ? "" : data.imgPath);
        		if (data.isVisible == 2) $($('input[name="isVisible"]')[1]).prop("checked", true);
        		else $($('input[name="isVisible"]')[0]).prop("checked", true);
        	}
        	
        	$("#rest").bind("click", function() {
        		$("#id").prop("value", "");
        		$("#parentId").prop("value", "");
        	});
        	
        	$("#save").bind("click", function() {
        		var id = $("#id").prop("value");
        		if (id == "") {
        			alert("请选择功能修改后再保存!");
        			return;
        		}
        		var data = {
        			id:id,
        			parentId:$("#parentId").prop("value"),
        			name:$("#name").prop("value"),
        			enterUrl:$("#enterUrl").prop("value"),
        			otherUrl:$("#otherUrl").prop("value"),
        			sort:$("#sort").prop("value"),
        			imgPath:$("#imgPath").prop("value"),
        			isVisible:$('input[name="isVisible"]:checked').val()
        		}
        		
        		saveData(data, true);
        	});
        	
        	$("#saveSub").bind("click", function() {
        		var selData = tree.getSelectedNodes();
                var data = {
                    id:"",
                    parentId:(selData.length == 0) ? "" : selData[0].id,
                    name:$("#name").prop("value"),
                    enterUrl:$("#enterUrl").prop("value"),
                    otherUrl:$("#otherUrl").prop("value"),
                    sort:$("#sort").prop("value"),
                    imgPath:$("#imgPath").prop("value"),
                    isVisible:$('input[name="isVisible"]:checked').val()
                }
                
                saveData(data, false);
            });
        	
        	function saveData(reqData, isUpdate) {
        		$.ajax({
                    type: "POST",
                    url: "<%=path%>/system/PowerSetting/save.json",
                    data: reqData,
                    success: function(data, textStatus) {
                        if (data == null || data.success != null && data.success == false) {
                            var str = "保存错误";
                            if (data != null && data.msg != null) str += "：" + data.msg;
                            alert(str);
                            return;
                        }
                        if (isUpdate) {
                        	var nodeData = tree.getNodeByParam("id", reqData.id);
                        	nodeData.name = reqData.name;
                        	nodeData.enterUrl = reqData.enterUrl;
                        	nodeData.otherUrl = reqData.otherUrl;
                        	nodeData.sort = reqData.sort;
                        	nodeData.imgPath = reqData.imgPath;
                        	nodeData.isVisible = reqData.isVisible;
                        	tree.updateNode(nodeData);
                        } else {
                        	$.fn.zTree.destroy("tree");
                        	$.fn.zTree.init($("#tree"), setting);
                            tree = $.fn.zTree.getZTreeObj("tree");
                        }
                        alert("保存成功！");
                    },
                    error : function(XMLHttpRequest, textStatus, errorThrown) {
                        alert("保存错误！");
                    }
                });
        	}
        	
        	$("#del").bind("click", function() {
        		var selData = tree.getSelectedNodes();
        		if (selData.length == 0) {
        			alert("请选择要删除的功能！");
        			return;
        		}
        		if (confirm("确定要删除吗？")) {
        			$.ajax({
                        type: "POST",
                        url: "<%=path%>/system/PowerSetting/del.json",
                        data: {id:selData[0].id},
                        success: function(data, textStatus) {
                            if (data == null || data.success != null && data.success == false) {
                                var str = "删除错误";
                                if (data != null && data.msg != null) str += "：" + data.msg;
                                alert(str);
                                return;
                            }
                            
                            $.fn.zTree.destroy("tree");
                            $.fn.zTree.init($("#tree"), setting);
                            tree = $.fn.zTree.getZTreeObj("tree");
                            
                            alert("删除成功！");
                        },
                        error : function(XMLHttpRequest, textStatus, errorThrown) {
                            alert("删除错误！");
                        }
                    });
        		}
        	});
        });
    </script>

	<div class="main-content-wrapper" style="padding: 10px 10px;">
		<div id="main-content">
			<div class="row">
				<div class="col-md-12">
					<div class="panel panel-default">
						<div class="panel-heading">
							<h3 class="panel-title">权限设置</h3>
						</div>
						<div class="row" style="width: 100%">
							<div class="col-md-2">
								<ul id="tree" class="ztree" style="width:30%; margin-left: 10px; margin-top: 20px; "></ul>
							</div>
							<!-- 这里 -->
							<div class="panel panel-default form-horizontal form-border" style="float: left;margin-top: 25px;width: 50%;">
								<div class="panel-heading">权限设置</div>
								<div class="panel-body form-horizontal form-border">
									<form>
						        <input type="hidden" id="id" value=""/>
						        <input type="hidden" id="parentId" value=""/>
								<div class="form-group clearfix">
		                            <label class="col-sm-2 control-label" style="width: 20.667%;">功能名称：</label>
		                            <div class="col-sm-7">
		                                <input type="text" placeholder="" value="" required="" id="name" name="name" class="form-control"/>
		                            </div>	
		                        </div>
		                        <div class="form-group clearfix">
                                    <label class="col-sm-2 control-label" style="width: 20.667%;">URL：</label>
                                    <div class="col-sm-7">
                                        <input type="text" placeholder="" value="" required="" id="enterUrl" name="enterUrl" class="form-control"/>
                                    </div>
                                </div>
                                <div class="form-group clearfix">
                                    <label class="col-sm-2 control-label" style="width: 20.667%;">其他URL：</label>
                                    <div class="col-sm-7">
                                        <textarea class="textarea form-control" rows="5" cols="20" 
		                                 id="otherUrl" name="otherUrl" 
		                                style="width: 100%; height: 80px"></textarea>
                                    </div>
                                </div>
                                <div class="form-group clearfix">
                                    <label class="col-sm-2 control-label" style="width: 20.667%;">显示顺序：</label>
                                    <div class="col-sm-7">
                                        <input type="text" placeholder="" value="" required="" id="sort" name="sort" class="form-control"/>
                                    </div>
                                </div>
                                <div class="form-group clearfix">
                                    <label class="col-sm-2 control-label" style="width: 20.667%;">图片路径：</label>
                                    <div class="col-sm-7">
                                        <input type="text" placeholder="" value="" required="" id="imgPath" name="imgPath" class="form-control"/>
                                    </div>
                                </div>
                                <div class="form-group clearfix">
                                    <label class="col-sm-2 control-label" style="width: 20.667%;">是否可见：</label>
                                    <div class="col-sm-7">
                                        <label class="radio-inline"> 
                                            <input class="icheck" type="radio" checked="" name="isVisible" value="1">显示
                                        </label> 
                                        <label class="radio-inline"> 
                                            <input class="icheck" type="radio" name="isVisible" value="2">不显示
                                        </label>
                                    </div>
                                </div>
                                <div class="form-group clearfix" align="center">
                                <label class="col-sm-2 control-label"></label>
                                  <div class="col-sm-7">
                                  		<button id="save" class="btn btn-primary" type="button">保存</button>
			                            
			                            <button id="saveSub" class="btn btn-primary" type="button">新增下级</button>
			                            
			                            <button id="rest" class="btn btn-primary" type="reset">重置</button>
			                            
	                                    <button id="del" class="btn btn-primary" type="reset">删除</button>
		                          </div>
		                        </div>
		                      </form>
								
								</div>
							</div>
							
	                     </div>   
	                        
	                        
	                        
	                        
	                        
                        </div>
					</div>
				</div>
			</div>
		</div>
	</div>
 <div style="padding:20px "></div>
	
