package implementations;

import java.util.ArrayList;

import classes.Article;
import classes.Client;
import classes.Commande;

public class Main {

	public static void main(String[] args) {
		IClientImpl iclient = new IClientImpl();
		int a=iclient.authentification("badrdinbelkadi@gmail.com", "123456");
		System.out.println(a);
//		Client c=new Client();
//		c.setEmail("anasjegoual@gmail.com");
//		c.setNom("Jegoual");
//		c.setPrenom("Anas");
//		c.setAdresse("Quartier IZIKI");
//		c.setVille("Kech");
//		c.setCodePostal("53000");
//		c.setTel("+212678459225");
//		c.setPassword("123456789");
//		int a=iclient.inscription(c);
//		System.out.println(a);
//		ICatalogueImpl icatalogue=new ICatalogueImpl();
//		ArrayList<Article> l=new ArrayList();
//		l=icatalogue.fetch("jazz");
//		for(Article a: l) {
//			System.out.println(a.getDesignation());
//		}
//		IPanierImpl ipanier = new IPanierImpl();
//		ArrayList<Commande> liste=ipanier.visualiserCommande("Badrdinbelkadi@gmail.com");
//		for (Commande l : liste) {
//			System.out.println(l.getNumCommande());
//			System.out.println(l.getEmailClient());
//		}
		

	}

}
