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
		alert("��й�ȣ�� �Է����ּ���");
	}else{
	alert("��й�ȣ�� �߸��Է��ϼ̽��ϴ�.");
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
					type="button" value="����" onclick="QAdeleteAc(${qavo.userPwd})">
				</td>

				<td><input type="button" value="���" onclick="QAclose()"></td>
			</tr>
		</table>
	</form>
</body>
</html>