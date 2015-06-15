<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
    <!-- <title>SpaceLab</title> -->
    
	
    <link rel="stylesheet" href="<%=path %>/assets/plugins/ztree/css/zTreeStyle.css">
    <script src="<%=path %>/assets/plugins/ztree/js/jquery.ztree.all-3.5.min.js"></script>
    
    <script>
        $(document).ready(function() {
        	var setting = {
        			async: {
                        enable: true,
                        url: "<%=path %>/template/tree_load.json",
                        autoParam:["id"]
                    },
        			view: {
        	            dblClickExpand: false,
        	            showLine: true,
        	            selectedMulti: false,
        	            fontCss:{color:"#999999"}
        	        },
        			data: {
        	            
        	        },
        	        callback : {
        	            onClick : function(event, treeId, treeNode) {
        	        		var id = treeNode.id;
        	        		if (id.charAt(0) == 'c') {
        	        		    var cid = id.substring(1);
        	        		    $("#tableDiv").load( "<%=path %>/template/list.html?cid=" + cid + "&treePid=" + id);
        	        		} else if (id.charAt(0) == 't') {
        	        		    var tid = id.substring(1);
        	        		    var treePid = (id != null) ? tree.getNodeByParam("id", id, null).parentId : "";
        	        		    $("#tableDiv").load( "<%=path %>/template/template.html?id=" + tid + "&treePid=" + treePid );
        	        		}
        	        	}
        	        }
        	}
        	
        	$.fn.zTree.init($("#tree"), setting);
        	var tree = $.fn.zTree.getZTreeObj("tree");
        	
        	$("#add").bind("click", function() {
        	    var selData = tree.getSelectedNodes();
        	    if (selData != null && selData.length > 0) selData = selData[0];
        	    else selData = null;
        	    var treeNodeId = (selData == null) ? null : selData.id;
        	    var pid = "";
        	    if (treeNodeId != null && treeNodeId != "root" && treeNodeId.charAt(0) == 'c') {
        	        pid = treeNodeId.substring(1);
        	    }
        	    debugger;
        	    var treePid = (treeNodeId != null) ? tree.getNodeByParam("id", treeNodeId, null).parentId : "";
        	    $("#tableDiv").load( "<%=path %>/template/editCatalog.html?op=add&pid=" + pid + "&treePid=" + treePid );
        	});
        	
        	$("#mod").bind("click", function() {
        	    var selData = tree.getSelectedNodes();
        	    if (selData != null && selData.length > 0) selData = selData[0];
        	    else selData = null;
        	    var treeNodeId = (selData == null) ? null : selData.id;
        	    debugger;
        	    if (selData != null && treeNodeId.charAt(0) == 'c') {
        	        var id = treeNodeId.substring(1);
        	        if (id != 1 && id != 2 && id != 3 && id != 4) {
        	            var treePid = (treeNodeId != null) ? tree.getNodeByParam("id", treeNodeId, null).parentId : "";
        	            $("#tableDiv").load( "<%=path %>/template/editCatalog.html?op=mod&id=" + id + "&treePid=" + treePid );
        	        }
        	    }
        	});
        	
        	window.refreshTree = function(treePid) {
        	    var node = tree.getNodeByParam("id", treePid);
        	    if (node != null) tree.reAsyncChildNodes(node, "refresh");
        	}
        });
    </script>

	<ul id="tree" class="ztree"></ul>

