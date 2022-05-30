<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="daelim.Daelim" %>
<%@ page import="daelim.DaelimDAO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 화면 최적화 -->

<title>자유게시판</title>
</head>




	<%
		// 메인 페이지로 이동했을 때 세션에 값이 담겨있는지 체크
		String userID = null;
		if(session.getAttribute("userID") != null){
			userID = (String)session.getAttribute("userID");
		}
		// daelimID를 초기화 시키고
				// 'daelimID'라는 데이터가 넘어온 것이 존재한다면 캐스팅을 하여 변수에 담는다
				int daelimID = 0;
				if(request.getParameter("daelimID") != null){
					daelimID = Integer.parseInt(request.getParameter("daelimID"));
				}
				
				// 만약 넘어온 데이터가 없다면
				if(daelimID == 0){
					PrintWriter script = response.getWriter();
					script.println("<script>");
					script.println("alert('유효하지 않은 글입니다')");
					script.println("location.href='daelim.jsp'");
					script.println("</script");
				}
				
				// 유효한 글이라면 구체적인 정보를 'daelim'라는 인스턴스에 담는다
				Daelim daelim = new DaelimDAO().getDaelim(daelimID);
	%>
	
			<%
				// 로그인 하지 않았을 때 보여지는 화면
				if(userID == null){
			%>
			<!-- 헤더 우측에 나타나는 드랍다운 영역 -->
			<jsp:include page="notLogin.jsp" />
			<%
				// 로그인이 되어 있는 상태에서 보여주는 화면
				}else{
					
			%>
<link rel="stylesheet" href="css/board_in.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2? family=Noto+Sans+KR:wght@500&display=swap" rel="stylesheet">
<script src="https://kit.fontawesome.com/29d40dd6a7.js" crossorigin="anonymous"></script>
<script src="jsp/main.js" defer></script>
 	<!-- 헤더 템플릿 -->
    <jsp:include page="header.jsp" />
    


<body style="overflow-x: hidden">
<div class="page">
  <div class="articleWrap">
<table cellpadding="0" cellspacing="0" border="0" style="table-layout:fixed; word-wrap: break-word; clear: both;">
        <tbody>
          <tr>
            <td>
              <div id="tbArticle">
                <div class="articleHead">
                  <div class="articleInfo">
                    <div class="articleWriter">
                      <h1><%= daelim.getUserID() %></h1>
                    </div>
                    <div class="articleDate"><%= daelim.getDaelimDate().substring(0, 11) + daelim.getDaelimDate().substring(11, 13) + "시"
								+ daelim.getDaelimDate().substring(14, 16) + "분" %></div>
                    <div class="articleHit">
                      <strong>조회수 : <%=daelim.getDaelimCount() + 1 %></strong>
                       &nbsp;&nbsp;&nbsp;
                      <strong>추천 : <%= daelim.getLikeCount() %></strong>
                      
                    </div>
                  </div>
                </div>
                <div class="articleMain">
                  <div class="articleSubject">
                    <div class="articleTitle">
                      <h1><%= daelim.getDaelimTitle().replaceAll(" ", "&nbsp;")
								.replaceAll("<", "&lt;").replaceAll(">", "&gt;").replaceAll("\n", "<br>") %></h1>
                    </div>
                  </div>
                  <div class="articleContent">
                    <div id="imageCollectDiv" class="contentBody">
                      <!-- 글내용 시작 -->
                      <div id="powerbbsContent">
                        <div><%= daelim.getDaelimContent().replaceAll(" ", "&nbsp;")
							.replaceAll("<", "&lt;").replaceAll(">", "&gt;").replaceAll("\n", "<br>") %></div>
                        <div>
                          <br>
                          <br>
                        </div>
                
                      <!--글의 끝 -->
                    </div>
                    <div class="ViewRecom">
                      <div class="botmenuCenter">
                        <div class="btnRecom">
                         <a onclick="return confirm('추천하시겠습니까?')" href="likeAction.jsp?daelimID=<%=daelimID %>" id="good_button" class="btn_good">
                        
                           <i class="fa-solid fa-heart"></i>
                           추천
                           <strong><%= daelim.getLikeCount() %></strong>
                        </a>
                        </div>
                      </div>
                    </div>
                  </div>
               </div>
            </div>
            </div>
          </td>
        </tr>
      </table>
    <!--댓글-->
    <table cellpadding="0" cellspacing="0" border="0" style="table-layout:fixed; word-wrap: break-word; clear: both;">
      <tbody>
        <tr>
          <td>
            <div id="pwrbbsCmt2">
              <div class="cmtWrap">
                <div class="cmtHead">
                 
          </td>
        </tr>
      </tbody>
    </table>
    </div>
             <a href="daelim.jsp" class="btn btn-primary">목록</a>
         <a onclick="return confirm('추천하시겠습니까?')" href="likeAction.jsp?daelimID=<%=daelimID %>" class="btn btn-success pull-right">👍</a>
         <%
            if(userID != null && userID.equals(daelim.getUserID())){
         %>
         <a href="update.jsp?daelimID=<%= daelimID %>" class="btn btn-primary">수정</a>
         <a href="deleteAction.jsp?daelimID=<%= daelimID %>"
            class="btn btn-primary">삭제</a>
  <%
				}
			%>
	

			<%
				}
			%>
	
	  
	
</body>
</html>