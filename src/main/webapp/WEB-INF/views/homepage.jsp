<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns:th="http://www.thymeleaf.org">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>EMPLOYEE RECORDS</title>

<link rel="stylesheet" type="text/css" media="all" href="../../resources/static/css/bootstrap.min.css" />
<script type="text/javascript" th:src="@{​​​​​​​js/jquery.min.js}​​​​​​​" src="../../resources/static/js/jquery.min.js"></script>
<script type="text/javascript" th:src="@{​​​​​​​js/bootstrap.min.js}​​​​​​​" src="../../resources/static/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="../resources/static/js/main.js" th:src="@{/js/main.js}" ></script>

</head>
<body>
<br>

    	<div class="container">
	<div class="card">
		<div class="card-header">
		  <h3>EMPLOYEE RECORDS</h3>	
		  <button onclick="window.location.href='${pageContext.request.contextPath}/new'" class="btn btn-info">Add Employee</button>	  
		</div>
		<div class="card-body">	
		    <table class="table" >
		        <tr>
		        	<th>ID</th>
		            <th>Name</th>
		            <th>Designation</th>
		            <th>Actions</th>
		        </tr>
		        <c:forEach items="${list}" var="e">
		            <tr>
		            	<td>${e.id}</td>
		                <td>${e.name}</td>
		                <td>${e.designation}</td>
						<td>		                   
		                   	<a href = "${pageContext.request.contextPath}/employee/${e.id}" 
		                   	class="btn btn-primary btn-sm">Edit</a>
		                    
		                    <a href = "${pageContext.request.contextPath}/delete/${e.id}" 
		                    class="btn btn-danger btn-sm" id="deleteButton" data-toggle="modal" data-target="#myModal">Delete</a>
		                </td>				                
		            </tr>
		        </c:forEach>
		    </table>		    
   		 </div>
		
		<!-- Modal -->
		<div id="myModal" class="modal fade" role="dialog">
		  <div class="modal-dialog">
			<!--     Modal content -->
		    <div class="modal-content">
		      <div class="modal-header">
		      	<h4 class="modal-title">Delete records!</h4>
		        <button type="button" class="close" data-dismiss="modal">&times;</button>   
		      </div>
		      <div class="modal-body">
		        <p class="alert alert-danger">
		       	 Are you sure you want to delete this record?
		        </p>
		      </div>
		      <div class="modal-footer">
		        <a href="" class="btn-btn-primary" id="delRef">Yes, Delete</a>
		        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
		      </div>
		    </div>
		  </div>
		</div>
	</div>
	</div>
</body>
</html>