<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script language="javascript">
function QAdeleteAc(passwd){
	if(document.qaDeleteAction.QAdelpwd.value == passwd ){
		document.qaDeleteAction.submit();
		window.close();
opener.window.location="QAlist";		
		
	}else if(document.qaDeleteAction.QAdelpwd.value == "" ){
		alert("비밀번호를 입력해주세요");
	}else{
	alert("비밀번호를 잘못입력하셨습니다.");
}
}
</script>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<form action="QABoardDeleteAction" name="qaDeleteAction">
		<table align="center">
			<tr>
				<td><input type="hidden" name="QAseq" value="${qavo.QAboaNum }">
					<input type="password" name="QAdelpwd"> <input
					type="button" value="삭제" onclick="QAdeleteAc(${qavo.userPwd})">
				</td>

				<td><input type="button" value="취소" onclick="QAclose()"></td>
			</tr>
		</table>
	</form>
</body>
</html>