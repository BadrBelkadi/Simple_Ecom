	package classes;

import java.io.Serializable;
import java.sql.Date;

public class Commande implements Serializable {
	private int numCommande,codeArticle;
	public int getCodeArticle() {
		return codeArticle;
	}
	public void setCodeArticle(int codeArticle) {
		this.codeArticle = codeArticle;
	}
	private String emailClient;
	private Date dateCommande;
	public int getNumCommande() {
		return numCommande;
	}
	public void setNumCommande(int numCommande) {
		this.numCommande = numCommande;
	}
	public String getEmailClient() {
		return emailClient;
	}
	public void setEmailClient(String emailClient) {
		this.emailClient = emailClient;
	}
	public Date getDateCommande() {
		return dateCommande;
	}
	public void setDateCommande(Date dateCommande) {
		this.dateCommande = dateCommande;
	}
	
	

}
