<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<html lang="ko">
<head>
<title>[인사]인사관리 페이지 입니다.</title>
<script>
	var monthtext = [ '1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11','12' ];
	function populatedropdown( yearfield, monthfield,dayfield) {
		var today = new Date()
		var dayfield = document.getElementById(dayfield)
		var monthfield = document.getElementById(monthfield)
		var yearfield = document.getElementById(yearfield)
		
		for (var i = 0; i < 31; i++)
			dayfield.options[i] = new Option(i + 1, i + 1)
		dayfield.options[today.getDate()] = new Option(today.getDate(), today.getDate(), true, true) //select today's day
		
		for (var m = 0; m < 12; m++)
			monthfield.options[m] = new Option(monthtext[m], monthtext[m])
			monthfield.options[today.getMonth()] = new Option(monthtext[today.getMonth()], monthtext[today.getMonth()], true, true) //select today's month
		var thisyear = today.getFullYear()
		
		for (var y = 0; y < 20; y++) {
			yearfield.options[y] = new Option(thisyear, thisyear)
			thisyear += 1
		}
		yearfield.options[0] = new Option(today.getFullYear(), today.getFullYear(), true, true) //select today's year
	}
</script>
<script>
	window.onload = function() {
		populatedropdown("yeardropdown", "monthdropdown", "daydropdown");
		populatedropdown("yeardropdown1", "monthdropdown1", "daydropdown1");
	}
</script>
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
				<td><form name="someform">
					<select id="yeardropdown"></select>
					<select id="monthdropdown">	</select> 
					<select id="daydropdown"></select> 
				</form></td>
				<td>입사구분</td>
				<td>${hitecode }</td>
				</tr>	
				
				<tr>
				<td>퇴사일자</td>
				<td><form name="someform1">
					<select id="yeardropdown1"></select>
					<select id="monthdropdown1">	</select> 
					<select id="daydropdown1"></select> 
				</form></td>
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