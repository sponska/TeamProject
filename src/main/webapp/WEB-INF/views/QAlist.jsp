<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body border="1" align="center" cellspacing="3" cellpadding="5">
	<center>
		<h3>글목록</h3>
		<div class="container">
		<table class="table table-hover" border="0" align="center">
			<td align="left"><a href="QAinsert">글쓰기</a></td>
			<tr class="warning">
				<td align="center" width="50">번호</td>
				<td align="center" width="250">제목</td>
				<td align="center" width="50">조회수</td>
				<td align="center" width="100">작성일</td>
				<td align="center" width="100">작성자</td>
			</tr>
			<c:forEach var="QAVo" items="${list }">
				<tr>
					<td>${QAVo.QAboaNum }</td>
					<td><a href="QAlistAction?QAseq=${QAVo.QAboaNum }">${QAVo.QAboaTitle }</a>
					<c:if test="${QAVo.QAboaHit>=10 }">
						<img src="./resources/img/hot-icon.gif" width="1px" height="10px">
					</c:if>
					</td>
					<td>${QAVo.QAboaHit }</td>
					<td>${QAVo.QAboaDate }</td>
					<td>${QAVo.userName }</td>
				</tr>
			</c:forEach>
		</table>
		<table border="0">
			<form name="sch" action="search" method="post">
			<tr>
				<td colspan="5" align="center"><input class="span6" type="text" name="search"/>
				<input type="submit" class="btn" value="검색"></td>
			</tr>
			</form>
		</table>
		</div>

 <div class="pagination">
   <ul>
		<c:if test="${startPage>10 }">
			<li class="disabled"><a href="QAlist?pageNum=${ startPage - 10 }${pageReturn}">[이전]</a></li>
		</c:if>

		<c:forEach var="i" begin="${startPage}" step="1" end="${endPage}">
			<li><a href="QAlist?pageNum=${ i }${pageReturn}">[${ i }]</a></li>
		</c:forEach>
		<c:if test="${endPage < pageCount}">
			<li><a href="QAlist?pageNum=${ startPage + 10 }${pageReturn}">[다음]</a></li>
		</c:if>
 </ul>
</div>
	</center>
</body>
</html>