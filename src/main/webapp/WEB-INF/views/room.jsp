<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>

<meta name = "keywords" content = "" />
<meta name = "description" content = "" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1, minimum-scale=1 user-scalable=no">

<link href='http://fonts.googleapis.com/css?family=Open+Sans:300,400,700' rel='stylesheet' type='text/css'>

<link href="./resources/css/floorcss/demo.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>

<script type="text/javascript" 	src="./resources/js/jquery.smint.js"></script>


		
<script type="text/javascript">
$(document).ready( function() {
    $('.subMenu').smint({
    	'scrollSpeed' : 1000
    });
});
</script>
</head>
<body onload="setTimeout(function() { window.scrollTo(0, 1); }, 100);">
	<div class="wrap">
	  <div class="subMenu" >
	 	<div class="inner">
	 		<a href="#" id="sTop" class="subNavBtn">${floor}��</a> 
			<a href="#" id="s1" class="subNavBtn">${floor}01ȣ</a>
			<a href="#" id="s2" class="subNavBtn">${floor}02ȣ</a>
			<a href="#" id="s3" class="subNavBtn">${floor}03ȣ</a>
			<a href="#" id="s4" class="subNavBtn">${floor}04ȣ</a>
		</div>
	</div>

	<div class="section sTop" align="center">		
		<img src="./resources/img/room/room20${floor-1}_1.jpg">
	</div>

	<div class="section s1">
		<div class="inner">
			<h1>${floor}01ȣ</h1>
			<table border="0">
				<tr>
				    <td class="span3" rowspan="5">
				    	<img src="./resources/img/room/preview/room${floor }01_1_main.jpg"><br>
				    </td>
				    <td class="span5" colspan="2">
				    </td>
				    
  				</tr>
  				<tr>
    				<td class="span2" align="center">����<br></td>
    				<td class="span3" align="left">10����<br></td>
  				</tr>
  				<tr>
    				<td align="center">����ũ��</td>
    				<td align="left">2~4��</td>
  				</tr>
  				<tr>
    				<td align="center">����</td>
    				<td align="left">���� ���� 1�� 2�� ����<br>
    				�ʰ�� ��/���� ���ͳ� <br>
					���̽� ���� ����<br>
					���� �� ����<br>
					Ȳ��߻��� Ȳ�縶��ũ ��ġ<br>
					�ϱ⿹�� �ȳ��� ��ġ<br> 
					���� ������� ���� ����<br>
					</td>
  				</tr>
  				<tr>
    				<td colspan="2">&nbsp;&nbsp;&nbsp;
    					<a data-toggle="modal" href="#overlay01_1"><img src="./resources/img/room/preview/room${floor }01_1_thumb.jpg"/></a>
				   		<a data-toggle="modal" href="#overlay01_2"><img src="./resources/img/room/preview/room${floor }01_2_thumb.jpg"/></a>
				   		<a data-toggle="modal" href="#overlay01_3"><img src="./resources/img/room/preview/room${floor }01_3_thumb.jpg"/></a>
    				</td>
  				</tr>		
			</table>
			<table align="right">
				<tr>
  					<td>
  					<br>
  						<input type="button" class="btn btn-inverse" onclick="location.href='resInsert?roomNum=${floor }01'" value="�����ϱ�"></button>
  					</td>
  				</tr>
  			</table>

		</div>

	</div>

	<div class="section s2">
		<div class="inner">

			<h1>${floor}02ȣ</h1>
			<table border="0">
				<tr>
				    <td class="span3" rowspan="5">
				    	<img src="./resources/img/room/preview/room${floor }02_1_main.jpg"><br>
				    </td>
				    <td class="span4" colspan="2">
				    </td>
				    
  				</tr>
  				<tr>
    				<td class="span2" align="center">����<br></td>
    				<td class="span3" align="left">12����<br></td>
  				</tr>
  				<tr>
    				<td align="center">����ũ��</td>
    				<td align="left">2~4��</td>
  				</tr>
  				<tr>
    				<td align="center">����</td>
    				<td align="left">���� ���� 1�� 2�� ����<br>
    				�ʰ�� ��/���� ���ͳ� <br>
					���̽� ���� ����<br>
					���� �� ����<br>
					Ȳ��߻��� Ȳ�縶��ũ ��ġ<br>
					�ϱ⿹�� �ȳ��� ��ġ<br>
					���� ������� ���� ����<br>
					</td>
  				</tr>
  				<tr>
    				<td colspan="2">&nbsp;&nbsp;&nbsp;
    					<a data-toggle="modal" href="#overlay02_1"><img src="./resources/img/room/preview/room${floor }02_1_thumb.jpg"/></a>
				   		<a data-toggle="modal" href="#overlay02_2"><img src="./resources/img/room/preview/room${floor }02_2_thumb.jpg"/></a>
				   		<a data-toggle="modal" href="#overlay02_3"><img src="./resources/img/room/preview/room${floor }02_3_thumb.jpg"/></a>
    				</td>
  				</tr>		
			</table>
			<table align="right">
				<tr>
  					<td>
  					<br>
  						<input type="button" class="btn btn-inverse" onclick="location.href='resInsert?roomNum=${floor }02'" value="�����ϱ�"></button>
  					</td>
  				</tr>
  			</table>
		</div>

	</div>

	<div class="section s3">
		<div class="inner">

			<h1>${floor}03ȣ</h1>
			<table border="0">
				<tr>
				    <td class="span3" rowspan="5">
				    	<img src="./resources/img/room/preview/room${floor }03_1_main.jpg"><br>
				    </td>
				    <td class="span4" colspan="2">
				    </td>
				    
  				</tr>
  				<tr>
    				<td class="span2" align="center">����<br></td>
    				<td class="span3" align="left">14����<br></td>
  				</tr>
  				<tr>
    				<td align="center">����ũ��</td>
    				<td align="left">2~4��</td>
  				</tr>
  				<tr>
    				<td align="center">����</td>
    				<td align="left">���� ���� 1�� 2�� ����<br>
    				�ʰ�� ��/���� ���ͳ� <br>
					���̽� ���� ����<br>
					���� �� ����<br>
					Ȳ��߻��� Ȳ�縶��ũ ��ġ<br>
					�ϱ⿹�� �ȳ��� ��ġ<br> 
					���� ������� ���� ����<br>
					</td>
  				</tr>
  				<tr>
    				<td colspan="2">&nbsp;&nbsp;&nbsp;
    					<a data-toggle="modal" href="#overlay03_1"><img src="./resources/img/room/preview/room${floor }03_1_thumb.jpg"/></a>
				   		<a data-toggle="modal" href="#overlay03_2"><img src="./resources/img/room/preview/room${floor }03_2_thumb.jpg"/></a>
				   		<a data-toggle="modal" href="#overlay03_3"><img src="./resources/img/room/preview/room${floor }03_3_thumb.jpg"/></a>
    				</td>
  				</tr>	
  			</table>
  			<table align="right">
				<tr>
  					<td>
  					<br>
  						<input type="button" class="btn btn-inverse" onclick="location.href='resInsert?roomNum=${floor }03'" value="�����ϱ�"></button>
  					</td>
  				</tr>
  			</table>
		</div>

	</div>

	<div class="section s4">
		<div class="inner">

			<h1>${floor}04ȣ</h1>
			<table border="0">
				<tr>
				    <td class="span3" rowspan="5">
				    	<img src="./resources/img/room/preview/room${floor }04_1_main.jpg"><br>
				    </td>
				    <td class="span4" colspan="2">
				    </td>
				    
  				</tr>
  				<tr>
    				<td class="span2" align="center">����<br></td>
    				<td class="span3" align="left">16����<br></td>
  				</tr>
  				<tr>
    				<td align="center">����ũ��</td>
    				<td align="left">2~4��</td>
  				</tr>
  				<tr>
    				<td align="center">����</td>
    				<td align="left">���� ���� 1�� 2�� ����<br>
    				�ʰ�� ��/���� ���ͳ� <br>
					���̽� ���� ����<br>
					���� �� ����<br>
					Ȳ��߻��� Ȳ�縶��ũ ��ġ<br>
					�ϱ⿹�� �ȳ��� ��ġ<br> 
					���� ������� ���� ����<br>
					</td>
  				</tr>
  				<tr>
    				<td colspan="2">&nbsp;&nbsp;&nbsp;
    					<a data-toggle="modal" href="#overlay04_1"><img src="./resources/img/room/preview/room${floor }04_1_thumb.jpg"/></a>
				   		<a data-toggle="modal" href="#overlay04_2"><img src="./resources/img/room/preview/room${floor }04_2_thumb.jpg"/></a>
				   		<a data-toggle="modal" href="#overlay04_3"><img src="./resources/img/room/preview/room${floor }04_3_thumb.jpg"/></a>
    				</td>
  				</tr>
  				
			</table>
			<table align="right">
				<tr>
  					<td>
  					<br>
  						<input type="button" class="btn btn-inverse" onclick="location.href='resInsert?roomNum=${floor }04'" value="�����ϱ�"></button>
  					</td>
  				</tr>
  			</table>
		</div>

	</div>



