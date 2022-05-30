<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <header>
      <!-- 헤더 : 로고 이미지-->
      <nav class="navbar">
        <div id="d_logo">
          <img src="img\d_computer.png" alt="컴소과"></img>
          <!--과페이지 마다 바꾸기-->
        </div>
        <div id="DISCmain">
          <a href="/main.jsp">
          <img src="img\DISCmain.png" alt="DISC"" ></img></a>
        </div>
        <div class="buttons">
          <button class="btn" id="latter_btn" type="button" onclick="location.href =''">
            <img class="btn-img" src="img\latter.png">
          </button>
          <button class="btn" id="mypage_btn" type="button" onclick="location.href =''">
            <img class="btn-img" src="img\mypage.png">
          </button>
        </div>
      </nav>

      <!-- 헤더 : 메뉴구성-->
      <div class="page_menu">
        <ul>
          <li><button onClick="dp_menu1()" class="button">우리학과 게시판</button>
            <ul id="drop-content1">
              <li><a href="#">자유게시판</a></li>
              <li><a href="#">질문과 답변 게시판</a></li>
              <li><a href="#">취업 정보 게시판</a></li>
              <li><a href="#">컴소 새내기 게시판</a></li>
              <li><a href="#">동아리 홍보 게시판</a></li>
            </ul>
          </li>
          <li><button onClick="dp_menu2()" class="button">잡담 게시판</button>
            <ul id="drop-content2">
              <li><a href="#">게임 게시판</a></li>
              <li><a href="#">비밀 게시판</a></li>
            </ul>
          </li>
          <li><button onClick="dp_menu3()" class="button">학습 게시판</button>
            <ul id="drop-content3">
              <li><a href="#">IT 이슈 / 시사</a></li>
              <li><a href="#">C++ / C#</a></li>
              <li><a href="#">Phython</a></li>
              <li><a href="#">JAVA</a></li>
              <li><a href="#">HTML</a></li>
            </ul>
          </li>
        </ul>
      </div>
    </header>


</body>
</html>