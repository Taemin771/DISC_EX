<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 화면 최적화 -->



<link rel="stylesheet" href="css/bootstrap.css">
<link rel="preconnect" href="https://fonts.googleapis.com"> <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2? family=Noto+Sans+KR:wght@500&display=swap" rel="stylesheet">
<title>JSP 게시판 웹 사이트</title>
</head>

	<%
		// 메인 페이지로 이동했을 때 세션에 값이 담겨있는지 체크
		String userID = null;
		if(session.getAttribute("userID") != null){
			userID = (String)session.getAttribute("userID");
		}
	%>
	
		<!-- 게시판 제목 이름 옆에 나타나는 메뉴 영역 -->
	
			<%
				// 로그인 하지 않았을 때 보여지는 화면
				if(userID == null){
			%>
		
			
			<jsp:include page="notLogin.jsp" />
			
			
			<%
				// 로그인이 되어 있는 상태에서 보여주는 화면
				}else{
			%>
<link rel="stylesheet" href="css/main.css">			
 <div class="page">
      <jsp:include page="header.jsp" />

      <!-- 게시판 미리보기 영역-->

      <div id="container">

        <!--배너 -->
        <div class="banner">
          <img src="img\banner4.png" alt="배너"  align="center">
        </div>

        <!--게시판-->
        <div id="container">
          <div class="main">
            <div class="card">
              <div class="board">
                <a class="title" href="#">
                  <img src="img\hot.png" alt="핫 게시글">
                </a>
                <a class="list" href="#">
                  <time>10분전</time>
                  <p>제목<p>
                  <hr>
                </a>
                <a class="list" href="#">
                  <time>10분전</time>
                  <p>제목2<p>
                  <hr>
                </a>
                <a class="list" href="#">
                  <time>10분전</time>
                  <p>제목3<p>
                  <hr>
                </a>
                <a class="list" href="#">
                  <time>10분전</time>
                  <p>제목4<p>
                  <hr>
                </a>
              </div>
            </div>
            <div class="card">
              <div class="board">
                <a class="title" href="#">
                  <img src="img\best.png" alt="베스트 게시글">
                </a>
                <a class="list" href="#">
                  <time>10분전</time>
                  <p>제목<p>
                  <hr>
                </a>
                <a class="list" href="#">
                  <time>10분전</time>
                  <p>제목2<p>
                  <hr>
                </a>
                <a class="list" href="#">
                  <time>10분전</time>
                  <p>제목3<p>
                  <hr>
                </a>
                <a class="list" href="#">
                  <time>10분전</time>
                  <p>제목4<p>
                  <hr>
                </a>
              </div>
            </div>
            <div class="card">
              <div class="board">
                <a class="title" href="daelim.jsp">
                  <img src="img\free.png" alt="자유 게시글">
                </a>
                <a class="list" href="#">
                  <time>10분전</time>
                  <p>제목<p>
                  <hr>
                </a>
                <a class="list" href="#">
                  <time>10분전</time>
                  <p>제목2<p>
                  <hr>
                </a>
                <a class="list" href="#">
                  <time>10분전</time>
                  <p>제목3<p>
                  <hr>
                </a>
                <a class="list" href="#">
                  <time>10분전</time>
                  <p>제목4<p>
                  <hr>
                </a>
              </div>
            </div>
            <div class="card">
              <div class="board">
                <a class="title" href="#">
                  <img src="img\QnA.png" alt="핫 게시글">
                </a>
                <a class="list" href="#">
                  <time>10분전</time>
                  <p>제목<p>
                  <hr>
                </a>
                <a class="list" href="#">
                  <time>10분전</time>
                  <p>제목2<p>
                  <hr>
                </a>
                <a class="list" href="#">
                  <time>10분전</time>
                  <p>제목3<p>
                  <hr>
                </a>
                <a class="list" href="#">
                  <time>10분전</time>
                  <p>제목4<p>
                <hr>
                </a>
              </div>
            </div>
            <div class="card">
              <div class="board">
                <a class="title" href="#">
                  <img src="img\JAVA.png" alt="핫 게시글">
                </a>
                <a class="list" href="#">
                  <time>10분전</time>
                  <p>제목<p>
                  <hr>
                </a>
                <a class="list" href="#">
                  <time>10분전</time>
                  <p>제목2<p>
                  <hr>
                </a>
                <a class="list" href="#">
                  <time>10분전</time>
                  <p>제목3<p>
                  <hr>
                </a>
                <a class="list" href="#">
                  <time>10분전</time>
                  <p>제목4<p>
                  <hr>
                </a>
              </div>
            </div>
            <div class="card">
              <div class="board">
                <a class="title" href="#">
                  <img src="img\동아리.png" alt="핫 게시글">
                </a>
                <a class="list" href="#">
                  <time>10분전</time>
                  <p>제목<p>
                  <hr>
                </a>
                <a class="list" href="#">
                  <time>10분전</time>
                  <p>제목2<p>
                  <hr>
                </a>
                <a class="list" href="#">
                  <time>10분전</time>
                  <p>제목3<p>
                  <hr>
                </a>
                <a class="list" href="#">
                  <time>10분전</time>
                  <p>제목4<p>
                  <hr>
                </a>
              </div>
            </div>
        </div>
      </div>
    </div>
			
			
			<%
				}
			%>
    
           
</body>
</html>

