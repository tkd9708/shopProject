<?xml version="1.0" encoding="UTF-8"?>
<%@page import="ajax.product.db.productDTO"%>
<%@page import="java.util.List"%>
<%@page import="ajax.product.db.productDAO"%>
<%@ page language="java" contentType="text/xml; charset=UTF-8"
    pageEncoding="UTF-8"%>

<list>
	<%
		productDAO dao = new productDAO();
		List<productDTO> list = dao.getList();
		
		for(productDTO dto: list){
			%>
			<product num="<%=dto.getNum()%>">
				<name><%=dto.getName() %></name>
				<brand><%=dto.getBrand() %></brand>
				<photo><%=dto.getPhoto() %></photo>
				<price><%=dto.getPrice() %></price>
				<amount><%=dto.getAmount() %></amount>	
				<info><%=dto.getInfo()%></info>
			</product>
			<%
		}
	%>
</list>