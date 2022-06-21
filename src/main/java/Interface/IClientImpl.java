package Interface;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import Singleton.Connect;
import classes.Client;

public class IClientImpl implements IClient {

	@Override
	public int authentification(String email, String password) {
		Connection con;
		ResultSet rs;
		try {
			con=Connect.getCon();
			String req="SELECT * from clients where email=? and motpasse=?";
			PreparedStatement stmt=con.prepareStatement(req);
			stmt.setString(1, email);
			stmt.setString(2,password);
			rs=stmt.executeQuery();
			if(rs.next()) {
				return 1;
			}else return 0;
			
		}catch(SQLException e) {
			e.getMessage();
		}
		return 0;
	}

	@Override
	public int inscription(Client c) {
		Connection con;
		int a=0;
		ResultSet rs;
			
			try {
				con=Connect.getCon();
				String req1="SELECT * FROM clients where email=?";
				PreparedStatement stmt1=con.prepareStatement(req1);
				stmt1.setString(1, c.getEmail());
				rs=stmt1.executeQuery();
				if(rs.next()) {
					return a;
				}else {
					String req2="INSERT INTO clients(email,nom,prenom,adresse,tel,ville,codePostal,motpasse) VALUES(?,?,?,?,?,?,?,?)";
					PreparedStatement stmt2=con.prepareStatement(req2);
					stmt2.setString(1, c.getEmail());
					stmt2.setString(2, c.getNom());
					stmt2.setString(3,c.getPrenom());
					stmt2.setString(4, c.getAdresse());
					stmt2.setString(5, c.getTel());
					stmt2.setString(6, c.getVille());
					stmt2.setString(7, c.getCodePostal());
					stmt2.setString(8, c.getPassword());
					a=stmt2.executeUpdate();
				}
			
			return a;
			
		}catch(SQLException e) {
			e.printStackTrace();
		}
		return a;
	}

}
