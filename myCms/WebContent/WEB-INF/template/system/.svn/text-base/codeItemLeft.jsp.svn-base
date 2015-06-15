<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path=request.getContextPath();
%>


<!-- <title>服务项目左侧树状</title> -->

    <link rel="stylesheet" href="<%=path %>/assets/plugins/ztree/css/zTreeStyle.css">
    <script src="<%=path %>/assets/plugins/ztree/js/jquery.ztree.all-3.5.min.js"></script>
    <script>
        $(document).ready(function() {
        	var setting = {
        			async: {
                        enable: true,
                        url: "<%=path%>/system/load.json"
                    },
        			view: {
        	            dblClickExpand: false,
        	            showLine: true,
        	            selectedMulti: false
        	        },
        			data: {
        	            simpleData: {
        	                enable:true,
        	                idKey: "id",
        	                pIdKey: "superiorId",
        	                rootPId: ""
        	            },
        	            key:{
        	            	name: "itemsName"
        	            	
        	            }
        	        },
        	        view: {
						fontCss : {color:"#999999"}
					},
        	        callback : {
						
        	        	onClick : function(event, treeId, treeNode) {
        	        		
        	        		$("#tableDiv").load("<%=path %>/system/codeItemRight/"+treeNode.id+".html");
        	        	
        	        	},
        	        	onNodeCreated: function(e,nodeId ,node){
        	        		var colName = node.id;
        	        		if(colName == 1 ){
        	        			node.columnname = "项目根目录";
        	        			tree.updateNode(node);
        	        		}
        	        	}
        	        }
        	}
        	
        	$.fn.zTree.init($("#tree"), setting);
        	var tree = $.fn.zTree.getZTreeObj("tree");
        });
        function refSc(){
        	 $("#codeTree").load("<%=path%>/system/codeItemLeft");
        }
    </script>
<div class="panel-default" style="position:relative;">
	<div class="panel-heading" style="padding: 15px;">
		<h3 class="panel-title">栏目</h3>
	</div>
	<div class="clearfix" style="position: absolute; top:13px; right:18px;">
		<a href="javascript:;" type="button" id="refSc" onclick="refSc()" style="font-size:16px;">刷新</a>
	</div>
</div>

	<ul id="tree" class="ztree" style="width:50%"></ul>
	<script src="<%=path %>/assets/plugins/bootstrap/js/bootstrap.min.js"></script>
	<script src="<%=path %>/assets/js/application.js"></script>
