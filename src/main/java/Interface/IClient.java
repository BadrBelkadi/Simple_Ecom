package Interface;

import classes.Client;

public interface IClient {
	public int authentification(String email,String password);
	public int inscription(Client c);
}
