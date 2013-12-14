<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>
<link href="./resources/css/bootstrap.css" rel="stylesheet">
<style type="text/css">
b {
color: navy;
}
c{
color: orange;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body >
<%session.getAttribute("userNum"); %>
	<center>
		<h2><b>Q & A</b></h2>

<table border="1" bgcolor="white">
			<form action="QAinsertAction" method="post">
				<tr>
					<th>글쓴이</th>
					<td ><input class="span2" type="text" value="${vo.userName}"  name="userName" readonly="readonly"></td>
				</tr>
				<tr>
					<th>제 목</th>
					<td colspan="3" ><input "span4" type="text" name="QAboaTitle" size="55"></td>
				</tr>
				<tr>
					<th>내 용</th>
					<td colspan="3"><textarea rows="10" cols="50" name="QAboaContent"></textarea></td>
				</tr>
				<tr>
					<th>비밀번호</th>
					<td colspan="3"><input "span2" type="password" value="${vo.userPwd }" name="userPwd" size="57"></td>
				<tr>
					<td colspan="4" align="center">
					<input class="btn btn-primary"type="submit" value="등록하기" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
					<input class="btn" type="reset" value="취소" /></td>
				</tr>
			</form>
		</table>
	</center>
</body>
</html>