<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%  String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
	String port = ":"+request.getServerPort();
	String scheme = request.getScheme()+"://";
%>
    <!-- <title>公用jsp</title> -->
	<script type="text/javascript">
		
	//2015.4.7  wangchuang   修改分页提交方式  异步提交
	function upPage(){
		   var currPage = ${paging.paging.currPage};
		   if(currPage == 1){
		   		return ;
		   }
			var pageSize = document.getElementById("pageSize"); 
			if(pageSize == null){
				pageSize = 20;
			}
			var start = document.getElementById("start").value;
			//设置分页数据到表单
			$("#currPage").val(parseInt(currPage)-2);
			$("#start").val(start-pageSize);
			//异步提交表单
			var url = ""+document.forms[0].action;
			var path="<%=basePath%>";
			var port = "<%=port%>";
			path = path.replace(port,"");//删除basePath中的端口号
			url=url.replace(path,"");//删除前路径  取实际路径
			var scheme = "<%=scheme%>";
			url=url.replace(scheme,"");//删除残留的http:// 或 https:// 协议  没有则无视
			var id=""+document.forms[0].id;
			clickMenu(url,id);
			
		}
		function nextPage(){
		   var currPage = ${paging.paging.currPage};
		   var countPage = ${paging.paging.countPage};
		   
		    
		   if(currPage >= countPage){
		   		return ;
		   }
		   
			var pageSize = document.getElementById("pageSize"); 
			if(pageSize ==null){
				pageSize = 20;
			}
			var start = document.getElementById("start").value;
			document.getElementById("start").value = parseInt(start)+parseInt(pageSize);
			document.getElementById("currPage").value = currPage;
			var url = ""+document.forms[0].action;
			var path="<%=basePath%>";
			var port = "<%=port%>";
			path = path.replace(port,"");//删除basePath中的端口号
			url=url.replace(path,"");//删除前路径  取实际路径
			var scheme = "<%=scheme%>";
			url=url.replace(scheme,"");//删除残留的http:// 或 https:// 协议  没有则无视
			var id=""+document.forms[0].id;
			clickMenu(url,id);
			
		}
		
		function firstPage(){
			document.getElementById("start").value = 0;
			document.getElementById("currPage").value = 0;
			$("#currPage").val(0);
			$("#start").val(0);
			
			var url = ""+document.forms[0].action;
			var path="<%=basePath%>";
			var port = "<%=port%>";
			path = path.replace(port,"");//删除basePath中的端口号
			url=url.replace(path,"");//删除前路径  取实际路径
			var scheme = "<%=scheme%>";
			url=url.replace(scheme,"");//删除残留的http:// 或 https:// 协议  没有则无视
			var id=""+document.forms[0].id;
			clickMenu(url,id);
		}
		
		function lastPage(){
			var pageSizeObj = document.getElementById("pageSize"); 
			var pageSize;
			if(pageSizeObj ==null){
				pageSize = 20;
			}else{
				pageSize = pageSizeObj.value;
			}
			var countPage = "${paging.paging.countPage}";
			$("#currPage").val(parseInt(countPage-1));
			$("#start").val(parseInt((countPage-1)*pageSize));
			
			var url = ""+document.forms[0].action;
			var path="<%=basePath%>";
			var port = "<%=port%>";
			path = path.replace(port,"");//删除basePath中的端口号
			url=url.replace(path,"");//删除前路径  取实际路径
			var scheme = "<%=scheme%>";
			url=url.replace(scheme,"");//删除残留的http:// 或 https:// 协议  没有则无视
			var id=""+document.forms[0].id;
			clickMenu(url,id);
			
			
			//$("#tableDiv").load(document.forms[0].action,$('#'+document.forms[0].id).serializeArray());
				/*{
				start: parseInt((countPage-1)*pageSize),
				currPage : parseInt(countPage-1)
				});*/
		}
	</script>
         <div class="panel-body">
             <table id="example" class="table table-striped table-bordered" cellspacing="0" width="100%">
                 <tr>
                                                   共${paging.paging.totalCount}条     分${paging.paging.countPage}页    当前第${paging.paging.currPage}页　
                 <c:if test="${paging.paging.start == 0}">首页　上一页　</c:if>
                 <c:if test="${paging.paging.start != 0}">
                 		<a href="javascript: firstPage();">首页</a>　
                 		<a href="javascript: upPage();" >上一页   </a>　
                 </c:if>
                 <c:if test="${paging.paging.countPage == paging.paging.currPage}">下一页　尾页　</c:if>
                 <c:if test="${paging.paging.countPage != paging.paging.currPage}">
                 	<a href="javascript: nextPage();" >下一页</a>　
                 	<a href="javascript: lastPage();">尾页</a></tr>
                 </c:if>
             </table>
         </div>
