<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<html lang="ko">
<head>
<title>[인사]인사관리 페이지 입니다.</title>
<script>
	var monthtext = [ '1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11',
			'12' ];
	function populatedropdown(yearfield, monthfield, dayfield) {
		var today = new Date()
		var dayfield = document.getElementById(dayfield)
		var monthfield = document.getElementById(monthfield)
		var yearfield = document.getElementById(yearfield)

		for (var i = 0; i < 31; i++)
			dayfield.options[i] = new Option(i + 1, i + 1)
		dayfield.options[today.getDate()] = new Option(today.getDate(), today
				.getDate(), true, true) //select today's day

		for (var m = 0; m < 12; m++)
			monthfield.options[m] = new Option(monthtext[m], monthtext[m])
		monthfield.options[today.getMonth()] = new Option(monthtext[today
				.getMonth()], monthtext[today.getMonth()], true, true) //select today's month
		var thisyear = today.getFullYear()

		for (var y = 0; y < 20; y++) {
			yearfield.options[y] = new Option(thisyear, thisyear)
			thisyear += 1
		}
		yearfield.options[0] = new Option(today.getFullYear(), today
				.getFullYear(), true, true) //select today's year
	}
</script>
<script>
	window.onload = function() {
		populatedropdown("yeardropdown", "monthdropdown", "daydropdown");
		populatedropdown("yeardropdown1", "monthdropdown1", "daydropdown1");
	}
</script>
<link rel="stylesheet" href="../../css/P_style.css" />
</head>
<body>
	<div id="contents" align="center">
			<div style="float:left; "><h1>인사 관리자 페이지 입니다.</h1></div><br><br>
		<div style="margin: auto; text-align: center; margin-top: 80px"><h1>인사 카드</h1></div><br>
		<div>
			<form>
				<fieldset>
					<legend>사원정보 </legend>
					<table width = "800">
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
							<td>	<select id="yeardropdown"></select> 
									<select id="monthdropdown"></select> 
									<select id="daydropdown"></select>
								</td>
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
							<td>
									<select id="yeardropdown1"></select> 
									<select	id="monthdropdown1"></select> 
									<select id="daydropdown1"></select>
								</td>
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