<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html >
<html>
<head>
<title>[인사]인사관리 페이지 입니다.</title>

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
		<div style=" margin:auto; text-align:center; margin-top: 80px"><h1>사원 명부 검색</h1></div>
	<div style="float:right;"><button class="button" onclick="alert('다시검색')">다시 검색 하기</button></div>
		<!-- 분리되라 -->
		<div id="table">
		<table id="myTable" class="tablesorter">
		<thead>
			<tr>
				<th>사원번호</th>
				<th>사원명</th>
				<th>영문 성명</th>
				<th>주민등록번호</th>
				<th>입사일</th>
				<th>직위/직급</th>
				<th>모바일</th>
				<th>Email</th>
				<th>세부사항</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>${empno}</td>
				<td>${name }</td>
				<td>${ename}</td>
				<td>${jumin1 }-${jumin2 }</td>
				<td>${hiredate }</td>
				<td>${position_code }</td>
				<td>${phone }</td>
				<td>${email }</td>
				<td><button class="button" onclick="window.open('/Gaebals/sitemesh/newWindow/R_emplist2.jsp', '_blank', 'width=850, height=550', true)">세부사항</button></td>
			</tr>
			<tr>
				<td>002</td>
				<td>이수나</td>
				<td>lsn</td>
				<td>800101-2544444</td>
				<td>2015-01-01</td>
				<td>대리</td>
				<td>010-2000-0000</td>
				<td>lsu@tor.net</td>
				<td><button class="button" onclick="alert('세부사항')">세부사항</button></td>
			</tr>
			<tr>
				<td>003</td>
				<td>문성현</td>
				<td>msh</td>
				<td>880101-2544444</td>
				<td>2014-01-01</td>
				<td>팀장</td>
				<td>010-3000-0000</td>
				<td>msh@tor.net</td>
				<td><button class="button" onclick="alert('세부사항')">세부사항</button></td>
			</tr>
		</tbody>
		</div>
		
</body>
</html>