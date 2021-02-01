<?xml version="1.0" encoding="UTF-8"?>
<%@page import="ajax.customer.db.customerDTO"%>
<%@page import="java.util.List"%>
<%@page import="ajax.customer.db.customerDAO"%>
<%@ page language="java" contentType="text/xml; charset=UTF-8"
    pageEncoding="UTF-8"%>

<list>
	<%
		customerDAO dao = new customerDAO();
		List<customerDTO> list = dao.getList();
		
		for(customerDTO dto: list){
			%>
			<customer id="<%=dto.getId()%>">
				<password><%=dto.getPassword() %></password>
				<name><%=dto.getName() %></name>
				<gender><%=dto.getGender() %></gender>
				<birthday><%=dto.getBirthday() %></birthday>
				<address><%=dto.getAddress() %></address>
				<phone><%=dto.getPhone() %></phone>
				<question><%=dto.getQuestion() %></question>	
				<answer><%=dto.getAnswer()%></answer>
			</customer>
			<%
		}
	%>
</list>