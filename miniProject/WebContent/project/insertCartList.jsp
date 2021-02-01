<%@page import="ajax.cartlist.db.cartListDAO"%>
<%@page import="ajax.cartlist.db.cartListDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%

	request.setCharacterEncoding("UTF-8");

	String id = request.getParameter("id");
	String proNum = request.getParameter("proNum");
	String amount = request.getParameter("amount");
	
	cartListDTO dto = new cartListDTO();
	dto.setId(id);
	dto.setProNum(proNum);
	dto.setAmount(amount);
	
	cartListDAO dao = new cartListDAO();
	dao.insert(dto);
%>