<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator"%>
<html lang="ko">
<head>
<title><decorator:title /></title>


<link type="text/css" href="../../css/top_style.css" rel="stylesheet" />
<style>
.button {
  display: inline-block;
  padding: 8px 12px;
  font-size: 13px;
  cursor: pointer;
  text-align: center;
  text-decoration: none;
  outline: none;
background-color: #e7e7e7; 
color: black;
  border: none;
  border-radius: 15px;
}

.button:hover {
background-color: #296EE8;
color: #fff;
}

</style>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">
$(function(){ 
    var menupos = $("#header").offset().top; 
    $(window).scroll(function(){ 
       if($(window).scrollTop() >= menupos) { 
          $("#header").css("position","fixed"); 
          $("#header").css("top","0");
        $('#top_mar').show();
          } 
    }); 
 }); 
 </script>
 
<script type="text/javascript">
   $(document).ready(function(){  
      $(".topnav").hover(function() { //마우스를 topnav에 오버시
         $(this).parent().find(".subnav").slideDown('normal').show(); //subnav가 내려옴.
         $(this).parent().hover(function() {  
         }, function(){  
            $(this).parent().find(".subnav").slideUp('fast'); //subnav에서 마우스 벗어났을 시 원위치시킴  
         });  
      });  
     
   });  
</script>
<decorator:head />
</head>

<body>
<div id="wrap">
   <div id="header">
      <div id="logo">
         <div id="logoimg"><img src="../../img/g_logo.png"></div>
            <div id="logo_logout">
            <button class="button" onclick="alert('로그아웃')">로그아웃</button>
            </div>
      </div>
         <div class="navi_bg">
            <div class="nav">  

               <li class="navi_set">  
                  <div class="topnav" onclick="top.location.href='http://www.naver.com';">공지사항</div>
               </li>  

               <li class="navi_set">  
                  <div class="topnav" onclick="window.open('http://www.naver.com')">인사 관리</div>
                  <ul class="subnav">  
                     <li>인사카드 사원 등록</li> 
                     <li>사원 명부 검색</li>  
                  </ul>  
               </li> 
               
               <li class="navi_set">  
                  <div class="topnav">근태 관리</div>
                  <ul class="subnav">  
                     <li>근태 현황 조회</li>
                     <li>휴가 잔여 일수</li>  
                  </ul> 
               </li> 

               <li class="navi_set">  
                  <div class="topnav">급여 관리</div>
                  <ul class="subnav">  
                     <li>기본 사항 등록</li>  
                     <li>수당 항목 등록</li> 
                     <li>급여 자동 계산</li>
                  </ul> 
               </li>

               <li class="navi_set">  
                  <div class="topnav">증명서 출력</div>
                  <ul class="subnav">  
                     <li>증명서 발급 관리</li> 
                  </ul> 
               </li> 
            </div>
         </div>
   </div>


   <div id="top_mar" style="display:none;"></div>
<decorator:body />
<!-- 헤더영역 끝 -->

</div>  
</body>
</html>