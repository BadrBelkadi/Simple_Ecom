package Interface;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import Singleton.Connect;
import classes.Article;

public class IDetailImpl implements IDetail{

	@Override
	public Article search(int ref) {
		Connection con;
		ResultSet rs;
		try {
			con=Connect.getCon();
			String req="select designation,photo,stock,prix,categorie from articles where codeArticle=?;";
			PreparedStatement stmt = con.prepareStatement(req);
			stmt.setInt(1, ref);
			rs=stmt.executeQuery();
			while(rs.next()) {
				Article a=new Article();
				a.setCodeArticle(ref);
				a.setDesignation(rs.getString("designation"));
				a.setCategorie(rs.getInt("categorie"));
				a.setPhoto(rs.getString("photo"));
				a.setPrice(rs.getDouble("prix"));
				a.setStock(rs.getInt("stock"));
				return a;
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

}
