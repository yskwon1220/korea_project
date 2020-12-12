<%@page import="java.util.ArrayList"%>
<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	HashMap<String, ArrayList<String>>map = new HashMap();

	map.put("9일",new ArrayList<String>());
	map.put("10일",new ArrayList<String>());
	map.put("11일",new ArrayList<String>());
	
	map.get("9일").add("11:00");
	map.get("9일").add("13:00");
	map.get("9일").add("15:00");

	map.get("10일").add("07:00");
	map.get("10일").add("14:00");
	map.get("10일").add("16:00");
	map.get("10일").add("19:00");
	
	
	map.get("11일").add("22:00");
	map.get("11일").add("13:50");
	
	ArrayList arr = map.get(request.getParameter("timeList"));

%>    
<c:forEach items="<%=arr %>" var="nn">
${nn }
</c:forEach>
