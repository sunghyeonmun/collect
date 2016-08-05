<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html >
<html>
<head>
<title>급여관리 페이지 입니다.</title>

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
<link rel="stylesheet" href="../../css/tablesort_style.css"/>
</head>
<body>
<div id="contents" align="center">
<div style=" margin:auto; text-align:center; margin-top: 80px"><h1>급여 계산</h1></div><br>
<div style="float: left;">000씨의 급여 입니다.</div><br><br>

<fieldset>
<br>
	<div style="float: right;">

	</div>
<br>

		<table id="myTable" class="tablesorter">
		<thead>
			<tr>
				<th>신고귀속</th>
				<th>구분</th>
				<th>대장명칭</th>
				<th>지급일</th>
				<th>지급연월</th>
				<th>지급액</th>
				<th>근태일</th>
				<th>수당/공제(액)</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>14/07/20</td>
				<td>급여</td>
				<td>2016 7월 급여</td>
				<td>2016/07/20</td>
				<td>2016/07</td>
				<td>250</td>
				<td>8</td>
				<td>1</td>
			</tr>
			</tbody>
		</table>
		<br>

</fieldset>


</div>
</body>
</html>