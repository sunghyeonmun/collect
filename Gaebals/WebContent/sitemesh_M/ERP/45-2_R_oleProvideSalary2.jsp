<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page trimDirectiveWhitespaces="true"%>
<html lang="ko">
<head>
<title>[인사]급여관리 페이지 입니다.</title>
<link type="text/css" href="../../css/salary_style.css" rel="stylesheet" />
</head>
<body>
   <div id="contents" align="center">
   
<div style="float:left; "><h1>인사 관리자 페이지 입니다.</h1></div><br><br>
<div style=" margin:auto; text-align:center; margin-top: 80px"><h1>기본사항등록</h1></div>
<div>
         <form>
      
            <fieldset id="sudang">
            <legend>급여 지급 사항</legend>
         <table>
            <tr>
            <th>사원번호</th>
            <td>${empno }</td>
            <th>기본급</th>
            <td>${basicpay }</td>
            </tr>
            
            <tr>
            <th>사원명</th>
            <td>${name}</td>
            <th>식대</th>
            <td>${mealspay}</td>
            </tr>
            
            <tr>
            <th>급여구분</th>
            <td><input type="radio" name="gender" value="male" checked/> 고정급 
                    <input type="radio" name="gender" value="female"/> 변동급</td>
            <th>직책수당</th>
            <td>${dutypay}</td>
            </tr>
            
            <tr>
            <th>급여차수</th>
            <td>${payno }</td>
            <th>연장수당</th>
            <td>${overtimepay }</td>
            </tr>
         
            <tr>
            <td></td>
            <td></td>
            <th>지급 총액</th>
            <td>${totalpay}</td>
            </tr>
            
            
         </table>
             </fieldset><br>

            <button class="button">수정하기</button>
            <button class="button">메인으로</button>

         </form>
      </div>
   </div>
</body>
</html>