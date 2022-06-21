<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="icon" type="image/x-icon" href="images/favicon.png">
<link rel="stylesheet" href="css/MyStyle.css" type="text/css">

<meta charset="ISO-8859-1">
<title>Details</title>

</head>
<body>

	<center>
		<div id="detail">
		<h2>Détail de l'article</h2>
		<img src="${item.photo}" width="120" height="100"><br><br>
		Référence &nbsp; : <input type="text" value="${item.codeArticle}" readonly><br><br>
		Stock &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: <input type="text" value="${item.stock}" readonly><br><br>
		Titre &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : <input type="text" value="${item.designation}" readonly><br><br>
		Prix &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: <input type="text" value="${item.price}" readonly><br><br>

	<a href="catalogue?s=Jazz"><input type="button" value="Retour" /></a>
	<a href="Panier?num=${item.codeArticle}"><input type="button" value="Ajouter au Panier" /></a>
	</div>
	</center>
</body>
</html>