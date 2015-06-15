<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%    
String path = request.getContextPath();
 %>
<!-- <title>搜索</title> -->
	<script type="text/javascript">
		$(document).ready(function() {
			$("#form").bind("submit", function() {
				$("#currPage").attr("value", 1);
			});
			
		});
	</script>
<div class="main-content-wrapper">
<div id="main-content">
    
    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">搜索</h3>
                </div>
                <div class="panel-body">
                    <form id="form" class="form-horizontal form-border" method="post" action="">
                        <input type="hidden" id="pageSize" name="pageSize" value="${searchResult.pageSize}" />
                        <input type="hidden" id="currPage" name="currPage" value="${searchResult.currPage}" />
                        <div class="form-group">
                            <label class="col-sm-3 control-label">关键字：</label>
                            <div class="col-sm-6">
                                <input type="text" value="${searchResult.keyword}" required="" 
                                	id="keyword" name="keyword" class="form-control">
                            </div>
                            <div class="col-sm-3">
                            <button id="searchBtn" class="btn btn-primary" type="submit">搜索</button>
                            </div>
                        </div>
					</form>
						</div>
					</div>
				</div>
				<c:if test="${searchResult.keyword != null}">
				<div class="panel-body">
				为您找到相关结果约${searchResult.totalHit}个<br/><br/>
				<c:forEach var="content" items="${searchResult.contents}">
				<a href="<%=path %>${content.url}" target="blank">${content.title}</a><br/>
				${content.body}<br/><br/>
				</c:forEach>
				
				<br/>
<script type="text/javascript">
var keywords = "${searchResult.keyword}";
function numPage()  {
    var first = 0;//开始页码 
    var tail = 0;//结束页码 
    var now = ${searchResult.currPage};//当前页 
    var max = 0;//总页数 
    var center = 5;//最低显示页数的一半
    var pageSize = ${searchResult.pageSize};
    var totalHits = ${searchResult.totalHit};
    if (totalHits > 0) {
    	max = Math.ceil(totalHits * 1.0 / pageSize);
    }
   
    if (now < center && max > center * 2) { 
        first = 1; 
        tail = center * 2; 
    } else if (now < center && max <= center*2) { 
        first = 1; 
        tail = max; 
    } else if (now == center && max <= center*2) { 
        first = 1; 
        tail = max; 
    } else if (now == center && max >= center*2) { 
        first = 1; 
        tail = now + center;
    } else if (now > center && (now + center) > max) { 
        first = max - 2*center + 1;
        if (first <= 0) first = 1;
        tail = max;
    } else if (now > center && (now + center) <= max) { 
        first = now - center; 
        tail = now + center - 1; 
    } 
    if (now > 1) { 
        document.write("<a href='javascript:void(0)' onclick='submitForm(1)'>首页</a>   "); 
        document.write("<a href='javascript:void(0)' onclick='submitForm("+(now-1) + ")'>上一页</a>   "); 
    } 
    if (max != 1) { 
        for (var i = first; i <= tail; i++) { 
        if (now != i) 
            document.write("<a href='javascript:void(0)' onclick='submitForm("+i+")'>["+i+"]"+"</a>   "); 
        else 
            document.write(now+"   "); 
        } 
    } 
    if (now < max) { 
        document.write("<a href='javascript:void(0)' onclick='submitForm("+(now+1)+")'>下一页</a>   ");
    }
}
numPage();
function submitForm(currPage) {
	document.getElementById("currPage").value = currPage;
	document.getElementById("keyword").value = keywords;
	document.getElementById("form").submit();
}
				</script>
				</div>
				</c:if>
			</div>
		</div>
		</div>
