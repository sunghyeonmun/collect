<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html >
<html>
<head>
<title>인사관리 페이지 입니다.</title>
<link type="text/css" href="../../css/salary_style.css" rel="stylesheet" />
</head>
<body>
	<div id="contents" align="center">
	<div style="margin: auto; text-align: center; margin-top: 80px"><h1>인사 카드</h1></div><br>

		<div>
			<fieldset>
				<legend>신상 정보</legend>
				<br>
			<fieldset>
				<legend>개인 정보</legend>
				<table border="1 solid" cellpadding="30" align="center" width="770">
					<tr>
						<td rowspan="3"><input type="image" src="../../img/profile.JPG" width="150" height="100"></td>
						<th>성 명</th>
						<td>${name }</td>
						<th>주민등록번호</th>
						<td>${jumin1}-${jumin2}</td>
						
					</tr>
					
					<tr>
					
						<th>연락처</th>
						<td>${phone }</td>
						<th>성별</th>
						<td>${gender}</td>
					</tr>
					
					<tr>
						<th>주 소</th>
						<td colspan="5">${zipcode }</td>
					</tr>
				</table>
				</fieldset>
				<br>
				<fieldset>
					<legend>학력</legend>
					<table border="1" cellpadding="30" align="center" width="770">
						<tr>
							<th>기간</th>
							<th>학교 명</th>
							<th>전 공</th>
							<th>이수구분</th>
							<th>소재지</th>
							<th>기타</th>
						</tr>
						<tr>
							<td>${period }</td>
							<td>${school_name }</td>
							<td>${major }</td>
							<td>${complete }</td>
							<td>${stead }</td>
							<td>${others }</td>
						</tr>
						<tr>
							<td>dd</td>
							<td>dd</td>
							<td>dd</td>
							<td>dd</td>
							<td>dd</td>
							<td>dd</td>
						</tr>
					</table>
				</fieldset>
				<br>
				<fieldset>
					<legend>어학/자격</legend>
					<table border="1" cellpadding="30" align="center" width="770">
						<tr>
							<th>외국어</th>
							<th>독해</th>
							<th>작문</th>
							<th>회화</th>
							<th>자격증명</th>
							<th>취득일</th>
							<th>점수</th>
						</tr>
						<tr>
							<td>${ language}</td>
							<td>${reading }</td>
							<td>${writing }</td>
							<td>${conversation }</td>
							<td>${license }</td>
							<td>${getd }</td>
							<td>${score }</td>
						</tr>
					</table>
				</fieldset>
				<p align="right">
					<input class="button" type="button" value="수정하기">
				</p>
			</fieldset>
		</div>
</body>
</html>