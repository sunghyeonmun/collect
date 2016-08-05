<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<title>상여/성과금 등록</title>
<style>
.button {
	display: inline-block;
	padding: 8px 12px;
	font-size: 13px;
	cursor: pointer;
	text-align: center;
	text-decoration: none;
	outline: none;
	background-color: #e7e7e7;
	color: black;
	border: none;
	border-radius: 15px;
}

.button:hover {
	background-color: #296EE8;
	color: #fff;
}
</style>
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
</head>
<body>
	<div style="float: left;">
		<img src="../../img/g_logo.png">
	</div>

	<br>
	<br>
	<div
		style="margin: auto; text-align: center; margin-top: 50px">
		<h1>상여/성과금 등록</h1>
	</div>

	<div>
		<fieldset style="width: 900px; margin: auto;">
			<table>
				<tr>
					<th>귀속년수-차수</th>
					<td><input type="text" name="AttributedYear"></td>
					<th>사원명</th>
					<td><input type="text" name="name"></td>
					<th>사원번호</th>
					<td><input type="text" name="empno"></td>

					<th></th>
					<td></td>
				</tr>

				<tr>
					<th>부서</th>
					<td><select>
							<option value="1">영업부</option>
							<option value="2">개발부</option>
					</select></td>
					<th>팀/개인</th>
					<td><select>
							<option value="1">팀</option>
							<option value="2">개인</option>
					</select></td>

				</tr>
				<tr>
					<th>급여 구분</th>
					<td><input type="text" name="paytype"></td>
					<th>증정명</th>
					<td><input type="text" name="outcomeName"></td>
				</tr>
				<tr>
				<th>대상 기간</th>
				<td><form name="someform">
									<select id="yeardropdown"></select> 
									<select id="monthdropdown"></select> 
									<select id="daydropdown"></select>
								</form>
<td><select>
		  <option value="1">2016</option>
		  <option value="2">2015</option>
		</select>
		<select>
		  <option value="1">12</option>
		  <option value="2">11</option>
		</select>
		<select>
		  <option value="1">1</option>
		  <option value="2">2</option>
		</select></td>
		
		</tr>
		<tr>
		<th>지급일</th>
		<td><select>
		  <option value="1">2016</option>
		  <option value="2">2015</option>
		</select>
		<select>
		  <option value="1">12</option>
		  <option value="2">11</option>
		</select>
		<select>
		  <option value="1">1</option>
		  <option value="2">2</option>
		</select></td>
		
		<th>지급년월</th>
		<td><select>
		  <option value="1">2016</option>
		  <option value="2">2015</option>
		</select>
		<select>
		  <option value="1">12</option>
		  <option value="2">11</option>
		</select></td>
		</tr>
		
		<tr>
		<th>지급율</th>
		<td><input type="text" name="PaymentRate"></td>
		<th>지급액</th>
		<td><input type="text" name="Payments"></td>		
			</table>
		</fieldset>
	</div>

	<div style="margin: auto; text-align: center; margin-top: 20px">
		<p>
			<input class="button" type="submit" value="등록"	onclick="self.close();">
			<input class="button" type="reset" value="다시입력">
			<input class="button" type="button" value="닫기"	onclick="self.close();">
		</p>
	</div>


</body>
</html>