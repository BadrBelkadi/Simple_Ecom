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

/**
 * Servlet implementation class PanierServlet
 */
public class PanierServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int num=Integer.parseInt(request.getParameter("num"));
		HttpSession session=request.getSession(false);
		Client c=(Client)session.getAttribute("client");
		
		IPanierImpl ipanier=new IPanierImpl();
		ipanier.ajouterCommande(num, c);
		request.setAttribute("client", c);
		RequestDispatcher view=request.getRequestDispatcher("catalogue?s=Jazz");
		view.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
