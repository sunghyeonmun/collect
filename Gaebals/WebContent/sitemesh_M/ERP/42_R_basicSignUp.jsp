<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<html lang="ko">
<head>
<title>[인사]급여관리 페이지 입니다.</title>
<link type="text/css" href="../../css/salary_style.css" rel="stylesheet" />
</head>
<body>
	<div id="contents" align="center">
		<div style="float: left;"><h1>인사 관리자 페이지 입니다.</h1></div><br><br>
		<div style="margin: auto; text-align: center; margin-top: 80px"><h1>기본 사항 등록</h1></div><br>
				<form>
					<fieldset class="bs">
						<legend>급여 지급 사항 등록</legend>
						<button class="button" onclick="alert('새로운 사원 등록')">새로운
							사원 등록 하기</button>
						<br>
						<br>
						<br>
						<div class="search">
							사원번호: <input type="text" name="empno"><br>
							<br> 사원명: <input type="text" name="name"><br>
							<br>
							<button class="button" onclick="alert('검색하기')">검색하기</button>
						</div>
					</fieldset>
				</form>
			</div>
		</div>


	</div>
</body>
</html>