<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html >
<html>
<head>
<title>근태관리 페이지 입니다.</title>

<script src="http://code.jquery.com/jquery-2.1.1.min.js"></script>
<script src="../../js/jquery-1.3.2.min.js"> </script> 
<script src="../../js/jquery.tablesorter.min.js"> </script> 
<script>
	$(function() {
		$("#myTable").tablesorter({
			headers : {
				8 : {
					sorter : false
				}
			}
		});
	});
</script>
<script>
	var monthtext = [ '1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11',
			'12' ];
	function populatedropdown(yearfield) {
		var today = new Date()
		var yearfield = document.getElementById(yearfield)
		var thisyear = today.getFullYear()

		for (var y = 0; y < 10; y++) {
			yearfield.options[y] = new Option(thisyear, thisyear)
			thisyear += 1
		}
		yearfield.options[0] = new Option(today.getFullYear(), today
				.getFullYear(), true, true) //select today's year
	}
</script>
<script>
	window.onload = function() {
		populatedropdown("yeardropdown");
	}
</script>
<link rel="stylesheet" href="../../css/tablesort_style.css"/>
</head>
<body>
<div id="contents" align="center">

<div style=" margin:auto; text-align:center; margin-top: 80px"><h1>휴가 잔여 일 수 조회</h1></div><br>

<fieldset>
<br>
	<div style="float: right;">
		<form name="someform">
				<select id="yeardropdown"></select> 
				<button class="button" onclick="alert('검색')">검색</button>
				</form>
	</div>
<br>

		<table id="myTable" class="tablesorter">
		<thead>
			<tr>
				<th>휴가코드</th>
				<th>부서명</th>
				<th>사원번호</th>
				<th>사원명</th>
				<th>총 휴가 일수</th>
				<th>휴가 사용 일수</th>
				<th>휴가 잔여 일수</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>14년 연차</td>
				<td>영업부</td>
				<td>EX16SS</td>
				<td>이미래</td>
				<td>18</td>
				<td>8</td>
				<td>10</td>
			</tr>
			<tr>
				<td colspan="4">합계</td>
				<td>총휴가일수</td>
				<td>휴가 사용일수</td>
				<td>휴가 잔여 일수</td>
				<tr>
			</tbody>
		</table>
		
		
		<br>
</fieldset>
</div>
</body>
</html>