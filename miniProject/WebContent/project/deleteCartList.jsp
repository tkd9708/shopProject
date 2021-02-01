<%@page import="ajax.cartlist.db.cartListDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	String num = request.getParameter("num");
	cartListDAO dao = new cartListDAO();
	dao.delete(num);
%>