</div>

<div id="overlay01_1" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-header">
		<button type="button" class="close" data-dismiss="modal" aria-hidden="true">��</button>
	</div>
	<div class="modal-body">
		<img src="./resources/img/room/room${floor }01_1.jpg">
	</div>
	<div class="modal-footer">
		<button class="btn btn-inverse" data-dismiss="modal" aria-hidden="true">Close</button>
	</div>
</div>

<div id="overlay01_2" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-header">
		<button type="button" class="close" data-dismiss="modal" aria-hidden="true">��</button>
	</div>
	<div class="modal-body">
		<img src="./resources/img/room/room${floor }01_2.jpg">
	</div>
	<div class="modal-footer">
		<button class="btn btn-inverse" data-dismiss="modal" aria-hidden="true">Close</button>
	</div>
</div>

<div id="overlay01_3" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-header">
		<button type="button" class="close" data-dismiss="modal" aria-hidden="true">��</button>
	</div>
	<div class="modal-body">
		<img src="./resources/img/room/room${floor }01_3.jpg">
	</div>
	<div class="modal-footer">
		<button class="btn btn-inverse" data-dismiss="modal" aria-hidden="true">Close</button>
	</div>
</div>

<div id="overlay02_1" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-header">
		<button type="button" class="close" data-dismiss="modal" aria-hidden="true">��</button>
	</div>
	<div class="modal-body">
		<img src="./resources/img/room/room${floor }02_1.jpg">
	</div>
	<div class="modal-footer">
		<button class="btn btn-inverse" data-dismiss="modal" aria-hidden="true">Close</button>
	</div>
