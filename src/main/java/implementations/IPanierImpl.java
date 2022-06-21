package implementations;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import Singleton.Connect;
import classes.Client;
import classes.Commande;
import interfaces.IPanier;

public class IPanierImpl implements IPanier{

	@Override
	public void ajouterCommande(int codeArticle, Client client) {
		Connection con;

		
		try {
			con=Connect.getCon();
			String req="INSERT INTO commandes(numarticle,emailClient) VALUES (?,?);";
			PreparedStatement stmt=con.prepareStatement(req);
			stmt.setInt(1,codeArticle);
			stmt.setString(2,client.getEmail());
			stmt.executeUpdate();
			
		}catch(SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public ArrayList<Commande> visualiserCommande(String email) {
		Connection con;
		ArrayList<Commande> liste=new ArrayList<Commande>();
		try {
			con=Connect.getCon();
			String req1="SELECT * from commandes where emailClient=? ";
			PreparedStatement stmt1=con.prepareStatement(req1);
			stmt1.setString(1,email);
			ResultSet rs=stmt1.executeQuery();
			while(rs.next()) {
				Commande c=new Commande();
				c.setNumCommande(rs.getInt("numCommande"));
				c.setEmailClient(email);
				c.setCodeArticle(rs.getInt("numarticle"));
				c.setDateCommande(rs.getDate("dateCommande"));
				liste.add(c);
			}
			
			
		}catch(SQLException e) {
			e.printStackTrace();
		}
		return liste;
	}

}
