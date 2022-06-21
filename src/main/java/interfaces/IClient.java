package interfaces;

import classes.Client;

public interface IClient {
	public int authentification(String email,String password);
	public int inscription(Client c);
	public Client chercherClient(String email);
}
