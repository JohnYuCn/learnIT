<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%out.print("hello...."); %>
<form action="login" method="post">
	名字：<input name="cname"/><br/>
	薪水：<input type="text" name="salary"/><br/>
	性别：<input name="sex" type="radio" value="true" checked="checked"/>男
	<input name="sex" type="radio" value="false"/>女<br/>
	爱好：<input  name="favs" type="checkbox" value="football" checked="checked">足球
	<input name="favs" type="checkbox" value="basketball" checked="checked">蓝球<br/>
	<input type="submit"/>
</form>

</body>
</html>