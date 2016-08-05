<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html >
<html>
<head>
<title>근태관리 페이지 입니다.</title>
<script src="http://code.jquery.com/jquery-2.1.1.min.js"></script>
<script src="../../js/jquery-1.3.2.min.js"> </script> 
<script src="../../js/jquery.tablesorter.min.js"> </script> 
<script>
	$(function() {
		$("#myTable").tablesorter({
			headers : {
				8 : {
					sorter : false
				}
			}
		});
	});
</script>
<script>
var count = 1;
var addCount;
//행삭제
function subtractInputBox() {
 var table = document.getElementById("dynamic_table");
 //var max = document.gForm.checkList.length;
 //alert(max);
 var rows = dynamic_table.rows.length;
 var chk = 0;
 if(rows > 1){
  for (var i=0; i<document.gForm.checkList.length; i++) {
   if (document.gForm.checkList[i].checked == true) {
    table.deleteRow(i);
    i--;
    count--;
    chk++;
   }
  }
  if(chk <= 0){
   alert("삭제할 행을 체크해 주세요.");
  }
   }else{
    alert("더이상 삭제할 수 없습니다.");
   }
}
</script>
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
<link rel="stylesheet" href="../../css/tablesort_style.css"/>
</head>
<body>
<div id="contents" align="center">

<div style=" margin:auto; text-align:center; margin-top: 80px"><h1>근태 현황 조회</h1></div>

<fieldset>
<br>
	<div style="float: right;">
		<form name="someform">
				<select id="yeardropdown"></select> 
				<select id="monthdropdown"></select> 
				<button class="button" onclick="alert('검색')">검색</button>
				</form>
	</div>
<br>

		<table id="myTable" class="tablesorter">
		<thead>
			<tr>
				<th>전표일자</th>
				<th>부서명</th>
				<th>직급</th>
				<th>사원번호</th>
				<th>사원명</th>
				<th>근태유형</th>
				<th>근태시간</th>
				<th>근태기간</th>
				<th>삭제</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>2016-01-01</td>
				<td>영업부</td>
				<td>대표이사</td>
				<td>EX16SS</td>
				<td>이미래</td>
				<td>근무</td>
				<td>8</td>
				<td>2016/01/01-2016/01/02</td>
				<td><table cellpadding=0 cellspacing=0 id="dynamic_table">
				<td width=20><input type=checkbox name=checkList value="+addCount+" size=20 ></td></table></td>
			</tr>
		</tbody>
		</table>
		<br>
	<button class="button" >등록하기</button>
	<input class="button" type="button" value="삭제" onclick="javascript:subtractInputBox();"><br><br>
</fieldset>


</div>
</body>
</html>