<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<html lang="ko">
<head>
<title>증명서 출력 페이지 입니다.</title>
<link type="text/css" href="../../css/salary_style.css" rel="stylesheet" />
<script type="text/javascript" src="../../js/date.js"></script>
<script>
	var monthtext = [ '1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11',
			'12' ];
	function populatedropdown(yearfield, monthfield) {
		var today = new Date()
		var monthfield = document.getElementById(monthfield)
		var yearfield = document.getElementById(yearfield)

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
		populatedropdown("yeardropdown", "monthdropdown");
	}
</script>
</head>
<body>
	<div id="contents" align="center">
		<div style="margin: auto; text-align: center; margin-top: 80px"><h1>급여 명세서 발급</h1></div><br>
		<br>
		<form>
			<fieldset>
				<div id="selectdate">
					<form name="someform">
						<select id="yeardropdown"></select> <select id="monthdropdown"></select>
						<button class="button" onclick="alert('검색')">검색</button>
					</form>
				</div>
			</fieldset>
		</form>
	</div>
</body>
</html>