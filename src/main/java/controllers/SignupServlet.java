package controllers;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import classes.Client;
import implementations.IClientImpl;

/**
 * Servlet implementation class SignupServlet
 */
public class SignupServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SignupServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email=request.getParameter("email");
		String nom=request.getParameter("nom");
		String prenom=request.getParameter("prenom");
		String adresse=request.getParameter("adresse");
		String tel=request.getParameter("tel");
		String ville=request.getParameter("ville");
		String codePostal=request.getParameter("codepostal");
		String password=request.getParameter("motDePasse");
		
		Client client=new Client();
		client.setEmail(email);
		client.setNom(nom);
		client.setPrenom(prenom);
		client.setAdresse(adresse);
		client.setCodePostal(codePostal);
		client.setTel(tel);
		client.setVille(ville);
		client.setPassword(password);
		
		IClientImpl iclient=new IClientImpl();
		int result =iclient.inscription(client);
		if(result==1) {
			response.sendRedirect("Identifier.jsp");
		}else {
			response.sendRedirect("Inscrire.jsp");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
