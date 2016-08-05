<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta>
<title>[인사]인사관리 페이지 입니다.</title>
<style>
h1{text-align:center;}
fieldset{margin:auto; width:800;}
</style>
</head>
<body>
<h1>사원 명부 </h1>
<div>
<form>
<fieldset  >
	<legend>명부 검색</legend>
	사원명 <input type="text" name="name" size="40"> 
	<br>
	부서 <select>
	<option selected> 선택하세요 </option>
	<option value="관리">001</option>
	<option value="영업">002</option>
	<option value="생산">003</option>
	<option value="인사">004</option>
	</select>
	&lt;
	<input type="text" name="deptno">
	<br>
	프로젝트 <select>
	<option selected> 선택하세요 </option>
	<option value="관리프로젝트">001</option>
	<option value="영업프로젝트">002</option>
	<option value="생산프로젝트">003</option>
	<option value="인사프로젝트">004</option>
	</select>
	&lt;
	<input type="text" name="project_name">
	입사구분<select>
	<option selected> 선택하세요 </option>
	<option value="special">특채</option>
	<option value="middel">수시</option>
	<option value="final">정시</option>
	</select>
	&lt;
	<input type="text" name="jopClassification">
	<br>
	직책
	<select>
	<option selected>선택하세요</option>
	<option value="대리">대리</option>
	<option value="과장">과장</option>
	<option value="차장">차장</option>
	<option value="부장">부장</option>
	<option value="실장">실장</option>
	</select>
	&lt;
	<input type="text" name="duty">
	
	입사일<input type="date" name="hiredate"><br>
	자격증 <input type="text" name="cert"> &lt; <br>
	생년월일 <input type="date" name="birthday"><br>
	기타 <input type="checkbox" name="others" checked="퇴사자포함">
	
</fieldset>
</form>
</div>
<center><input class="button" type="submit" value="검색"></center>

</body>
</html>