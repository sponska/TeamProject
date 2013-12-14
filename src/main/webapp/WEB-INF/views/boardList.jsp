<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript">
function insert() {
	location.href="boardInsert";	
}
function boalist() {
	location.href = "boardList";
}
</script>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>NOTICE</title>
</head>
<body>
<center>
<h1>NOTICE</h1>
<br>
${time}
<br>

<table width="1180" border="0">
	<tr>
	<td align="right">
			<c:if test="${admincheck=='y'}">
			<input type="button" class="btn" value="글쓰기" onclick="insert()"> 
			</c:if>
		</td>
	</tr>

	
</table>

<div class="container"> 
<table class="table table-hover" border="0">
	
	<tr class="warning">
		<td width="50">번호</td>
		<td width="300">제목</td>
		<td width="100">등록일</td>
		<td width="50">조회</td>
	</tr>

	<c:forEach var="vo" items="${list}">
	
	<tr>
		<td width="50">${vo.boanum }</td>
		<td width="300"><a href="boardListaction?seq=${vo.boanum }">${vo.boatitle }</a>
			<c:if test="${vo.newDate==time}">
				<img src="./resources/img/icon_new.gif">
			</c:if>
		</td>
		<td width="100">${vo.boadate }</td>
		<td width="50">${vo.boahit }</td>
	</tr>
	
	
	</c:forEach>
	<tr align="right">
		<td colspan="4" align="right">
			<input type="button" class="btn" name="list" value="목록" onclick="boalist()">
		</td>
	</tr>
	</table>
	</div>
	<table border="0">
			<form name="sch" action="srch" method="post">
			<tr>
				<td colspan="0" align="right"><input class="span3" type="text" name="search"/>
				<input type="submit" class="btn" value="검색"></td>
			</tr>
			</form>
		</table>
			<div class="pagination">
	<table>
	<tr>
	<td colspan="4" align="center">
	<c:forEach var="pages" begin="${start }" end="${end }">
	<c:choose>
	<c:when test="${pages==current }">
	[${pages }]
	</c:when>
	<c:otherwise>
	<a href="boardList?page=${pages }">[${pages }]</a>
	</c:otherwise>
	</c:choose>
	</c:forEach>
	</td>
	</tr>
</table>
</div>
</center>
</body>
</html>

 