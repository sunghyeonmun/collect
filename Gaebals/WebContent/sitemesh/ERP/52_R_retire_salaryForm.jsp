<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html >
<html>
<head>
<title>급여관리 페이지 입니다.</title>
<link type="text/css" href="../../css/salary_style.css" rel="stylesheet" />
</head>
<body>
	<div id="contents" align="center">
		<div id="title"
			style="margin-left: auto; text-align: center; margin-top: 100px">
			<h1>퇴직금계산</h1>
		</div>

		<div align="left">


			<p>
				<label>정산기간</label><input type="date"> ~ <input type="date">
			</p>
			<p>
				<label>근속기간</label><input type="date"> ~ <input type="date">
			</p>
			<fieldset style="width: 750;">
				<legend>
					<p align="left">퇴직금 계산</p>
				</legend>
				<label>3개월 간의 급여를 입력하시요</label><br>
				<br>
				<div align="center">
					<select>
						<option value='1'>급여</option>
						<option value='2'>상여</option>
						</section>
						<input type="date"> ~
						<input type="date">
					</p>
						<select>
							<option value='1'>급여</option>
							<option value='2'>상여</option>
							</section>
							<input type="date"> ~
							<input type="date">
						</p>
							<select>
								<option value='1'>급여</option>
								<option value='2'>상여</option>
								</section>
								<input type="date" /> ~
								<input type="date" />
							</p>
				</div>
			</fieldset>
			<br> <label>총 근무일 수</label><input type="text">일
			<p>
				<label>퇴직일자</label><input type="date" name="retire_date"> <label>지급일</label><input
					type="date" name="retire_date">
			</p>
			<p>
				<label>퇴직사유</label> 
				<input type="radio" name="retire_type"	value="중간결산">중간결산 
				<input type="radio" name="retire_type" value="정리해고">정리해고 
				<input type="radio" name="retire_type"	value="정년퇴직">정년퇴직 
				<input type="radio" name="retire_type"	value="자발적퇴직">자발적퇴직 
				<input type="radio" name="retire_type"	value="기타">기타</p>
		</div>

		<input class="button" type="button" value="계산"
			onclick="window.open('/Gaebals/sitemesh/newWindow/R_retire_salary_result.jsp', '_blank', 'width=850, height=550', true)">
	</div>

</body>
</html>