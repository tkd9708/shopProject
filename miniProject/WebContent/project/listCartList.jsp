<?xml version="1.0" encoding="UTF-8"?>
<%@page import="java.util.List"%>
<%@page import="ajax.cartlist.db.cartListDAO"%>
<%@page import="ajax.cartlist.db.cartListDTO"%>
<%@ page language="java" contentType="text/xml; charset=UTF-8"
    pageEncoding="UTF-8"%>

<list>
	<%
		String id = request.getParameter("id");
		cartListDAO dao = new cartListDAO();
		List<cartListDTO> list = dao.getList(id);
		
		for(cartListDTO dto: list){
			%>
			<cart num="<%=dto.getNum()%>">
				<id><%=dto.getId() %></id>
				<name><%=dto.getName() %></name>
				<pName><%=dto.getpName() %></pName>
				<proNum><%=dto.getProNum() %></proNum>
				<price><%=dto.getPrice() %></price>
				<photo><%=dto.getPhoto() %></photo>
				<amount><%=dto.getAmount() %></amount>	
			</cart>
			<%
		}
	%>
</list>