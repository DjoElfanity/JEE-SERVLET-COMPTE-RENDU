<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<c:set var="valeur_max" value ="${15}"/>

<c:forEach var="i" begin="${3}" end="${valeur_max}">
	<c:set var="premier" value="${true }"></c:set>
		<c:forEach var="j" begin="${2}" end="${i-1}">
		<c:if test="${i%j == 0}">
			<c:set var="premier" value="${false}"></c:set>
		</c:if>
		</c:forEach>
		<c:choose>
		 	<c:when test="${premier}">
		 	<c:out value="${i} est un nombre premier"></c:out><br>
		 	</c:when>
		 	<c:otherwise>
		 	<c:out value="${i} n'est pas un nombre premier"></c:out><br>
		 	</c:otherwise>
		 	
		 	
		
		</c:choose>
		
		
		
		
</c:forEach>


</body>
</html>