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

<title>DashBoard</title>
</head>
<body>
	<div class="container" >
	
	<!-- implementing table and search for song and by the artist -->
	<div class="d-flex bd-highlight mb-3"> 
		<div class="me-auto p-3 bd-highlight" > <a class="text text-primary bd-highlight p-2" href="/create/song" >Add New</a> 
			<a href="" class="text text-primary bd-highloight p-2"> Top Ten</a>
		</div>
		<div>
		
		<!-- searching for by the artist containing -->
		</div>
		
		
		</div>
		
		
		<div>
			<table class="table table-striped table-hover"> 
				<thead class="table-dark">
					<tr>
						<th>Songs</th>
						<th> Artist</th>
						<th> Rating</th>
						<th> Actions</th>
					</tr>
				</thead>
				<tbody>
				
				<c:forEach var="listOfSong" items="${allSongs}">
					<tr>
						<td><c:out value="${listOfSong.Title}"></c:out> </td>
						<td> <c:out value="${listOfSong.Artist}"></c:out> </td>
						<td> <c:out value="${listOfSong.Rating}"></c:out> </td>
						<td> <c:out value=""></c:out></td>
						
					</tr>
				
				</c:forEach>
				</tbody>
			</table>
		</div> 
	
	
	
	</div>
	
	
	

</body>
</html>