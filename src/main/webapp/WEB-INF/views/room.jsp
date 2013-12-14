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
	 		<a href="#" id="sTop" class="subNavBtn">${floor}층</a> 
			<a href="#" id="s1" class="subNavBtn">${floor}01호</a>
			<a href="#" id="s2" class="subNavBtn">${floor}02호</a>
			<a href="#" id="s3" class="subNavBtn">${floor}03호</a>
			<a href="#" id="s4" class="subNavBtn">${floor}04호</a>
		</div>
	</div>

	<div class="section sTop" align="center">		
		<img src="./resources/img/room/room20${floor-1}_1.jpg">
	</div>

	<div class="section s1">
		<div class="inner">
			<h1>${floor}01호</h1>
			<table border="0">
				<tr>
				    <td class="span3" rowspan="5">
				    	<img src="./resources/img/room/preview/room${floor }01_1_main.jpg"><br>
				    </td>
				    <td class="span5" colspan="2">
				    </td>
				    
  				</tr>
  				<tr>
    				<td class="span2" align="center">가격<br></td>
    				<td class="span3" align="left">10만원<br></td>
  				</tr>
  				<tr>
    				<td align="center">객실크기</td>
    				<td align="left">2~4인</td>
  				</tr>
  				<tr>
    				<td align="center">서비스</td>
    				<td align="left">무료 생수 1일 2병 제공<br>
    				초고속 유/무선 인터넷 <br>
					보이스 메일 서비스<br>
					무료 차 서비스<br>
					황사발생시 황사마스크 비치<br>
					일기예보 안내문 비치<br> 
					조식 레스토랑 무료 제공<br>
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
  						<input type="button" class="btn btn-inverse" onclick="location.href='resInsert?roomNum=${floor }01'" value="예약하기"></button>
  					</td>
  				</tr>
  			</table>

		</div>

	</div>

	<div class="section s2">
		<div class="inner">

			<h1>${floor}02호</h1>
			<table border="0">
				<tr>
				    <td class="span3" rowspan="5">
				    	<img src="./resources/img/room/preview/room${floor }02_1_main.jpg"><br>
				    </td>
				    <td class="span4" colspan="2">
				    </td>
				    
  				</tr>
  				<tr>
    				<td class="span2" align="center">가격<br></td>
    				<td class="span3" align="left">12만원<br></td>
  				</tr>
  				<tr>
    				<td align="center">객실크기</td>
    				<td align="left">2~4인</td>
  				</tr>
  				<tr>
    				<td align="center">서비스</td>
    				<td align="left">무료 생수 1일 2병 제공<br>
    				초고속 유/무선 인터넷 <br>
					보이스 메일 서비스<br>
					무료 차 서비스<br>
					황사발생시 황사마스크 비치<br>
					일기예보 안내문 비치<br>
					조식 레스토랑 무료 제공<br>
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
  						<input type="button" class="btn btn-inverse" onclick="location.href='resInsert?roomNum=${floor }02'" value="예약하기"></button>
  					</td>
  				</tr>
  			</table>
		</div>

	</div>

	<div class="section s3">
		<div class="inner">

			<h1>${floor}03호</h1>
			<table border="0">
				<tr>
				    <td class="span3" rowspan="5">
				    	<img src="./resources/img/room/preview/room${floor }03_1_main.jpg"><br>
				    </td>
				    <td class="span4" colspan="2">
				    </td>
				    
  				</tr>
  				<tr>
    				<td class="span2" align="center">가격<br></td>
    				<td class="span3" align="left">14만원<br></td>
  				</tr>
  				<tr>
    				<td align="center">객실크기</td>
    				<td align="left">2~4인</td>
  				</tr>
  				<tr>
    				<td align="center">서비스</td>
    				<td align="left">무료 생수 1일 2병 제공<br>
    				초고속 유/무선 인터넷 <br>
					보이스 메일 서비스<br>
					무료 차 서비스<br>
					황사발생시 황사마스크 비치<br>
					일기예보 안내문 비치<br> 
					조식 레스토랑 무료 제공<br>
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
  						<input type="button" class="btn btn-inverse" onclick="location.href='resInsert?roomNum=${floor }03'" value="예약하기"></button>
  					</td>
  				</tr>
  			</table>
		</div>

	</div>

	<div class="section s4">
		<div class="inner">

			<h1>${floor}04호</h1>
			<table border="0">
				<tr>
				    <td class="span3" rowspan="5">
				    	<img src="./resources/img/room/preview/room${floor }04_1_main.jpg"><br>
				    </td>
				    <td class="span4" colspan="2">
				    </td>
				    
  				</tr>
  				<tr>
    				<td class="span2" align="center">가격<br></td>
    				<td class="span3" align="left">16만원<br></td>
  				</tr>
  				<tr>
    				<td align="center">객실크기</td>
    				<td align="left">2~4인</td>
  				</tr>
  				<tr>
    				<td align="center">서비스</td>
    				<td align="left">무료 생수 1일 2병 제공<br>
    				초고속 유/무선 인터넷 <br>
					보이스 메일 서비스<br>
					무료 차 서비스<br>
					황사발생시 황사마스크 비치<br>
					일기예보 안내문 비치<br> 
					조식 레스토랑 무료 제공<br>
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
  						<input type="button" class="btn btn-inverse" onclick="location.href='resInsert?roomNum=${floor }04'" value="예약하기"></button>
  					</td>
  				</tr>
  			</table>
		</div>

	</div>



</div>

<div id="overlay01_1" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-header">
		<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
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
		<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
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
		<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
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
		<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
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
		<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
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
		<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
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
		<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
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
		<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
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
		<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
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
		<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
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
		<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
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
		<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
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