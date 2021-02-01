<%@page import="ajax.customer.db.customerDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	String id = request.getParameter("id");
	customerDAO dao = new customerDAO();
	dao.delete(id);

%>