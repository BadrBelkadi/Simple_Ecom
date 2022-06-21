package interfaces;

import java.util.ArrayList;

import classes.Client;
import classes.Commande;

public interface IPanier {
	public void ajouterCommande(int codeArticle ,Client client);
	public ArrayList<Commande> visualiserCommande(String email);
}
