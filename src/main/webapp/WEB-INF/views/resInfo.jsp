<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link type="text/css" href="./resources/css/calendar/jquery-ui-1.10.3.custom.css" rel="stylesheet" />
<script type="text/javascript" src="./resources/js/calendar/jquery-1.9.1.min.js"></script>    
<script type="text/javascript" src="./resources/js/calendar/jquery-ui-1.10.3.custom.min.js"></script>
<script type="text/javascript" src="./resources/js/calendar/jquery.ui.datepicker-ko.js"></script>
<script type="text/javascript" src="./resources/js/calendar.js"></script>
<body>

<form class="navbar-form" method="get" action="resUserUpdate" name="resInfo">
<table align="center">
	<tr>
		<td colspan="2" align="center">
		
		<c:if test="${message=='differentUser'}">
			<div class="alert alert-error">
	  			<button type="button" class="close" data-dismiss="alert">&times;</button>
  				<strong>�ٸ������!!</strong><br> �ٸ� ������� ���� ������ ���Ǽ� �����ϴ�.
			</div>
		</c:if>
		<c:if test="${message=='updateSuccess'}">
			<div class="alert alert-info">
	  			<button type="button" class="close" data-dismiss="alert">&times;</button>
  				<strong>���������Ϸ�!</strong><br> ������ �����Ǿ����ϴ�.
			</div>
		</c:if>
		
		</td>
	</tr>
	<tr>
		<td colspan="2" align="center"><h3>�� �� �� ��</h3></td>
	</tr>
	<tr><td><br></td></tr>
	<tr>
		<td align="right">ȸ �� �� ��</td>
		<td><input class="span2" type="text" name="userName" readonly="readonly" value="${list.userName }">&nbsp;
		<input type="hidden" name="resNum" value="${list.resNum }">
		<input type="hidden" name="userNum" value="${list.userNum }">
		</td>
	</tr>
	<tr><td><br></td></tr>
	<tr>
		<td align="right">�� �� ȣ</td>
		<td><select class="span2" name="roomNum" >
			<option value="${list.roomNum }">${list.roomNum }</option>
			<optgroup label="2��"> 
			<option value="201">201</option>
			<option value="202">202</option>
			<option value="203">203</option>
			<option value="204">204</option>
			</optgroup>
			<optgroup label="3��">
			<option value="301">301</option>
			<option value="302">302</option>
			<option value="303">303</option>
			<option value="304">304</option>
			</optgroup>
			<optgroup label="4��">
			<option value="401">401</option>
			<option value="402">402</option>
			<option value="403">403</option>
			<option value="404">404</option>
			</optgroup>
			<optgroup label="5��">
			<option value="501">501</option>
			<option value="502">502</option>
			<option value="503">503</option>
			<option value="504">504</option>
			</optgroup>
		</select></td>
	</tr>
	<tr>
		<td align="right">�� �� �� ¥</td>
		<td><input class="span2" type="text" name="resDate" value="${list.resDate }" id="datepicker1">		
		</td>
	</tr>
	<tr>
		<td align="right">�� ȭ �� ȣ</td>
		<td><input class="span2" type="text" name="userTel" value="${list.userTel }" readonly="readonly"></td>
	</tr>
	<tr>
		<td align="right">�� �� ��</td>
		<td><input class="span2" type="text" name="userEmail" value="${list.userEmail }" readonly="readonly"/>
		</td>
	</tr>
	<tr>
		<td align="right">�� �� �� ��</td>
		<td><input class="span2" type="text" name="resSum" value="${list.resSum }" readonly="readonly"/>
		</td>
	</tr>
	<tr>
		<td align="right">�� �� �� ��</td>
		<td><input class="span2" type="text" name="resTime" value="${list.resTime }" readonly="readonly"/>
		</td>
	</tr>
	<tr><td><br></td></tr>
	<tr>
		<td colspan="2" align="center">
		<input class="btn btn-primary" type="submit" value="������������" />&nbsp;&nbsp;
		<input class="btn btn-warning" type="button" value="�������" onclick="location.href='resDel?resNum=${list.resNum}'"/>&nbsp;&nbsp;
		<input class="btn" type="button" value="���" onclick="location.href='main'"/>
		</td>
	</tr>
	
</table>
</form>
</html>