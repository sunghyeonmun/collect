<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<html lang="ko">
<head>
<title>회원가입</title>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<link type="text/css" href="../../css/top_style.css" rel="stylesheet" />
</head>

<body>
    <div class="container">
	<div class="row">
      <div class="col-md-7 col-md-offset-2">
        <div class="well-sm">
          <form>
			<div id="Div_Top"><h1>회원가입</h1></div>
			<br><br><br>
			
            <!-- Emport input-->
            <div class="row">
            <div class="form-group">
              <label class="col-md-3 control-label" for="emport">사원 번호</label>
              <div class="col-md-6">
                <input type="text" name="empno" class="form-control">
              </div>
              
             <input type="button" class="btn-default" value="사원번호 찾기">
             </div>  
			</div>
			<br>
			
            <!-- Password input-->
            <div class="row">
            <div class="form-group">
              <label class="col-md-3 control-label" for="passwd">비밀번호</label>
              <div class="col-md-6">
                <input type="text" name="passwd" class="form-control">
              </div>
            </div>
    		</div>
    		<br>
    		
   	         <!-- Repassword input-->
   	         <div class="row">
            <div class="form-group">
              <label class="col-md-3 control-label" for="repasswd">비밀번호확인</label>
              <div class="col-md-6">
                <input type="text" name="repasswd" class="form-control" >
              </div>
            </div>
            </div>
			<br>	
					
            <!-- Name input-->
            <div class="row">
            <div class="form-group">
              <label class="col-md-3 control-label" for="name">성명</label>
              <div class="col-md-6">
                <input type="text" name="name" class="form-control">
              </div>
            </div>
      		</div>
      		<br>
      		
            <!-- Button input -->
            <div class="row">
            <div class="form-group">
              <div class="col-md-12 text-center">
               	<input type="submit" name="confirm" class="btn-default" value="가  입">
				<input type="reset" name="reset" class="btn-default" value="새로입력">
				<input type="button" class="btn-default" value="뒤로가기">
				</div>
              </div>
            </div>
          </form>
        </div>
      </div>
	</div>
	</div>
</body>
</html>
