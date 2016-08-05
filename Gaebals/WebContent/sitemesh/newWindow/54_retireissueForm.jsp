<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html >
<html>
<head>
<title>퇴직증명서</title>
<link type="text/css" href="../../css/salary_style.css" rel="stylesheet">
</head>
<body>
	<fieldset width='100%'>

		<table width=100% border="0" cellspacing="0" cellpadding="0">
			<tr>
				<td align="left" style="padding: 0"><img
					src="../../img/g_logo.png"
					style="margin-top: 50; margin-bottom: 50; margin-left: 좌; margin-right: 우"></td>
			</tr>
			</td>
			<td align="center"><h1>퇴직증명서</h1></td>
			<tr>
				<td align="right">퇴직 증명번호 : ${no}</td>
			</tr>
		</table>
		<br>
		<br>
		<br>
		<table border="0" cellspacing="0" cellpadding="10" align="center">
			<tr>
				<td align="left">이름:</td>
				<td>장기철</td>
				<td></td>
				<td></td>
				<td align="right">사원번호:</td>
				<td>1111111</td>
			<tr>
			<tr>
				<td>주민번호:</td>
				<td>910107-1111111</td>
			<tr>
			<tr>
				<td>주소:</td>
				<td>갈산리</td>
			<tr>
			<tr>
				<td>근무부서:</td>
				<td>미래창조부</td>
				<td></td>
				<td></td>
				<td align="left">직위 :</td>
				<td>사원</td>
			<tr>
			<tr>
				<td>취업일자:</td>
				<td>2016년 8월 2일 화요일</td>
				<td></td>
				<td>
				<td>퇴직일자:</td>
				<td>2016년 8월 2일 화요일</td>
			<tr>
			<tr>
				<td>퇴사이유:</td>
				<td>정리해고</td>
				<td></td>
				<td>
				<td>용도:</td>
				<td>재취업</td>
			<tr>
		</table>
		<br>
		<p align="center">
			<label>상기 사실을 증명합니다</label>
		</p>
		<br>
		<br>
		<br>
		<br>

		<div align="center">
			<label>2016년 8월 2일 화요일</label> <br>
			<br>
			<h2>대표이사 윤성현</h2>
		</div>
	</fieldset>
	<br>
	<br>
	<div align="center">
		<input type="button" class="button" value="저 장"> <input
			type="button" class="button" value="닫 기" onclick="self.close()">
	</div>
</body>
</html>