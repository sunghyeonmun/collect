<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html >
<html>
<head>
<title>[인사]근태관리 페이지 입니다.</title>

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
<div style="float:left; "><h1>인사 관리자 페이지 입니다.</h1></div><br><br>
<div style=" margin:auto; text-align:center; margin-top: 80px"><h1>휴가 잔여 일 수 조회</h1></div><br>

<fieldset>
<br>
	<div style="float: right;">
		날짜 선택 : 
		<select>
		  <option value="1">2016</option>
		  <option value="2">2015</option>
		</select>
		<select>
		  <option value="1">12</option>
		  <option value="2">11</option>
		</select>
		<select>
		  <option value="1">1</option>
		  <option value="2">2</option>
		</select>
		<br>
		사원명 : <input type="text" name="name" width=20>
		<button class="button" >검색</button>
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