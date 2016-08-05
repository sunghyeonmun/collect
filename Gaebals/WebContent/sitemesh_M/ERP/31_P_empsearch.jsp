<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta>
<title>[인사]인사관리 페이지 입니다.</title>
<link type="text/css" href="../../css/salary_style.css" rel="stylesheet" />
</head>
<body>
	<div id="contents" align="center">
			<div style="float: left;"><h1>인사 관리자 페이지 입니다.</h1></div><br><br>
		<div style="margin: auto; text-align: center; margin-top: 80px">
			<h1>근태 현황 조회</h1>
		</div>
<br>
		<fieldset>
			<legend>명부 검색</legend>
			<div align="left">
				<table style="width: 800">
					<tr>
						<th>사원명</th>
						<td><input type="text" name="name"></td>
						<th>생년월일</th>
						<td><input type="date" name="birthday"></td>
					</tr>
					<tr>
						<th>부서</th>
						<td><select>
								<option selected>선택하세요</option>
								<option value="18">영업부</option>
								<option value="19">회계</option>
								<option value="44">IT개발팀</option>
								<option value="35">전산팀</option>
								<option value="20">인사팀</option>
						</select></td>
						<th>프로젝트</th>
						<td><select>
								<option selected>선택하세요</option>
								<option value="1">회계정보개발 프로젝트</option>
								<option value="2">영업창조 토너먼트</option>
								<option value="3">마케팅 영업 포럼</option>
								<option value="4">전산 구매 계획 프로젝트</option>
						</select></td>
					</tr>
					<tr>
						<th>입사구분</th>
						<td><select>
								<option selected>선택하세요</option>
								<option value="special">특채</option>
								<option value="middel">수시</option>
								<option value="final">정시</option>
						</select></td>
						<th>직책</th>
						<td><select>
								<option selected>선택하세요</option>
								<option value="50">사원</option>
								<option value="51">주임</option>
								<option value="52">대리</option>
								<option value="53">과장</option>
								<option value="54">팀장</option>
								<option value="55">이사</option>
						</select></td>
					</tr>
					<tr>
						<th>입사일</th>
						<td><input type="date" name="hiredate"></td>
						<th>자격증</th>
						<td><input type="text" name="cert"></td>
						<th>기타</th>
						<td><input type="checkbox" name="others" checked="퇴사자포함"></td>
					</tr>
				</table>
			</div>
		</fieldset>

<br>
		<input class="button" type="submit" value="검색">
</body>
</html>