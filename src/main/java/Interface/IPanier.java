package Interface;

import classes.Client;
import classes.Commande;

public interface IPanier {
	public Commande ajouterCommande(int codeArticle ,Client client);
}
