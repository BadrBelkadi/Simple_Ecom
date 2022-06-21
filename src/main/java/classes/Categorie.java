package classes;

import java.io.Serializable;

public class Categorie implements Serializable {
	private int refCat;
	private String cat;
	public int getRefCat() {
		return refCat;
	}
	public void setRefCat(int refCat) {
		this.refCat = refCat;
	}
	public String getCat() {
		return cat;
	}
	public void setCat(String cat) {
		this.cat = cat;
	}
	
	
}
