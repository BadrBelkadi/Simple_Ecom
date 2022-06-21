<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="icon" type="image/x-icon" href="images/favicon.png">
<link rel="stylesheet" href="css/StyleLogin.css" type="text/css">

<meta charset="ISO-8859-1">
<title>S'Identifier</title>
</head>
<body>
	
	<div id="login-form-wrap">
	    <h2>Identification</h2>
	    <form id="login-form" action="login" method="post">
	      <p>
	        <input type="email" id="email" name="email" placeholder="Adresse Email" required><i
	          class="validation"><span></span><span></span></i>
	      </p>
	      <p>
	        <input type="password" id="password" name="password" placeholder="Mot de Passe" required><i
	          class="validation"><span></span><span></span></i>
	      </p>
	      <p>
	        <input type="submit" id="login" value="Login">
	      </p>
	    </form>
	    <div id="create-account-wrap">
	      <p>Pas un member? <a href="Inscrire.jsp">Créer un compte</a>
	      <p>
	    </div>
	    <!--create-account-wrap-->
	  </div>

</body>
</html>

