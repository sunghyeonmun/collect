<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<html>
<head>
<title>Insert title here</title>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</head>
<body class="align">
      <form class="inputform">
        <div class="container">
	<div class="row">
        <div class="col-sm-10">
        </div>
        <!-- panel preview -->
        <div class="col-sm-10">
            <h3>사원번호 검색</h3>
            <br>
            <div class="panel panel-default">
                <div class="panel-body form-horizontal payment-form">
                <br>
                    <div class="form-group">
                        <label for="concept" class="col-sm-2 control-label">이름</label>
                        <div class="col-sm-8 form-inline" >
                            <input type="text" name="empno" class="form-control">
                        </div>
                    </div>
                    <br>
                    <div class="form-group form-inline">
                        <label for="description" class="col-sm-2 control-label">주민등록번호</label>
                       <div class="col-sm-8" >
                            <input type="text"  name="jumin1" class="form-control">
		&nbsp;-&nbsp;&nbsp;<input type="text" name="jumin2" class="form-control">
                        </div>
                    </div>
                    
                    <br>
                    <div class="form-group">
       				 <div class="col-sm-offset-2 col-sm-8">    
        			<input type="button" name="confirm" class="btn-default" value="검 색">
 					</div>
 					</div>
                     </div>
                    </div>
                </div>
            </div>            
        </div> 
        </form>
  </body>
</html>