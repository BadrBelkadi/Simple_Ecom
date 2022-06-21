package interfaces;

import java.util.ArrayList;

import classes.Article;

public interface ICatalogue {
	public ArrayList<Article> fetch(String categorie);
}
