<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html >
<html>
<head>
<title>[인사]증명서 출력 페이지 입니다.</title>
<link type="text/css" href="../../css/salary_style.css" rel="stylesheet"/>
</head>
<body>
<div id="contents" align="center">
<h1>증명서 발급</h1>
<h3>증명서의 종류(경력증명서,퇴직증명서,재직증명서)선택 후 발급행수와 사용용도를 입력해주세요</h3>
<div align="left">
<select>
<option value="career">경력증명서</option>
<option value="retireCretificcate">퇴직증명서</option>
<option value="employ">재직증명서</option>
</select>

<select>
<option value="1">1부</option>
<option value="2">2부</option>
<option value="3">3부</option>
<option value="3">4부</option>
</select>
<p>
<strong>용도</strong><br/><br/>
<input type="text" name="issue_use" size="70">
</p>
<input type="submit" name="confirm" value="발 급" class="button" onclick="javascript:window.open('../newWindow/carreerForm.jsp','post','toolbar=no,location=no,menubar=no,scrollbars=no,resizable=no,width=700,height=700');">
</div>
</div>
</body>
</html>