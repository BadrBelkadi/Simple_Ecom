package Interface;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import Singleton.Connect;
import classes.Client;
import classes.Commande;

public class IPanierImpl implements IPanier{

	@Override
	public Commande ajouterCommande(int codeArticle, Client client) {
		Connection con;
		Commande c=new Commande();
		c.setEmailClient(client.getEmail());
		c.setCodeArticle(codeArticle);
		
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
		return c;
	}

}
