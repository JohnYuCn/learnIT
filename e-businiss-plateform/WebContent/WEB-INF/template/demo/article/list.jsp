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
<a href="/tvcms/demo/article/new.html">新建</a>
<table border="1">
  <tr>
    <td align="center">名称</td>
    <td align="center">创建时间</td>
    <td align="center">创建人</td>
    <td align="center">操作</td>
  </tr>
  <c:forEach var="article" items="${list}">
  <tr>
    <td><c:out value="${article.title}"/></td>
    <td><c:out value="${article.createTime}"/></td>
    <td><c:out value="${article.createUserId}"/></td>
    <td><a href="/tvcms/demo/article/view/<c:out value="${article.id}.html"/>">查看</a>&nbsp;&nbsp;<a href="/tvcms/demo/article/edit/<c:out value="${article.id}.html"/>">修改</a></td>
  </tr>
  </c:forEach>
</table>
</body>
</html>