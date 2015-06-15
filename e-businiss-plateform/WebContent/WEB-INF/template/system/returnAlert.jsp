<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


    <!-- <title>返回消息</title> -->
    <script type="text/javascript">
    	var returnString = "${returnString}";
    
    	
    	if(returnString!=null || returnString!=""){
    		alert(returnString);
    	    $("#tableDiv").load('<%=path%>${url}');
    	}else{
    		alert("提交成功！");
    		 //clickMenu('${url}');
        	 $("#tableDiv").load('<%=path%>${url}');
        	 //$("#contentDiv").load('<%=path%>${url}');
    	}
    </script>


