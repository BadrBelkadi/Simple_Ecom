package classes;

import java.io.Serializable;

public class LigneCommande implements Serializable{
	private int numCommande,codeArticle,qteCde;

	public int getNumCommande() {
		return numCommande;
	}

	public void setNumCommande(int numCommande) {
		this.numCommande = numCommande;
	}

	public int getCodeArticle() {
		return codeArticle;
	}

	public void setCodeArticle(int codeArticle) {
		this.codeArticle = codeArticle;
	}

	public int getQteCde() {
		return qteCde;
	}

	public void setQteCde(int qteCde) {
		this.qteCde = qteCde;
	}
	
	

}
