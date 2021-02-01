<%@page import="ajax.cartlist.db.cartListDTO"%>
<%@page import="java.util.List"%>
<%@page import="ajax.cartlist.db.cartListDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	String id = request.getParameter("id");
	cartListDAO dao = new cartListDAO();
	List<cartListDTO> list = dao.getList(id);
	
	for(cartListDTO dto : list){
		dao.amountUpdate(dto);
		dao.delete(dto.getNum());
	}
		
%>