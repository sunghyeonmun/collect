<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta>
<title>인사관리 페이지 입니다.</title>
<link type="text/css" href="../../css/salary_style.css" rel="stylesheet" />
</head>
<body>
	<div id="contents" align="center">
		<div style="margin: auto; text-align: center; margin-top: 80px">
			<h1>근태 현황 조회</h1>
		</div>

		<fieldset>
			<legend>명부 검색</legend>
			<div align="left">
				<table>
					<tr>
						<th>사원명</th>
						<td><input type="text" name="name" size="40"></td>
					</tr>
					<tr>
						<th>부서</th>
						<td><select>
								<option selected>선택하세요</option>
								<option value="관리">001</option>
								<option value="영업">002</option>
								<option value="생산">003</option>
								<option value="인사">004</option>
						</select> <input type="text" name="deptno"></td>
					</tr>
					<tr>
						<th>프로젝트</th>
						<td><select>
								<option selected>선택하세요</option>
								<option value="관리프로젝트">001</option>
								<option value="영업프로젝트">002</option>
								<option value="생산프로젝트">003</option>
								<option value="인사프로젝트">004</option>
						</select> &lt; <input type="text" name="project_name"></td>
					</tr>
					<tr>
						<th>입사구분
						<th>
						<td><select>
								<option selected>선택하세요</option>
								<option value="special">특채</option>
								<option value="middel">수시</option>
								<option value="final">정시</option>
						</select> &lt; <input type="text" name="jopClassification"></td>
					</tr>
					<tr>
						<th>직책</th>
						<td><select>
								<option selected>선택하세요</option>
								<option value="대리">대리</option>
								<option value="과장">과장</option>
								<option value="차장">차장</option>
								<option value="부장">부장</option>
								<option value="실장">실장</option>
						</select> &lt; <input type="text" name="duty"></td>
					</tr>
					<tr>
						<th>입사일
					</tr>
					<td><input type="date" name="hiredate">
					<th>자격증</th>
					<td><input type="text" name="cert"></td>
					<th>생년월일</th>
					<td><input type="date" name="birthday"></td>
					<th>기타</th>
					<td><input type="checkbox" name="others" checked="퇴사자포함"></td>
					</tr>
				</table>
			</div>
		</fieldset>


		<input class="button" type="submit" value="검색">
</body>
</html>