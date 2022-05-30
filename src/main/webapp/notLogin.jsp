<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!-- 화면 최적화 -->
    <script>
    var index = 0;
    window.onload = function(){
        slideShow();
    }
    function slideShow() {
    var i;
    var x = document.getElementsByClassName("slide1");
    for (i = 0; i < x.length; i++) {
       x[i].style.display = "none";
    }
    index++;
    if (index > x.length) {
        index = 1;
    }
    x[index-1].style.display = "block";
    setTimeout(slideShow, 4000);   //함수를 4초마다 호출
  }
    $('[autofocus]').focus();
    </script>




<link rel="stylesheet" href="css/login.css">
<title>대림대학교</title>

</head>
<body>
	
	<!-- 로그인 양식 -->
	<div class="page">	
      <div class="page-content">
      	<div class="img-area">

          <div class="background-img">
            <img class="slide1" src="img\background.png" alt="bg">
            <img class="slide1" src="img\background2.png" alt="bg">
            <img class="slide1" src="img\background3.png" alt="bg">
          </div>
          
            <div class="logo-area">
            <img src="img\logo.png" alt="logo">
          </div>

          <div class="DISClogo-area">
            <img src="img\DISClogo.png" alt="DISC">
          </div>
        </div>
   
			
			 <div class="login-area">
				<form method="post" action="loginAction.jsp">
				
					
					<div class="login-input-id">
						<input type="text" class="form-control" placeholder="학번" name="userID" maxlength="20">
					</div>
					<div class="login-input-pd">
						<input type="password" class="form-control" placeholder="비밀번호" name="userPassword" maxlength="20">
					</div>
					
					<button class="btn" id="btn" type="submit">
               			 <img class="btn-img" src="img\button.png">
              		</button>
					
					
				</form>
			</div>
		</div>	
	</div>