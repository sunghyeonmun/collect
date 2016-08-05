<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<html lang="ko">
<head>
<title>인사관리 페이지 입니다.</title>

<link type="text/css" href="../../css/salary_style.css" rel="stylesheet" />
</head>
<body>
	<div id="contents" align="center">
	<form>
		<div style="margin: auto; text-align: center; margin-top: 80px"><h1>인사카드</h1></div><br>
			<fieldset >
				<legend>사원정보 </legend>
				<table width="800";>
				<tr>
				<td>사원번호</td>
				<td>${empno }</td>
				<td>부서번호</td>
				<td>${deptno}</td>
				<td>부서명</td>
				<td>${deptname }</td>
				</tr>
				<tr>
				<td>직위/직급</td>
				<td>${position_code }</td>
				<td>E-mail</td>
				<td>${email }</td>
				</tr>
				</table>
				<table width="800"; >
				<tr>
				<td>입사일자</td>
				<td><input type="date" name="date"></td>
				<td>입사구분</td>
				<td>${hitecode }</td>
				</tr>	
				
				<tr>
				<td>퇴사일자</td>
				<td><input type="date" name="date"></td>
				<td>퇴사사유</td>
				<td>${retireReason }</td>
				</tr>
				</table>
				
				<table width="800";>
					<tr>
						<td>급여통장</td>
						<td>
						${bankName }
						계좌번호 :${actNumber }예금주${actHolder }
						</td>
					</tr>
				<tr>
				<td>내선번호</td><td>${in_tel }</td>
				</tr>
				</table>
				<input class="button" type="submit" value="수정하기" style="float:right">
			</fieldset>
			</form>
	</div>
</body>
</html>