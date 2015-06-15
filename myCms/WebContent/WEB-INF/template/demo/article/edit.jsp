<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Insert title here</title>
</head>
<body>
<form method="post" action="/tvcms/demo/article/save">
<input type="hidden" name="id" value="<c:out value="${article.id}"/>"/>
<div>标题：<input type="text" name="title" value="<c:out value="${article.title}"/>"/></div>
<div>创建时间：<c:out value="${article.createTime}"/></div>
<div>内容：<input type="text" name="content" value="<c:out value="${article.content}"/>"/></div>
<input type="submit" value="提交"/>
</form>
</body>
</html>