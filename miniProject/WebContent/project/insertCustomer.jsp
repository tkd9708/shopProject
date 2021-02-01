<%@page import="ajax.customer.db.customerDAO"%>
<%@page import="ajax.customer.db.customerDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	request.setCharacterEncoding("UTF-8");

	String id = request.getParameter("id");
	String password = request.getParameter("password");
	String name = request.getParameter("name");
	String gender = request.getParameter("gender");
	String address = request.getParameter("address");
	String birthday = request.getParameter("birthday");
	String phone = request.getParameter("phone");
	String question = request.getParameter("question");
	String answer = request.getParameter("answer");
	
	customerDTO dto = new customerDTO();
	dto.setName(name);
	dto.setId(id);
	dto.setPassword(password);
	dto.setAddress(address);
	dto.setAnswer(answer);
	dto.setBirthday(birthday);
	dto.setGender(gender);
	dto.setPhone(phone);
	dto.setQuestion(question);

	customerDAO dao = new customerDAO();
	dao.insert(dto);
%>