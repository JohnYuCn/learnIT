<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%
	String path = request.getContextPath();
%>
		<!-- <title>商品列表</title> -->
		<div class="main-content-wrapper">
			<div id="main-content">
				<div class="row">
					<div class="col-md-12">
						<form action="">
							<table>
								<tr>
									<td>商品编号:</td>
									<td><input type="text" id="serial" name="serial" ></td>
									<td colspan="2"><input type="radio" name="isSale" id="saling">上架</input><input type="radio" name="isSale" id="nosale">下架</input></td>
								</tr>
								<tr>
									<td>最后一次修改时间段:</td>
									<td><input type="text" class="form-control" id="writtenTime1"
												value="<fmt:formatDate value="${messageBoard.writtenTime}"
																pattern="yyyy-MM-dd HH:mm:ss" />"></td>
									<td><input type="text" class="form-control" id="writtenTime2"
												value="<fmt:formatDate value="${messageBoard.writtenTime}"
																pattern="yyyy-MM-dd HH:mm:ss" />"></td>
								</tr>
								<tr>
									<td>分类</td>
								</tr>
								
							</table>
						</form>
					</div>
				</div>
			</div>
		</div>


