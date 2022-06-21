<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="icon" type="image/x-icon" href="images/favicon.png">
<link rel="stylesheet" href="css/StyleLogin.css" type="text/css">

<meta charset="ISO-8859-1">
<title>Inscription</title>
</head>
<body>
	<div id="login-form-wrap">
	    <h2>Inscription</h2>
	    <form id="login-form" action="signup" method="post">
	      <p>
	        <input type="email" id="email" name="email" placeholder="Adresse Email" required><i
	          class="validation"><span></span><span></span></i>
	      </p>
	      <p>
	        <input type="text" id="nom" name="nom" placeholder="Nom" required><i
	          class="validation"><span></span><span></span></i>
	      </p>
	      <p>
	        <input type="text" id="prenom" name="prenom" placeholder="Prenom" required><i
	          class="validation"><span></span><span></span></i>
	      </p>
	      <p>
	        <input type="tel" id="tel" name="tel" placeholder="Téléphone" required><i
	          class="validation"><span></span><span></span></i>
	      </p>
	      <p>
	        <input type="text" id="adresse" name="adresse" placeholder="Adresse" required><i
	          class="validation"><span></span><span></span></i>
	      </p>
	      <p>
	        <input type="text" id="codepostal" name="codepostal" placeholder="Code Postal" required><i
	          class="validation"><span></span><span></span></i>
	      </p>
	      <p>
	        <input type="text" id="ville" name="ville" placeholder="Ville" required><i
	          class="validation"><span></span><span></span></i>
	      </p>
	      <p>
	        <input type="password" id="password" name="motDePasse" placeholder="Password" required><i
	          class="validation"><span></span><span></span></i>
	      </p>
	      <p>
	        <input type="submit" id="login" value="S'inscrire">
	      </p>
	    </form>
	    <div id="create-account-wrap">
	      <p>Already a member? <a href="Identifier.jsp">S'authentifier</a>
	      <p>
	    </div>
	    <!--create-account-wrap-->
	  </div>

</body>
</html>
<!-- <h3 align="center" >Inscription</h3>
	<table bgcolor="1" cellpadding="3" cellspacing="2" width="100%" align="center">
		<tr bgcolor="#FF9900">
			<th align="right">
				<a href="Identifier.jsp">Identification</a>
				
			</th>
		</tr>
	</table>
	<br>
	
	<form action="signup" method="post">
	<p>	
		<table bgcolor="1" cellpadding="3" cellspacing="2" width="90%" align="center">
			<tr>
				<td bgcolor="#FF9900" width="100"><b>E-mail</b></td>
				<td><input type="email" name="email" placeholder="nom@mail.com"></td>
			</tr>
			<tr>
				<td bgcolor="#FF9900" width="100"><b>Nom</b></td>
				<td><input type="text" name="nom" placeholder="Nom"></td>
			</tr>
			<tr>
				<td bgcolor="#FF9900" width="100"><b>Prenom</b></td>
				<td><input type="text" name="prenom" placeholder="Prenom"></td>
			</tr>
			<tr>
				<td bgcolor="#FF9900" width="100"><b>Adresse</b></td>
				<td><input type="text" name="adresse" place></td>
			</tr>
			<tr>
				<td bgcolor="#FF9900" width="100"><b>Code Postal</b></td>
				<td><input type="text" name="codepostal"></td>
			</tr>
			<tr>
				<td bgcolor="#FF9900" width="100"><b>Ville</b></td>
				<td><input type="text" name="ville"></td>
			</tr>
			<tr>
				<td bgcolor="#FF9900" width="100"><b>Tel</b></td>
				<td><input type="tel" name="tel"></td>
			</tr>
			<tr>
				<td bgcolor="#FF9900" width="100"><b>Mot de passe</b></td>
				<td><input type="password" name="motDePasse"></td>
			</tr>
				
		</table>
	</p>
	<p align="center"><input type="submit" value="S'inscrire" ></p>

</form> -->
	