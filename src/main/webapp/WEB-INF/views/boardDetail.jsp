<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="./resources/css/bootstrap.css" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

<script type="text/javascript">
	//목록
	function boalist(){
		location.href="boardList";
	}

</script>
</head>
<body>
<center>
<p>
<strong>게시판 내용</strong>
<form method="get" action="boardListaction">
<div class="container">
<table width="1200"> 
	<tr>
		<td colspan="4" align="right">
		<input type="button" class="btn" name="list" value="목록" onclick="boalist()"/>
	</td>
	</tr>
	</table>
	<table class="table table-hover" width="800" height="100" border="0" align="center">
	<tr class="warning">
		<td width="50"> 글번호 <br> ${vo.boanum }</td>
		<td width="100"> 제목 <br>${vo.boatitle } </td> 
		<td width="200"> 작성일<br>  ${vo.boadate }</td>
		<tD width="50"> 조회<br>${vo.boahit }</td>
	</tr>
		
	<tr>
		<td colspan="4"><textarea rows="20" class="span12" readonly="readonly" >${vo.boacontent }
		</textarea>
		
		</td>	
	</tr>
		</table>
		<table width="1200"> 
	<c:if test="${admincheck=='y'}">
	<tr>
		<td colspan="2" align="left">
		▲다음글<a href="boardListaction?seq=${next.boanum }">${next.boatitle }</a>
		<br>
		▼이전글<a href="boardListaction?seq=${prev.boanum }">${prev.boatitle }</a>
		</td>
		<td colspan="2" align="right">
		<input type="button" class="btn" value="수정" onclick="javascript:window.location='boaUpdate?seq=${vo.boanum}'"/>&nbsp;
		<input type="button" class="btn" value="삭제" onclick="javascript:window.location='boardDelete?seq=${vo.boanum}'"/>&nbsp;
		</td>
		</tr>
		</c:if>

</table>
</div>
</form>
</center>

</body>
</html>