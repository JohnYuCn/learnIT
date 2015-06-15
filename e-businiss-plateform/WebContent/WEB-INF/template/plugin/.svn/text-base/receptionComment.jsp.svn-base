<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="/tvcmsTagLib" prefix="tvcms"%>
<!-- <title><tvcms:systemSetting attr="websiteName" /></title> -->
<meta name="keywords" content="<tvcms:systemSetting attr="keyword"/>">
<meta name="description" content="<tvcms:systemSetting attr="description"/>">
<link rel="stylesheet" href="<tvcms:systemSetting attr="root"/>/assets/yiyuan/css/sty.css" />
<script type="text/javascript" src="<tvcms:systemSetting attr="root"/>/assets/yiyuan/js/jquery-1.7.2.js"></script>
<script type="text/javascript" src="<tvcms:systemSetting attr="root"/>/assets/yiyuan/js/myfocus-2.0.4.min.js"></script>
<script type="text/javascript" src="<tvcms:systemSetting attr="root"/>/assets/yiyuan/js/script.js"></script>
<script type="text/javascript">myFocus.set({id:'myFocus',pattern:'mF_kdui',width:1371});</script>
<script type="text/javascript">
	function subForm(){
		clickMenu('/plugin/messageBoardController/addComment','form');
	}
</script>

<tvcms:includ var="top1" />
<tvcms:includ var="daohang" />
<div class="clearfix mar0 w1000 list">
<div class="pj-title rel"><h3 class="abs">用戶評價</h3></div>
<tvcms:comments all="ss">
<dl class="pl-clist">
	<dt><tvcms:comment attr="title"/></dt>
    <dd><tvcms:comment attr="content"/></dd>
    <p>評論時間：<b><tvcms:comment attr="reviewTime"/></b></p>
    <p>評論人:<b><tvcms:comment attr="member"/></b></p>
</dl>
</tvcms:comments>
<form action="<tvcms:systemSetting attr="root"/>/plugin/messageBoardController/addComment" method="post" id="form">
<div class="pl-text-wrap clearfix">
	<div class="pl-text-tit rel"><h3>發表評論</h3><p class="abs">文明上網，理性發言，請遵守用戶評論服務協議</p></div>
    <div class="rel">
        <input type="text" class="pl-text" value="填寫標題:" onfocus="if (value =='填寫標題:'){value =''}" onblur="if (value ==''){value='填寫標題:'}" name="title"/>
        <span class="text-area-span clearfix">
            <textarea class="text-area" onfocus="if (value =='期待您的評價!'){value =''}" onblur="if (value ==''){value='期待您的評價!'}"   name="content">期待您的評價!</textarea>
        </span>
    </div>
    <select name="isNull" style="margin-top:10px;">
	  <option value="1">使用匿名評論</option>
	  <option value="2" id="no">不使用匿名</option>
	</select>
    <button type="button" class="button fabiao" onclick="subForm()">發表評論</button>    
</div>
</form>

</div>
<tvcms:includ var="footer" />

<script type="text/javascript">


$(function(){
	var memberName = $("#usrName").html();
	if(memberName=="0"||memberName=="" ){
       $("#no").hide();
	}
	
	$(".fabiao").click(function(){
		if($(".pl-text").val()=="填寫標題:"){
			alert("标题不能为空!");
			return false;
		}else if($(".text-area").val()=="期待您的評價!"){
			alert("内容不能为空!");
			return false;
		}
		
	});
	
});
</script>
