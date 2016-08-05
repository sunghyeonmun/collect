<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="ko">
<head>
<title>공지사항 입니다.</title>
<link type="text/css" href="../../css/main_style.css" rel="stylesheet" />
</head>
<body>
	<div id="contents" align="center">

		<div style="position: fixed; left: 70px; top: 300px;">
			<table class="profile" width="150" border="1" cellspacing="0" cellpadding="3" align="center">
				<tr align="center">
					<td colspan=2><img src="../../img/profile.JPG" width="160" height="160"></td>
				</tr>
				<tr>
					<th>사원명</th>
					<td>홍길동 ${name }</td>
				</tr>
				<tr>
					<th>사원번호</th>
					<td>EX15MR ${empno }</td>
				</tr>
			</table>
		</div>
		<br><br>
		<div>
			<iframe src="../index.jsp" height="600" width="750"></iframe>
		</div>
	</div>
</body>
</html>