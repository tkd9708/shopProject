<%@page import="ajax.product.db.productDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	String num = request.getParameter("num");
	productDAO dao = new productDAO();
	dao.delete(num);

%>