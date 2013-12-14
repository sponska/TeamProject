<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<script language="javascript" src="./resources/js/qascript.js"></script>
<head>
<link href="./resources/css/bootstrap.css" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<table width="680" height="396" border="0" align="center">
		<tr>
			<td colspan="3"><br> <br> <br></td>
		</tr>
		<tr>
			<td width="108" align="center">제목</td>
			<td colspan="2"><input class="span7" type="text"
				name="QAboaTitle" value="${qavo.QAboaTitle}" readonly="readonly"></td>
		</tr>
		<tr>
			<td align="center">내용</td>
			<td colspan="2"><textarea rows="20" class="span7"
					name="QAboaContent" readonly="readonly">${qavo.QAboaContent}</textarea></td>
		</tr>
		<tr align="right">
			<td colspan="3"><input type="button"
				onclick="QAupdate(${qavo.QAboaNum})" class="btn btn-primary"
				value="수정"> <input type="button"
				onclick="QAdelete(${qavo.QAboaNum})" class="btn btn-primary"
				value="삭제"> <input type="button" onclick="QAlist()"
				class="btn btn-primary" value="목록"></td>
		</tr>

		<br>
		<tr>
			<td align="center" colspan="3"><h2>덧 글</h2></td>
		</tr>
		<c:forEach var="qr" items="${clist}">
			<tr>
			<td>
				<b>${qr.getUserName()}
				<c:if test="${qr.userNum == userNum }">
						<a href="QAcommentDel?Commentseq=${qr.getRepNum() }&QAseq=${qavo.QAboaNum}">삭제</a>
					</c:if>
					</p>
					</td>

				<td colspan="1"><textarea class="span7" rows="2"
						readonly="readonly">${qr.getRepContent() }</textarea></td>

			</tr>
		</c:forEach>
		<form action="QACommentInsert" name="QAComment" method="get">
			<input type="hidden" name="QABoaNum" value="${qavo.QAboaNum }">
			<tr>
				<td align="center">${loginUserName}</td>

				<td><input class="span6" type="text" name="RepContent"></td>
				<td align="right"><input type="submit" class="btn btn-primary"
					value="덧글입력"></td>
			</tr>
		</form>

	</table>
</body>
</html>