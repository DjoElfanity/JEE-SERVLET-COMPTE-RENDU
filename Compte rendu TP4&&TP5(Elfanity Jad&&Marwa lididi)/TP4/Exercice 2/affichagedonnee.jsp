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

<strong>Vous avez choisi les informations suivantes:</strong>
<ul>

<li>Ecole:</li>	<br>
<c:out value="${param.ecole }"></c:out> <br>
<li>langue :</li>

<c:forTokens  var ="lang" items="${param.specification_langues }" delims=",">
- <c:out value="${lang }"></c:out> <br>
</c:forTokens>

<li>Votre nom est:  </li>
<c:out value="${param.nom }"></c:out> <br>

<li>Votre prenom est:  </li>
<c:out value="${param.prenom }"></c:out> <br>




<H1>En resumé :</H1>

<h3>Vous vous nommez:</h3> <br>
<c:out value="${param.nom }"></c:out> <c:out value="${param.prenom }"></c:out> <br>

<h3>Vous aimez pratiquer quelle sport</h3> <br>


<c:choose>
<c:when test="${param.specification_sport}=='Aucun'">
Vous n'aimez aucun sport <br>
</c:when>
<c:otherwise>
vous aimez : <c:out value="${param.specification_sport }"></c:out> <br>
</c:otherwise>

</c:choose>


<h3>Vous parlez les langues suivantes: </h3>  <br>
<c:forTokens  var ="lang" items="${param.specification_langues }" delims=",">
- <c:out value="${lang }"></c:out> <br>
</c:forTokens><br>

</ul>

<!--
 CONDITION EN JSP
String choix = request.getParameter("specification_sport");
if (choix.equals("Aucun"))
{
	out.println("Vous n'aimez aucun sport");
}
else
{
	out.println("Vous aimez :"+choix);
}
%>-->

</body>
</html>