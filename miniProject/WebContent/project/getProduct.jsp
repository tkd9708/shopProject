<%@page import="org.json.simple.JSONObject"%>
<%@page import="ajax.product.db.productDAO"%>
<%@page import="ajax.product.db.productDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String num = request.getParameter("num");

	productDTO dto = new productDTO();
	productDAO dao = new productDAO();
	dto = dao.getData(num);
	
	JSONObject ob = new JSONObject();
	ob.put("num", dto.getNum());
	ob.put("name", dto.getName());
	ob.put("brand", dto.getBrand());
	ob.put("photo", dto.getPhoto());
	ob.put("price", dto.getPrice());
	ob.put("amount", dto.getAmount());
	ob.put("info", dto.getInfo());
	
	
%>
<%=ob.toString()%>