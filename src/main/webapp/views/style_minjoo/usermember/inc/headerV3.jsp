<%@page import="com.korea.health.user.model.usermember.UserMemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
	<c:set var="path" value="${pageContext.request.contextPath}"/>
   <style>

        li ul{
            height: 0px;
            overflow: hidden;
            transition-duration: 0.5s;
        }
        
         li:hover ul{
            height: auto;
        }
        
</style>
	<header id="fh5co-header" role="banner">
		<div class="container">
			<div class="header-inner">
				<h1><a href="<c:url value="/MainV3"/>">FitNess Club</a></h1>
				<nav role="navigation">
					<ul>
						<li><a href="<c:url value="/style_hyeon/info.jsp"/>">Introduce</a></li>
						<li><a href="<c:url value="/style_hyeon/gangdong.jsp"/>">Find</a></li>
						<li><a href="<c:url value="/style_hyeon/membership.jsp"/>">MemberShip</a></li>
						<li><a href="<c:url value="/style_hyeji/resSystem.jsp"/>">reservation</a></li>
						<li><a href="<c:url value="/community"/>">community</a></li>
						<li><a href="<c:url value="${path }/style_jooho/event/event_page"/>">eventlist</a></li>
						<li><a href="<c:url value="${path }/style_jooho/payment/payment"/>">payment_main</a></li>
			                 <%
			                  if(session.getAttribute("id")==null){
			                	  //세션 id값이 null일때 join보여주세요 
			                	  %> 
			            <li class="cta"><a href="<c:url value="${path }/style_minjoo/usermember/login"/>">Login</a></li>
			                  <%
			                  }else{ //로그인 된 화면 
			                	  String id = (String)session.getAttribute("id"); //Object타입이므로 다운캐스팅 
			                	  %> 
			            <li><a href="<c:url value="${path }/style_minjoo/usermember/myPage"/>">${id }'s PAGE</a></li>
<%-- 			                      <li class="cta"><a href="<c:url value="${path }/style_minjoo/usermember/myPage"/>">${id } MY PAGE</a></li> --%>
			            <li class="cta"><a href="<c:url value="${path }/style_minjoo/usermember/logout"/>">Logout</a></li>
			                      <%
			                  }
			                  %>
					</ul>
				</nav>
			</div>
		</div>
	</header>