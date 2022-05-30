<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
  </head>
  <link rel="stylesheet" href="css/main.css">
  <link rel="preconnect" href="https://fonts.googleapis.com"> <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2? family=Noto+Sans+KR:wght@500&display=swap" rel="stylesheet">
  <body style="overflow-x: hidden">
    <div class="page">
      <header>
        <!-- 헤더 : 로고 이미지-->
        <div id="d_logo">
          <img src="img\d_computer.png" alt="컴소과"></img> <!--과페이지 마다 바꾸기-->
        </div>
        <div id="DISCmain">
            <img src="img\DISCmain.png" alt="DISC"></img>
        </div>
        <button class="btn" id="latter_btn" type="button" onclick="location.href =''">
          <img class="btn-img" src="img\latter.png">
        </button>
        <button class="btn" id="mypage_btn" type="button" onclick="location.href =''">
          <img class="btn-img" src="img\mypage.png">
        </button>

        <!-- 헤더 : 메뉴구성-->

        <div class="page_menu">
          <ul id="menu">
            <li><a href="#">우리학과 게시판</a>
              <ul>
                <li><a href="#">자유게시판</a></li>
                <li><a href="#">질문과 답변 게시판</a></li>
                <li><a href="#">취업 정보 게시판</a></li>
                <li><a href="#">컴소 새내기 게시판</a></li>
                <li><a href="#">동아리 홍보 게시</a></li>
              </ul>
            </li>
            <li><a href="#">잡담 게시판</a>
              <ul>
                <li><a href="#">게임 게시판</a></li>
                <li><a href="#">비밀 게시판</a></li>
              </ul>
            </li>
            <li><a href="#">학습 게시판</a>
              <ul>
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
                <a class="title" href="#">
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
  </body>
</html>