<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html >
<html>
<head>
<title>근태관리 페이지 입니다.</title>
<link type="text/css" href="../../css/salary_style.css" rel="stylesheet" />
</head>
<body>
	<div id="contents" align="center">
	<div style="margin: auto; text-align: center; margin-top: 80px"><h1>근무 기록 등록 하기</h1></div><br>

		<fieldset >
		<table width=800>
			<tr>
				<th>사원 번호</th> 
				<td><input type="text" name="empno" style="border: 1px solid black"></td>
			</tr>
			<tr>
				<th>사원 명</th>
				<td><input type="text" name="ename" style="border: 1px solid black"></td>
			</tr>
			<tr>
				<th>부서 명</th> 
				<td><input type="text" name="deptname"style="border: 1px solid black"></td>
			</tr>
			<tr>
				<th rowspan="2">근태유형</th>
				<td><select>
					<option value="1">기본근무</option>
					<option value="2">휴가</option>
					<option value="3">휴직</option>
					<option value="4">반휴</option>
				</select>
				<input type="text" name="worktime" style="border: 1px solid black"></td>
			</tr>
			
			<tr>
				<td><select>
				<option value="1">연장근무</option>
				<option value="2">휴일근무</option>
				<option value="3">야근근무</option>
				</select>
				<input type="text" name="worktime" style="border: 1px solid black"></td>
			</tr>
			<tr>
			<th>근태 기간</th>
				<td><input type="date" name="date">-<input type="date" name="date"></td>
			</tr>
			</table>
		</fieldset>
		<br>
		<div>
			<input type="reset" name="reset" value="다시입력" class="button">&nbsp;
			<input type="submit" name="confirm" value="등   록" class="button">
		</div>
		
		
		</table>
	</div>
</body>
</html>