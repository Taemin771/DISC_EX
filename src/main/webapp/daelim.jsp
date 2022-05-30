<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="daelim.DaelimDAO" %>
<%@ page import="daelim.Daelim" %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
  <meta charset="utf-8">
</head>

<link rel="stylesheet" href="css/bootstrap.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2? family=Noto+Sans+KR:wght@500&display=swap" rel="stylesheet">
<script src="https://kit.fontawesome.com/29d40dd6a7.js" crossorigin="anonymous"></script>
<script src="jsp/main.js" defer></script>



<%
		// 메인 페이지로 이동했을 때 세션에 값이 담겨있는지 체크
		String userID = null;
		if(session.getAttribute("userID") != null){
			userID = (String)session.getAttribute("userID");
		}		
		int pageNumber = 1; //기본은 1 페이지를 할당
		// 만약 파라미터로 넘어온 오브젝트 타입 'pageNumber'가 존재한다면
		// 'int'타입으로 캐스팅을 해주고 그 값을 'pageNumber'변수에 저장한다
		if(request.getParameter("pageNumber") != null){
			pageNumber = Integer.parseInt(request.getParameter("pageNumber"));
		}
%>

			<%
				// 로그인 하지 않았을 때 보여지는 화면
				if(userID == null){
			%>			
			<jsp:include page="notLogin.jsp" />
			<%
				// 로그인이 되어 있는 상태에서 보여주는 화면
				}else{
			%>	
			
  <link rel="stylesheet" href="css/board.css">
  <div class="page">
  
  	<!-- 헤더 템플릿 -->
    <jsp:include page="header.jsp" />
    
    <!-- 배너 부분 -->
    <div class="banner">
      <img src="img\boardbanner.png" alt="배너" align="center">
    </div>

    <a href="#" class="navbar_toogleBtn">
      <i class="fa-solid fa-bars"></i>
    </a>

 <!-- 게시판 -->
        <nav class="Borad_wrapper">
          <table class="sub_news" border="1" cellspacing="0" summary="게시판의 글제목 리스트">
            <caption>게시판 리스트</caption>
              <colgroup>
                <col>
                <col width="110">
                <col width="100">
                <col width="80">
              </colgroup>
              <thead>
                <tr>
                  <th scope="col">제목</th>
                  <th scope="col">글쓴이</th>
                  <th scope="col">날짜</th>
                  <th scope="col">조회수</th>
                </tr>
              </thead>
               <tbody>
					<%
						DaelimDAO daelimDAO = new DaelimDAO(); // 인스턴스 생성
						int cnt = daelimDAO.getNext();
					
						ArrayList<Daelim> list = daelimDAO.getList(pageNumber);
						for(int i = 0; i < list.size(); i++){
					%>
					<tr>
						<td><a href="view.jsp?daelimID=<%= list.get(i).getDaelimID() %>">
							<%= list.get(i).getDaelimTitle() %></a></td>
						<td><%= list.get(i).getUserID() %></td>	
						
						<!-- 게시글 제목을 누르면 해당 글을 볼 수 있도록 링크를 걸어둔다 -->
						
						
						<td><%= list.get(i).getDaelimDate().substring(0, 11) + list.get(i).getDaelimDate().substring(11, 13) + ":"
							+ list.get(i).getDaelimDate().substring(14, 16)  %></td>
						<td><%=list.get(i).getDaelimCount()%></td><!-- 조회수 -->
					</tr>
					<%
						}
					%>
				</tbody>
          </table>
          <div class="WriteButton"><a href="write.jsp"><img src="img\Wbutton.png" id="write"></a></div>
  <!--페이징 처리영역 -->
  <div class="paging_comm">
	<%
	int pageSize = 10;
	
	if(cnt != 0){ 
		////////////////////////////////////////////////////////////////
		// 페이징 처리
		// 전체 페이지수 계산
		int pageCount = cnt / pageSize + ( cnt%pageSize==0?0:1);
		
		// 한 페이지에 보여줄 페이지 블럭
		int pageBlock = 2;
		
		// 한 페이지에 보여줄 페이지 블럭 시작번호 계산
		int startPage = (( pageNumber-1)/pageBlock)*pageBlock+1;
		
		// 한 페이지에 보여줄 페이지 블럭 끝 번호 계산
		int endPage = startPage + pageBlock-1;
		if(endPage > pageCount){
			endPage = pageCount;
		}	
	%>
     
		<% if(startPage>pageBlock){ %>
			<a href="daelim.jsp?pageNumber=<%=startPage-pageBlock%>"" class="img_sample btn_prev">이전</a>
			
		<%} %>
	      
		<% for(int i=startPage;i<=endPage;i++){ %>
			<a href="daelim.jsp?pageNumber=<%=i%>" class="link_page"><%=i %></a>
			
			
			
		<%} %>
	    
		<% if(endPage<pageCount){ %>
			
			<a href="daelim.jsp?pageNumber=<%=startPage+pageBlock%>" " class="img_sample btn_next">다음</a>
		<%} %>
		<%} %>
 <%} %>
	
</div>




	 
	
	
 
</html>