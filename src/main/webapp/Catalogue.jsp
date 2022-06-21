<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
<head>
<link rel="icon" type="image/x-icon" href="images/favicon.png">
<link rel="stylesheet" href="css/MyStyle.css" type="text/css">
<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
<meta charset="ISO-8859-1">
<title>Catalogue</title>
</head>
<body>
	<center>
	<div id="catalogue">
		<h2>Catalogue</h2>
		<form action="catalogue" method="post">
				<p>Choisissez votre genre : </p> 
				<input type="text" name="s">	
				<input type="submit" value="Récupérer"/>
		</form>
	</div>
	
	<br><br><br>
	<table class="table table-hover table-borderless">
	<thead>
		<tr style="text-align:center" class="table-info"><th>Référence</th><th>Titre</th><th>Prix</th><th>Photo</th><th>&nbsp</th>
	</thead>
	<tbody>
		<!-- <tr><td>RAP</td><td>After Hours</td><td>The weeknd</td><td>Photo</td><td><a href="test">Panier</a></td></tr> -->
		<c:forEach items="${listeArticle}" var="article">
		<tr>
		<td style="text-align:center"><a href="Detail?num=${article.codeArticle}"><c:out value="${article.codeArticle}"></c:out></a></td>
		<td style="text-align:center"><c:out value="${article.designation}"></c:out></td>
		<td style="text-align:center"><c:out value="${article.price}"></c:out></td>
		<td style="text-align:center"><img src="images/${article.photo}" width="100" height="80"></td>
		<td style="text-align:center"><a href="Panier?num=${article.codeArticle}"><img src="images/without.png" height="50" width="50"></a></td>
		</tr>
	</tbody>	
		</c:forEach>
	</table>
	</center>
</body>
</html>