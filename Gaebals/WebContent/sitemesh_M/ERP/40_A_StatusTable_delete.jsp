<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html >
<html>
<head>
<title>[인사]근태관리 페이지 입니다.</title>

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
<SCRIPT>
function setDate(FORM, year, month, day) {

	  var current, year, month, day, days, i, j;
	  current = new Date();
	  year = (year) ? year : current.getFullYear();
	  for (i=0, j=year-1; i < 5; i++, j++) FORM.year.options[i] = new Option(j, j);
	  month = (month) ? month : current.getMonth()+1;
	  for (i=0; i < 12; i++) {
	    j = (i < 9) ? '0'+(i+1) : i+1;
	    FORM.month.options[i] = new Option(j, j);
	  }
	  day = (day) ? day : current.getDate();
	  days = new Date(new Date(year, month, 1)-86400000).getDate();
	  FORM.day.length = 0;
	  for (i=0, j; i < days; i++) {
	    j = (i < 9) ? '0'+(i+1) : i+1;
	    FORM.day.options[i] = new Option(j, j);
	  }
	  FORM.year.value = year;
	  FORM.month.options[month-1].selected = true;
	  FORM.day.options[day-1].selected = true;

	}
</script>
<link rel="stylesheet" href="../../css/tablesort_style.css"/>
</head>



<body>
<div id="contents" align="center">
<div style="float:left; "><h1>인사 관리자 페이지 입니다.</h1></div><br><br>
<div style=" margin:auto; text-align:center; margin-top: 80px"><h1>근태 현황 조회</h1></div>

<fieldset>
<br>
	<div style="float: right;">
	<FORM name="example">
	<SELECT name="year" onChange="setDate(this.form, this.value, this.form.month.value)">
	</SELECT>년
	<SELECT name="month" onChange="setDate(this.form, this.form.year.value, this.value)">
	</SELECT>월
	<SELECT name="day"></SELECT>일

		<br>
		사원명 : <input type="text" name="name" width=20>
		<button class="button" >검색</button>
		</FORM>
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