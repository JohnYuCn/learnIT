<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

	<link rel="stylesheet" type="text/css" href="<%=path %>/assets/plugins/easyui/themes/default/combo.css" />
	 <link rel="stylesheet" type="text/css" href="<%=path %>/assets/plugins/easyui/themes/default/combobox.css" />
	<script src="<%=path %>/assets/plugins/easyui/jquery.easyui.min.js"></script>
    <script src="<%=path %>/assets/plugins/ztree/js/jquery.ztree.all-3.5.min.js"></script>
   	<link  href="<%=path %>/assets/plugins/ztree/css/zTreeStyle.css" rel="stylesheet" />
    <script>
        $(document).ready(function() {
        	var setting = {
        			async: {
                        enable: true,
                        url: "<%=path %>/column/load.json"
                    },
        			view: {
        	            dblClickExpand: false,
        	            showLine: true,
        	            selectedMulti: false,
        	            fontCss : {color:"#999999"}
        	        },
        			data: {
        	            simpleData: {
        	                enable:true,
        	                idKey: "id",
        	                pIdKey: "bclassId",
        	                rootPId: "123"
        	            },
        	            key:{
        	            	name: "columnname"
        	            }
        	        },
        	        callback : {
        	        	onClick : function(event, treeId, treeNode) {
        	        		var url="";
        	        		if(treeNode.isParent || treeNode.id == 1){
        	        			url = "<%=path%>/column/findById/"+treeNode.id+".html";
        	        		}else{
        	        			url = "<%=path%>/column/columnSetting/"+treeNode.id+"/"+treeNode.bclassId+".html";
        	        		}
        	        		$("#tableDiv").load(url);
        	        	},
						onNodeCreated: function(e,nodeId ,node){
	        	        	var colName = node.id;
	        	        	if(colName == 1 ){
	        	        		node.columnname = "栏目根目录";
	        	        		tree.updateNode(node);
	        	        	}
	        	        }
        	        }
        	}
        	$.fn.zTree.init($("#tree"), setting);
        	var tree = $.fn.zTree.getZTreeObj("tree");
        });
        function refSc(){
        	 $("#tree").load("<%=path %>/column/columnLeft");
        }
    </script>
	<ul id="tree" class="ztree" style="width: 50%"></ul>