<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<html lang="ko">
<head>
<title>인사관리 페이지 입니다.</title>
<link rel="stylesheet" href="../../css/P_style.css" />
</head>
<body>
	<div id="contents" align="center">
		<div style="margin: auto; text-align: center; margin-top: 80px"><h1>인사 카드</h1></div><br>
		<div>
			<form>
				<fieldset>
					<legend>사원정보 </legend>
					<table width = "800" cellpadding="10">
						<tr>
							<td>사원번호</td>
							<td><input type="text" name="empno" size="10"></td>
							<td>부서번호</td>
							<td><input type="text" name="deptno" size="10"></td>
							<td>부서명</td>
							<td><input type="text" name="deptname" size="10"></td>
						</tr>
						<tr>
							<td>직위/직급</td>
							<td><input type="text" name="position_name" size="10"></td>
							<td>E-mail</td>
							<td><input type="text" name="email" size="10"></td>
						</tr>
					</table>
					<table width = "800">
						<tr>
							<td>입사일자</td>
							<td><input type="date" name="date"></td>
							<td>입사구분</td>
							<td><select>
									<option selected>선택하세요</option>
									<option value="special">특채</option>
									<option value="middle">수시</option>
									<option value="final">정시</option>
							</select></td>
						</tr>
						<tr>
							<td>퇴사일자</td>
							<td><input type="date" name="date"></td>
							<td>퇴사사유</td>
							<td><input type="text" name="retireReason" size="10"></td>
						</tr>

						<tr>
							<td>급여통장</td>
							<td><select>
									<option selected>은행선택</option>
									<option value="gukmin">국민</option>
									<option value="nonghyub">농협</option>
									<option value="shinhan">신한</option>
							</select> 계좌번호 : <input type="text" name="actNumber" size="10">
								예금주 <input type="text" name="actHolder" size="10"></td>
						</tr>
						<tr>
							<td>내선번호</td>
							<td><input type="text" name="in_tel" size="30" readonly></td>
						</tr>
					</table>
					<br><br>
					
					<p align="left"><label>※수정불가능한 항목은 read only 처리되어있습니다.<br> ※필수 등록항목 미 입력시 수정되지 않습니다.</label>
					
					<input class="button" type="submit" value="등록하기"	style="float: right;">
				</fieldset>
			</form>
		</div>



	</div>
</body>
</html>