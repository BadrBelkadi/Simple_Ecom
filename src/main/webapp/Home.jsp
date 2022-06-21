<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/MyStyle.css" type="text/css">
<link rel="icon" type="image/x-icon" href="images/favicon.png">
<meta charset="ISO-8859-1">
<title>Home</title>
</head>
<body>
	<center>
		
		<div id="login-form-wrap2">
				<h2>Bonjour, Monsieur<b> <c:out value="${client.nom}"></c:out></b> </h2>
				<a href="catalogue?s=Jazz">
   					<input type="button" value="Consulter le catalogue" />
				</a><br><br>
				<a href="Commandes.jsp">
   					<input type="button" value="Suivre votre commande" />
				</a><br><br>
				<a href="Visualise?num=${client.codeClient}">
   					<input type="button" value="Visualiser votre panier" />
				</a>
		</div>
		
	</center> 
	<%-- <center>
		<h1>Home Page</h1>
		<h2>Hi Monsieur <c:out value="${client.nom}"></c:out> </h2>
	</center>
		<h3><a href="catalogue?s=Jazz">Consulter le catalogue</a></h3>
		<h3><a href="Commandes.jsp">Suivre votre commande</a></h3>
		<h3><a href="Visualise?num=${client.codeClient}">Visualiser votre panier</a></h3> --%>
</body>
</html>