</div>

<div id="overlay02_2" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-header">
		<button type="button" class="close" data-dismiss="modal" aria-hidden="true">��</button>
	</div>
	<div class="modal-body">
		<img src="./resources/img/room/room${floor }02_2.jpg">
	</div>
	<div class="modal-footer">
		<button class="btn btn-inverse" data-dismiss="modal" aria-hidden="true">Close</button>
	</div>
</div>

<div id="overlay02_3" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-header">
		<button type="button" class="close" data-dismiss="modal" aria-hidden="true">��</button>
	</div>
	<div class="modal-body">
		<img src="./resources/img/room/room${floor }02_3.jpg">
	</div>
	<div class="modal-footer">
		<button class="btn btn-inverse" data-dismiss="modal" aria-hidden="true">Close</button>
	</div>
</div>

<div id="overlay03_1" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-header">
		<button type="button" class="close" data-dismiss="modal" aria-hidden="true">��</button>
	</div>
	<div class="modal-body">
		<img src="./resources/img/room/room${floor }03_1.jpg">
	</div>
	<div class="modal-footer">
		<button class="btn btn-inverse" data-dismiss="modal" aria-hidden="true">Close</button>
	</div>
</div>

<div id="overlay03_2" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-header">
		<button type="button" class="close" data-dismiss="modal" aria-hidden="true">��</button>
	</div>
	<div class="modal-body">
		<img src="./resources/img/room/room${floor }03_2.jpg">
	</div>
	<div class="modal-footer">
		<button class="btn btn-inverse" data-dismiss="modal" aria-hidden="true">Close</button>
	</div>
</div>

<div id="overlay03_3" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-header">
		<button type="button" class="close" data-dismiss="modal" aria-hidden="true">��</button>
	</div>
	<div class="modal-body">
		<img src="./resources/img/room/room${floor }03_3.jpg">
	</div>
	<div class="modal-footer">
		<button class="btn btn-inverse" data-dismiss="modal" aria-hidden="true">Close</button>
	</div>
</div>

<div id="overlay04_1" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-header">
		<button type="button" class="close" data-dismiss="modal" aria-hidden="true">��</button>
	</div>
	<div class="modal-body">
		<img src="./resources/img/room/room${floor }04_1.jpg">
	</div>
	<div class="modal-footer">
		<button class="btn btn-inverse" data-dismiss="modal" aria-hidden="true">Close</button>
	</div>
</div>

<div id="overlay04_2" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-header">
		<button type="button" class="close" data-dismiss="modal" aria-hidden="true">��</button>
	</div>
	<div class="modal-body">
		<img src="./resources/img/room/room${floor }04_2.jpg">
	</div>
	<div class="modal-footer">
		<button class="btn btn-inverse" data-dismiss="modal" aria-hidden="true">Close</button>
	</div>
</div>

<div id="overlay04_3" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-header">
		<button type="button" class="close" data-dismiss="modal" aria-hidden="true">��</button>
	</div>
	<div class="modal-body">
		<img src="./resources/img/room/room${floor }04_3.jpg">
	</div>
	<div class="modal-footer">
		<button class="btn btn-inverse" data-dismiss="modal" aria-hidden="true">Close</button>
	</div>
</div>

</body>
</html>