<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="daelim.Daelim" %>
<%@ page import="user.UserDAO" %>
<%@ page import="daelim.DaelimDAO" %>
<%@ page import="likey.LikeyDAO" %>
<%@ page import="java.io.PrintWriter" %>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 게시판 웹 사이트</title>
</head>
<body>
<%
      String userID = null;
      if(session.getAttribute("userID")!=null){
         userID=(String)session.getAttribute("userID");
      }
      if(userID==null){
         PrintWriter script=response.getWriter();
         script.println("<script>");
         script.println("alert('로그인을 해주세요.')");
         script.println("location.href='login.jsp'");
         script.println("</script>");
      }
      int daelimID=0;
      if(request.getParameter("daelimID")!=null)
         daelimID=Integer.parseInt(request.getParameter("daelimID"));
      if(daelimID==0){
         PrintWriter script=response.getWriter();
         script.println("<script>");
         script.println("alert('유효하지 않은 글입니다.')");
         script.println("location.href='daelim.jsp'");
         script.println("</script>");
      }
      DaelimDAO daelimDAO = new DaelimDAO();
      LikeyDAO likeyDAO = new LikeyDAO();
      int result = likeyDAO.like(userID,daelimID);
      
      if(result == 1){
         result = daelimDAO.like(daelimID);
         if(result == 1){
            PrintWriter script=response.getWriter();
            script.println("<script>");
            script.println("alert('추천이 완료되었습니다.')");
            script.println("location.href= \'view.jsp?daelimID="+daelimID+"\'");
            script.println("</script>");
         } else{
            PrintWriter script=response.getWriter();
            script.println("<script>");
            script.println("alert('데이터베이스 오류가 발생했습니다.')");
            script.println("location.href=document.referrer;");
            script.println("</script>");
         }
      } else{
         PrintWriter script=response.getWriter();
         script.println("<script>");
         script.println("alert('이미 추천을 누른 글입니다.')");
         script.println("location.href='daelim.jsp'");
         script.println("</script>");
      }
   %>
</body>
</html>