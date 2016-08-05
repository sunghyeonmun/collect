<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html >
<html>
<head>
<title>증명서 출력 페이지 입니다.</title>

<script src="http://code.jquery.com/jquery-2.1.1.min.js"></script>
<script src="../../js/jquery-1.3.2.min.js"></script>
<script src="../../js/jquery.tablesorter.min.js"></script>
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
<link rel="stylesheet" href="../../css/tablesort_style.css" />
</head>
<body>
	<div id="contents" align="center">
		<div style="margin: auto; text-align: center; margin-top: 80px">
			<h1>사원 명부 검색</h1>
		</div>

		<div style="float: right;">
			<form>
				<select>
					<option>퇴직</option>
					<option>재직</option>
					<option>경력</option>
				</select>
		<input type="date" name="date">
	<input class="button" type="reset" value="조회">
				</form>

			</form>
		</div>


		<div id="table">
			<table id="myTable" class="tablesorter">
				<thead>
					<tr>
						<th>증명서 종류</th>
						<th>발행번호</th>
						<th>증명서 용도</th>
						<th>발행일</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>퇴직증명서</td>
						<td>0001</td>
						<td>재취업</td>
						<td>2016-01-01</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>