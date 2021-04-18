<%@page import="member.model.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./WEB-INF/common/user.jsp" %>

<%
	Member loginInfo = (Member) session.getAttribute("loginInfo");
	if(loginInfo == null) session.setAttribute("destination","redirect:/user.jsp");
	else {
		String loginForm = (String) session.getAttribute("login");
		if(loginInfo.getNum() == 0 && loginForm == "true") {
			session.setAttribute("login", "false");
			response.sendRedirect("main.jsp"); // 관리자 첫로그인 시 홈으로!
		}
	}
%>

<%@ include file="./WEB-INF/common/footer.jsp" %>
