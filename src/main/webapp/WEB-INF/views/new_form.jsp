<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html  xmlns="http://www.w3.org/1999/xhtml" 
	   xmlns:th="http://www.thymeleaf.org">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<link rel="stylesheet" type="text/css" media="all" href="../../resources/static/css/bootstrap.min.css" />
<script type="text/javascript" th:src="@{​​​​​​​js/jquery.min.js}​​​​​​​" src="../../resources/static/js/jquery.min.js"></script>
<script type="text/javascript" th:src="@{​​​​​​​js/bootstrap.min.js}​​​​​​​" src="../../resources/static/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="../resources/static/js/main.js" th:src="@{/js/main.js}" ></script>

</head>
<body>
<br>
<div class="container">
	<div class="card" style="width:600px">	
		<div class="card-body">
		    <h4 class="card-title">Add New Employee</h4>
			    <form:form action = "${pageContext.request.contextPath}/save" modelAttribute="employee">
			        Enter Name: <form:input path="name"  class="form-control"/><br/>
			        
			        Enter designation: <form:input path="designation"  class="form-control"/><br/>        
			        
			        <form:hidden path = "id"/>
			        
			        <button class="btn btn-success" type = "submit">Save</button>
			    </form:form>
		</div>
	</div>
</div>
</body>
</html>