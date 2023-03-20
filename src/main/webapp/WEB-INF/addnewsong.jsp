<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <!-- c:out ; c:forEach etc. --> 
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!-- Formatting (dates) --> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"  %>
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- for rendering errors on PUT routes -->
<%@ page isErrorPage="true" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- for Bootstrap CSS -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />

<title>Add Song</title>
</head>
<body>
<div class="container border border-2">
	<h1>Add New Song</h1>
	<form:form action="/create/song" method="post" modelAttribute="song">
		
		 <div>
		 	<form:label path="title"> Title:</form:label>
		 	<form:input path="title"/>
		 	<form:errors path="title" class="text-danger"/>
		 </div>
		 <div>
		 	<form:label path="artist"> Artist:</form:label>
		 	<form:input path="artist"/>
		 	<form:errors path="artist" class="text-danger"/>
		 </div>
		 <div>
		 	<form:label path="rating"> Rating:</form:label>
		 	<form:input path="rating" type="number" />
		 	<form:errors path="rating" class="text-danger"/>
		 </div>
		 <button>Submit</button>
	</form:form>
</div>

</body>
</html>