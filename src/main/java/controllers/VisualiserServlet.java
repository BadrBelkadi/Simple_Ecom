package controllers;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.ArrayList;

import classes.Client;
import classes.Commande;
import implementations.IPanierImpl;

public class VisualiserServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession(false);
		Client c=(Client)session.getAttribute("client");
		IPanierImpl ipanier=new IPanierImpl();
		ArrayList<Commande> liste=new ArrayList<Commande>();
		liste=ipanier.visualiserCommande(c.getEmail());
		
		request.setAttribute("listecommande", liste);
		request.setAttribute("client", c);
		RequestDispatcher view=request.getRequestDispatcher("Panier.jsp");
		view.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
