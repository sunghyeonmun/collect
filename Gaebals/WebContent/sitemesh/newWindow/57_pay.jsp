<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<html lang="ko">
<head>
<title>급여명세서</title>
<link type="text/css" href="../../css/top_style.css" rel="stylesheet" />
<link type="text/css" href="../../view/style.css" rel="stylesheet" />
<style>
table, td, th {
    text-align: center;
}

table {
    border-collapse: collapse;
}

th, td {
border: 1px solid #dddddd;
    padding: 10px;
}   
td {
 width:50px}

}
</style>
</head>
<body>
<div id="contents" align="center">
<img align="left" src="../../img/g_logo(mini).png">
<br>
<div id="Div_Top"><h1>급여명세서</h1><p>년 월 급여</p></div>

<form>
<div align="left">
  <fieldset>
    <legend>지급항목</legend>
	<table width="100%" cellpadding="10">
	<tr>
	<td>급여</td>
	<td style="text-align:right;"></td>
	<td rowspan="3" style="border-top:none; border-bottom:none;"></td>
	<td>지급수당</td>
	<td style="text-align:right;"></td>
	</tr>
		<tr>
	<td>연장수당</td>
	<td style="text-align:right;"></td>
	<td>직책수당</td>
	<td style="text-align:right;"></td>
	</tr>
		<tr>
	<td>식대</td>
	<td style="text-align:right;"></td>
	<td></td>
	<td style="text-align:right;"></td>
	</tr>
	</table>
<br>
	<table width="250" align="right">
	<tr>
	<td>지급총액</td>
	<td style="text-align:right;"></td></tr>
</table>
	</fieldset>
	<br>
	  <fieldset>	  
    <legend>공제항목</legend>   
	<table width="100%">
		<tr>
	<td>국민연금</td>
	<td style="text-align:right;"></td>
	<td rowspan="2" style="border-top:none; border-bottom:none;"></td>
	<td>건강보험</td>
	<td style="text-align:right;"></td>
	</tr>
		<tr>
	<td>장기요양</td>
	<td style="text-align:right;"></td>
	<td>고용보험</td>
	<td style="text-align:right;"></td>
	</tr>
	</table>
	<br>
	<table width="250" align="right">
	<tr>
	<td>공제총액</td>
	<td style="text-align:right;"></td></tr>
</table>
	</fieldset>
	</div>
	<br>
	<p>지급급액 - 공제총액 = 실수령액</p>
	<p><h2>(지급급액) - (공제총액) = (실수령액)</h2></p>
    <br>
    
                <!-- Button input -->
            <div class="row">
            <div class="form-group">
              <div class="col-md-12 text-center">
	 <input type="submit" name="confirm" class="btn-default" value="저 장">
	 <input type="button" name="confirm" class="btn-default" value="닫 기">
	 </div>
	 </div>
	 </div>	 
</form>
</div>
</body>
</html>