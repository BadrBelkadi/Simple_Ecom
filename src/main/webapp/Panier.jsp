<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %> 

<!DOCTYPE html>
<html>
<head>
<link rel="icon" type="image/x-icon" href="images/favicon.png">
<link rel="stylesheet" href="css/MyStyle.css" type="text/css">
<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">


<meta charset="ISO-8859-1">
<title>Panier</title>
</head>
<body>
	<center>
	<div id="panier">
	<h2>Bonjour, Monsieur <b><c:out value="${client.nom}"/></b></h2>
	<sql:setDataSource var="data" user="root" password="" driver="com.mysql.cj.jdbc.Driver" url="jdbc:mysql://localhost/micro_projet" />
	<br>
	<center><p><i>Votre panier</i></p></center>
	</div>
	<br><br>
	<table class="table table-hover table-borderless">
	
	<tr style="text-align:center" class="table-info"><th>Num Commande</th><th>Date De Commande</th><th>Code Article</th><th>Article</th><th>Image</th></tr>
	
	<c:forEach items="${listecommande}" var="commande">
		<sql:query var="result" sql="SELECT * from articles where codeArticle='${commande.codeArticle}';" dataSource="${data}"/>
		<tr class="table-light">
			<td style="text-align:center"><c:out value="${commande.numCommande}"/></td>
			<td style="text-align:center"><c:out value="${commande.dateCommande}"/></td>
			<td style="text-align:center"><c:out value="${commande.codeArticle}"/></td>
			<td style="text-align:center"><c:out value="${result.rows[0].designation}"/></td>
			<td style="text-align:center"><img src="images/${result.rows[0].photo}" width="80" height="50"></td>
		</tr>
	</c:forEach>
	</table>
	</center>
</body>
</html>