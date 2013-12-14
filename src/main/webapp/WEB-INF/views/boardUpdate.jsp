<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>수정</title>
<script type="text/javascript">
function boalist(){
	location.href="boardList";
}
</script>
</head>
<body>
<form method="get" action="boardUpdateaction">
	<table width="640"border="0" align="center">
		<tr>
			<td width="50">제목</td>
			<td align="left">
			<input type="hidden" name="boanum" value="${vo.boanum }" />
				<input type="text" class="span6"  name="boatitle" value="${vo.boatitle }"/></td> <!-- 제목 -->
		</tr>
		<tr>
			<td width="50">내용</td>
			<td align="left">
				<textarea rows="20" class="span6" name="boacontent">${vo.boacontent }</textarea></td>
		</tr>
		</table>
		<table width="600" border="0" align="center">
		<tr>
			<td colspan="0" align="right">
				<input type="submit" class="btn btn-primary" value="수정"/>&nbsp;
				<input type="reset" class="btn" value="취소"/>&nbsp;
				<input type="button" class="btn" name="list" value="목록" onclick="boalist()"/>
		</td>
		</tr>
	
	</table>
</form>
</body>
</html>