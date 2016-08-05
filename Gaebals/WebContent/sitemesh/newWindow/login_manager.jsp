<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<html>
<head>
<title>Insert title here</title>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<link type="text/css" href="view/style.css" rel="stylesheet" />
</head>
<body class="align">
	<form>
		<div id="Div_Top">
			<img src="../../img/g_logo.png">
		</div>
		<div class="form-group" ID="Div_Body">
			<div class="row">
				<div class="col-sm-4">
					<label>※ 인사관리자 페이지 입니다</label><br>
					<br> <label for="id">아이디</label> <input type="text"
						class="form-control" id="id" placeholder="아이디를 입력하세요"> <label
						for="Password">비밀번호</label>
				</div>
			</div>
			<div class="form-inline">
				<div class="form-group">
					<div class="row">
						<div class="col-sm-8">
							<input type="password" class="form-control" id="Password"
								placeholder="비밀번호를 입력하세요">
						</div>
					</div>
				</div>
				<div class="form-group">
					<button type="submit" class="btn btn-default btn-xs">로그인
						하기</button>
				</div>
			</div>
			<br>
			<div class="form-group">
				<input type="button" class="btn btn-default btn-xs"
					value="아이디 및 비밀번호 찾기">
			</div>
		</div>

	</form>
</body>
</html>