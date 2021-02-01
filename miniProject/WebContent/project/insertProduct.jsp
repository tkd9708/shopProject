<%@page import="ajax.product.db.productDAO"%>
<%@page import="ajax.product.db.productDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("UTF-8");

	String name = request.getParameter("name");
	String brand = request.getParameter("brand");
	String photo = request.getParameter("photo");
	String price = request.getParameter("price");
	String amount = request.getParameter("amount");
	String info = request.getParameter("info");
	
	productDTO dto = new productDTO();
	dto.setName(name);
	dto.setBrand(brand);
	dto.setPhoto(photo);
	dto.setAmount(amount);
	dto.setPrice(price);
	dto.setInfo(info);
	
	productDAO dao = new productDAO();
	dao.insert(dto);
%>