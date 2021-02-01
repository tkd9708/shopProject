<%@page import="org.json.simple.JSONObject"%>
<%@page import="ajax.customer.db.customerDTO"%>
<%@page import="ajax.customer.db.customerDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = request.getParameter("id");

	customerDAO dao = new customerDAO();
	
	customerDTO dto = new customerDTO();
	dto = dao.getData(id);
	
	JSONObject ob = new JSONObject();
	ob.put("id", dto.getId());
	ob.put("password", dto.getPassword());
	ob.put("name", dto.getName());
	ob.put("address", dto.getAddress());
	ob.put("gender", dto.getGender());
	ob.put("phone", dto.getPhone());
	ob.put("birthday", dto.getBirthday());
	ob.put("question", dto.getQuestion());
	ob.put("answer", dto.getAnswer());
	
	
%>
<%=ob.toString()%>