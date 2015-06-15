<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

	<!-- 	<title>内容管理</title> -->
		<jsp:include page="../login/common.jsp"></jsp:include>

	<link rel="stylesheet" href="<%=path %>/assets/plugins/ztree/css/zTreeStyle.css">
    <script src="<%=path %>/assets/plugins/ztree/js/jquery.ztree.all-3.5.min.js"></script>
		<!-- begin ztree -->
		<!-- end ztree  -->
		<script>
		
		$(document) .ready(
			function() {
				var setting = {
					async : {
						enable : true,
						url : "<%=path %>/cont/load.json"
					},
					view : {
						dblClickExpand : false,
						showLine : true,
						selectedMulti : false
					},
					data : {
						simpleData : {
							enable : true,
							idKey : "id",
							pIdKey : "bclassId",
							rootPId : ""
						},
						key : {
							name : "columnname"
						}
					},
					view : {
						fontCss : {
							color : "#999999"
						}
					},
					callback : {
						onClick : function(event, treeId, treeNode) {
						if (treeNode.isParent) {
							tree.expandNode(treeNode, true);
						} else {
							var url= "<%=path %>/cont/findById/"
									+ treeNode.id + ".html";
							$("#tableDiv").load(url);
									
						}
						
					},
					onNodeCreated : function(e, nodeId, node) {
						var s = node.columnname;
						if (s == '根目录') {
							node.columnname = "内容根目录";
							tree.updateNode(node);
						}
					}
					}
				}

				$.fn.zTree.init($("#tree"), setting);
				var tree = $.fn.zTree.getZTreeObj("tree");
	});
	function refSc(){
		 $("#tree").load("<%=path %>/cont/contLeft");
	}
	</script>
	<ul id="tree" class="ztree" style="width: 50%"></ul>

		
