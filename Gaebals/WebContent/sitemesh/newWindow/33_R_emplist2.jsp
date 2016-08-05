<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<title>사원의 정보 입니다.</title>
<style>
.button {
	display: inline-block;
	padding: 8px 12px;
	font-size: 13px;
	cursor: pointer;
	text-align: center;
	text-decoration: none;
	outline: none;
	background-color: #e7e7e7;
	color: black;
	border: none;
	border-radius: 15px;
}

.button:hover {
	background-color: #296EE8;
	color: #fff;
}
</style>
</head>
<body>
	<div style="float: left;">
		<img src="../../img/g_logo.png">
	</div>
	
	<br><br>
	<div id="title" style="margin: auto; text-align: center; margin-top: 50px">
		<h1>사원 정보</h1>
	</div>

	<div>
		<fieldset style="width: 800px; margin: auto;">
			<legend>인사 정보</legend>
			<table>
				<tr>
					<th>사원번호</th>
					<td>${empno}</td>
					<th>부서번호</th>
					<td>${deptno}</td>
					<th>부서명</th>
					<td>${deptname}</td>
				</tr>

				<tr>
					<th>직위/직급</th>
					<td>${position_name}</td>
					<th>내선번호</th>
					<td>${in_tel}</td>
					<th>E-mail</th>
					<td>${email}</td>
				</tr>
				<tr>
					<th>입사일자</th>
					<td>${hiredate}</td>
					<th>입사구분</th>
					<td>${jopClassification}</td>
				</tr>

			</table>
		</fieldset>
	</div>
	
	<div>
		<form>
			<fieldset style="width: 800px; margin: auto;">
				<legend>프로젝트</legend>
				<table>

					<tr>
						<th>프로젝트명</th>
						<td>${project_name}</td>
						<th>일시</th>
						<td>${p_date}</td>
						<th>당담자</th>
						<td>${manager}</td>
					<tr>
					<tr>
						<th>역할</th>
						<td>${part}</td>
						<th>기타</th>
						<td>${p_other}</td>
					</tr>
				</table>
			</fieldset>

			<fieldset style="width: 800px; margin: auto;">
				<legend>제 2외국어</legend>
				<table>

					<tr>
						<th>외국어 명</th>
						<td>${language}</td>
						<th></th>
						<td></td>
					<tr>
					<tr>
						<th>자격증 명</th>
						<td>${license}</td>
						<th>취득일</th>
						<td>${getd }</td>
					</tr>
				</table>
			</fieldset>

		</form>
	</div>
	
	<div style="margin: auto; text-align: center; margin-top: 20px">
		 <p> <input class="button" type="button" value="닫기" onclick="self.close();"></p>
	</div>
	
	
</body>
</html>