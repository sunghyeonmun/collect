<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html >
<html>
<head>
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

	function addrow() {
		ta = document.getElementById('ta');
		row = ta.insertRow(ta.rows.length);
		cell1 = row.insertCell(0);
		cell2 = row.insertCell(1);
		cell3 = row.insertCell(2);
		cell4 = row.insertCell(3);
		cell5 = row.insertCell(4);
		cell6 = row.insertCell(5);
		cell1.innerHTML = '<input type="text" name="period" style="border:none"size="7"/>';
		cell2.innerHTML = '<input type="text" name="school_name" style="border:none"size="7"/>';
		cell3.innerHTML = '<input type="text" name="major" style="border:none"size="7"/>';
		cell4.innerHTML = '<input type="text" name="complete" style="border:none"size="7"/>';
		cell5.innerHTML = '<input type="text" name="stead" style="border:none"size="7"/>';
		cell6.innerHTML = '<input type="text" name="others" style="border:none"size="7"/>';

	}
	function delRow() {
		ta = document.getElementById('ta');
		if (ta.rows.length < 2)
			return;
		ta.deleteRow(ta.rows.length - 1);
	}
	function addrow1() {
		ta = document.getElementById('ta1');
		row = ta1.insertRow(ta1.rows.length);
		cell1 = row.insertCell(0);
		cell2 = row.insertCell(1);
		cell3 = row.insertCell(2);
		cell4 = row.insertCell(3);
		cell5 = row.insertCell(4);
		cell6 = row.insertCell(5);
		cell7 = row.insertCell(6);
		cell8 = row.insertCell(7);
		cell9 = row.insertCell(8);
		cell1.innerHTML = '<input type="text" name="strs[]" style="border:none"size="7"/>';
		cell2.innerHTML = '<input type="text" name="strs[]" style="border:none"size="7"/>';
		cell3.innerHTML = '<input type="text" name="strs[]" style="border:none"size="7"/>';
		cell4.innerHTML = '<input type="text" name="strs[]" style="border:none"size="7"/>';
		cell5.innerHTML = '<input type="text" name="strs[]" style="border:none"size="7"/>';
		cell6.innerHTML = '<input type="text" name="strs[]" style="border:none"size="7"/>';
		cell7.innerHTML = '<input type="text" name="strs[]" style="border:none"size="7"/>';
		cell8.innerHTML = '<input type="text" name="strs[]" style="border:none"size="7"/>';
		cell9.innerHTML = "<p class='filebox' align='center'><label for='ex_file'>첨부</label><input type='file' id='ex_file'></p>";
	}
	function delRow1() {
		ta1 = document.getElementById('ta1');
		if (ta1.rows.length < 2)
			return;
		ta1.deleteRow(ta1.rows.length - 1);
	}
</script>
<title>인사관리 페이지 입니다.</title>
<link type="text/css" href="../../css/salary_style.css" rel="stylesheet" />
</head>
<body>
	<div id="contents" align="center">
		<div style="margin: auto; text-align: center; margin-top: 80px">
			<h1>인사 카드</h1>
		</div>
		<br>
		<div>
			<fieldset>
				<legend>신상정보</legend>
				<br>
				<fieldset>
					<legend>개인 정보</legend>

					<table border="1" cellpadding="30" align="center" width="870" align="center">
						<tr>
							<td rowspan="3" id="UploadedImg"><input type="image" src="../../img/profile.JPG" width="150" height="100"></td>
							<th>성 명</th>
							<td><input type="text" name="name" style="border: none"></td>
							<th>주민등록번호</th>
							<td><input type="text" name="jumin1" size="6"maxlength="6" style="border: none">-<input type="text"	name="jumin2" size="6" maxlength="7" style="border: none"></td>
							<th>성별</th>
						</tr>
						<tr>
							<th>최종학력</th>
							<td><input type="text" name="complete" style="border: none"></td>
							<th>연락처</th>
							<td><input type="text" name="tel" style="border: none"></td>
							<td><input type="text" name="gender" style="border: none"><</td>
						</tr>
						<tr>
							<th>주 소</th>
							<td colspan="5"><input type="text" name="zipcode" size="7" readonly style="border: none">
							<input type="button" value="우편번호찾기" onClick="zipCheck()" class="button"><br>
							<input type="text" name="address" size="70"></td>
						</tr>
					</table>
					<table align="left">
						<tr>
							<td><div class="filebox">
									<label for="imgfile">사진 업로드</label> <input type="file" id="imgfile" onchange="readURL(this)">
								</div>
							<td>
						<tr>
					</table>
				</fieldset>
				<br>
			<fieldset>
				<legend>학력</legend>
				<table id="ta" border="1" cellpadding="30" align="center" width="870" align="center">
					<tr>
						<th>기간</th>
						<th>학교 명</th>
						<th>전 공</th>
						<th>이수구분</th>
						<th>소재지</th>
						<th>기타</th>
					</tr>
					<tr>
						<td><input type="text" name="period" style="border: none" size="7"></td>
						<td><input type="text" name="school_name"style="border: none" size="7"></td>
						<td><input type="text" name="major" style="border: none"size="7"></td>
						<td><input type="text" name="complete" style="border: none"size="7"></td>
						<td><input type="text" name="stead" style="border: none"size="7"></td>
						<td><input type="text" name="other" style="border: none"size="7"></td>
					</tr>
					<tr>
						<td><input type="text" name="period" style="border: none"size="7"></td>
						<td><input type="text" name="school_name"style="border: none" size="7"></td>
						<td><input type="text" name="major" style="border: none"size="7"></td>
						<td><input type="text" name="complete" style="border: none"size="7"></td>
						<td><input type="text" name="stead" style="border: none"size="7"></td>
						<td><input type="text" name="other" style="border: none"size="7"></td>
					</tr>
				</table>
				<div align="right">
					<input type="button" value="추가" onclick="addrow()" class="button">
					<input type="button" value="삭제" onclick="delRow()" class="button">
				</div>
			</fieldset>
			<br>
			<fieldset>
				<legend>어학/자격</legend>
				<table  border="1" cellpadding="30" align="center" width="870" align="center" id="ta1">
					<tr>
						<th>외국어</th>
						<th>독해</th>
						<th>작문</th>
						<th>회화</th>
						<th>자격증</th>
						<th>자격증 종류</th>
						<th>취득일</th>
						<th>점수</th>
						<th>첨부</th>
					</tr>
					<tr>
						<td><input type="text" name="lang" style="border: none"size="7"></td>
						<td><input type="text" name="read" style="border: none"size="7"></td>
						<td><input type="text" name="wri" style="border: none"size="7"></td>
						<td><input type="text" name="speak" style="border: none"size="7"></td>
						<td><input type="text" name="cert" style="border: none"	size="7"></td>
						<td><input type="text" name="cert_type" style="border: none"size="7"></td>
						<td><input type="text" name="c_date" style="border: none"size="7"></td>
						<td><input type="text" name="jumsu" style="border: none"size="7"></td>
						<td class='filebox' align="center"><label for='ex_file'>첨부</label><input type='file' id='ex_file'></td>
					</tr>
				</table>
				<div align="right">
					<input type="button" value="추가" onclick="addrow1();" class="button">
					<input type="button" value="삭제" onclick="delRow1()" class="button">
				</div>
			</fieldset>
			<br>
			<p align="left"><label>※ 필수 등록항목 미 등록시 수정되지 않습니다.</label>
			<p align="right"><input type="submit" name="confirm" value="등록하기" class="button">
			</p></p>
			</fieldset>
		</div>
</body>
</html>