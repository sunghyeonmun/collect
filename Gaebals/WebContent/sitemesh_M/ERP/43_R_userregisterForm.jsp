<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html >
<html>
<head>
<title>[인사]급여관리 페이지 입니다.</title>
<link type="text/css" href="../../css/salary_style.css" rel="stylesheet" />
<script src="http://code.jquery.com/jquery-2.1.1.min.js"></script>
<script>
	function readURL(input) {

		if (input.files && input.files[0]) {
			var reader = new FileReader();
			reader.onload = function(e) {
				$('#UploadedImg').html(
						"<img id=img src='' width='150' height='100'>");
				$('#img').attr('src', e.target.result);
			}
			reader.readAsDataURL(input.files[0]);
		}
	}
</script>
</head>
<body>
	<div id="contents" align="center">
		<div style="float: left;"><h1>인사 관리자 페이지 입니다.</h1></div><br><br>
		<div style="margin: auto; text-align: center; margin-top: 80px"><h1>기본 항목 등록</h1></div><br>
		<div>
			<fieldset>
				<legend>사원 조회</legend>
				<table width="850" border="1" cellspacing="0" cellpadding="3" align="center">
					<tr>
						<td rowspan="7" style="width: '300'; height: '200';"
							id="UploadedImg"><input type="image"
							src="../../img/profile.JPG" width='150' height='100'></td>
						<td>사원번호</td>
						<td><input type="text" name="empno"></td>
						<td>성명</td>
						<td><input type="text" name="name"></td>
					<tr>
						<td>주민등록번호</td>
						<td><input type="text" name="jumin1" size="7" maxlength="6">-<input type="text" name="jumin2" size="7" maxlength="7"></td>
						<td>영문성문</td>
						<td><input type="text" name="ename"></td>
					</tr>
					<tr>
						<td>입사날짜</td>
						<td><input type="date" name="hiredate"></td>
						<td>입사구분</td>
						<td><input type="text" jopClassification></td>
					</tr>
					<tr>
						<td>직위/직급</td>
						<td><input type="text" name="position_name"></td>
						<td>직책</td>
						<td><input type="text" name="duty"></td>
					</tr>
					<tr>
						<td>퇴사날짜</td>
						<td><input type="date" name="retireDate"></td>
						<td>퇴사사유</td>
						<td><input type="text" name="retireReason"></td>
					</tr>

					<tr>
						<td>전화</td>
						<td><input type="text" name="tel"></td>
						<td>모바일</td>
						<td><input type="text" name="phone"></td>
					</tr>

					<tr>
						<td>여권번호</td>
						<td><input type="text" name="passport"></td>
						<td>E-mail</td>
						<td><input type="email" name="email"></td>
					</tr>
				</table>
				<br>
				<table width="850" border="1" cellspacing="0" cellpadding="3" align="center">
					<tr>
						<td>급여통장</td>
						<td><p>
								<select>
									<option value="1">001</option>
									<option value="2">002</option>
									<option value="3">003</option>
								</select> <input type="text" name="bankName" size="4"> <label>계좌번호:</label>
								<input type="text" name="actNumber" size="30"> <label>예금주:</label>
								<input type="text" name="actHolder" size="4">
							</p></td>
					</tr>
					<br>
					<tr>
						<td>주소</td>
						<td><input type="text" name="zipCode" size="7" readonly>
							<input type="button" value="우편번호찾기" onClick="zipCheck()">
							우편번호를 검색하세요.<br> <input type="text" name="address" size="70">
						</td>
					</tr>
					<tr>
						<td>내선번호</td>
						<td><input type="text" name="in_tel" size="70"></td>
					</tr>
				</table>

			</fieldset>
			<br>
			<table align="center">
				<tr>
					<td class="filebox"><label for="imgfile">업로드</label> <input type="file" id="imgfile" onchange="readURL(this)"></td>
					<td><input type="submit" name="confirm" value="등   록" class="button"></td>
					<td><input type="reset" name="reset" value="다시입력"	class="button"></td>
					<td><input type="button" value="가입안함"	onclick="javascript:window.location=''" class="button"></td>
				</tr>
			</table>

		</div>
</body>
</html>