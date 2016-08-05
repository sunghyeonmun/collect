<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta>
<title>Insert title here</title>
</head>
<body>
<div style=" margin:auto; text-align:center; margin-top: 80px"><h1>등록된 수당 항목 입니다.</h1></div>
<table border="1px"; style="margin-left:auto; margin-right:auto">
<tr>
<th>수당명</th>
<th>표시순서</th>
<th>고정급상여</th>
<th>변동급상여</th>
<th>근무기록</th>
<th>배율</th>
<th>비과세</th>
<th>계산식</th>
<th>계산항목</th>
<th>계산내역</th>
<th>근태코드</th>
</tr>
<tr>
<th><input type="text" size="10"></th>
<th><input type="text" size="10"></th>
<th><input type="checkbox"></th>
<th><input type="checkbox"></th>
<th>
<select>
<option selected> -- </option>
<option value="extension">연장</option>
</select>
</th>
<th><input type="text" size="10"></th>
<th><input type="text" size="10"><input type="text" size="10"></th>
<th>
<select>
<option selected> -- </option>
<option value="roundoff">반올림</option>
<option value="raising">올림</option>
<option value="rounddown">내림</option>
</select>
</th>
</tr>
</table>
<div align="right">
<input type="submit" value=수정하기>
<input type="submit" value=삭제하기>
</div>
</body>
</html>