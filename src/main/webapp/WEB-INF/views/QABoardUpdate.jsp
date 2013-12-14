<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<script language="javascript" src="./resources/js/qascript.js" ></script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<form method="post" name="QABoardUPform" action="QABoardUpdateAction" onsubmit="return QApwdCheck(${qavo.userPwd})">
		<table width="658" height="396" border="0" align="center">
			<tr>
				<td colspan="3"><br>
				<br>
				<br> <input type="hidden" name="QAboaNum"
					value="${qavo.QAboaNum}"></td>
			</tr>
			<tr>
				<td width="108" align="center">제목</td>
				<td colspan="2"><input class="span6" type="text"
					name="QAboaTitle" value="${qavo.QAboaTitle}"></td>
			</tr>
			<tr>
				<td align="center">내용</td>
				<td colspan="2"><textarea rows="20" class="span6"
						name="QAboaContent">${qavo.QAboaContent}</textarea></td>
			</tr>
			<tr>
				<td width="70" align="center">비밀번호</td>
				<td width="330"><input type="password" size="8" maxlength="12"
					name="QApwd"></td>
			</tr>
			<tr>
				<td colspan="2" align="center" width="216"><input type="submit"
					class="btn btn-primary" value="완료"> 
					<input type="button"
					onclick="QAback()" class="btn btn-primary" value="취소"></td>
			</tr>
		</table>
	</form>
</body>
</html>