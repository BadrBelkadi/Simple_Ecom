package implementations;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import Singleton.Connect;
import classes.Article;
import classes.Client;
import interfaces.ICatalogue;

public class ICatalogueImpl implements ICatalogue {

	@Override
	public ArrayList<Article> fetch(String categorie) {
		Connection con;
		ResultSet rs1,rs2;
		int ref=1;
		ArrayList<Article> liste=new ArrayList<Article>();
		try {
			con=Connect.getCon();
			String req1="SELECT refCat from categories where cat=?";
			PreparedStatement stmt1=con.prepareStatement(req1);
			stmt1.setString(1,categorie);
			rs1=stmt1.executeQuery();
			if(rs1.next()) {
				ref=rs1.getInt("refCat");
				System.out.println(ref);
				String req2="select codeArticle,designation,photo,stock,prix from articles where categorie=?;";
				PreparedStatement stmt2=con.prepareStatement(req2);
				stmt2.setInt(1,ref);
				rs2=stmt2.executeQuery();

				while(rs2.next()) {
					Article a=new Article();

//					System.out.println(rs2);
					a.setCodeArticle(rs2.getInt("codeArticle"));
					a.setCategorie(ref);
					a.setDesignation(rs2.getString("designation"));
					a.setPhoto(rs2.getString("photo"));
					a.setPrice(rs2.getDouble("prix"));
					a.setStock(rs2.getInt("stock"));
					liste.add(a);
					
				}
			}
			
		
			
		}catch(SQLException e) {
			e.printStackTrace();
		}
		return liste;
	}

}
