/**
 * 
 */
package com.s2rltx.projet.foodshuflle.model;

/**
 * @author Stéphanie
 *
 */
public class Ingredient extends DBBaseItem{

	/*private int idIng;
	private String nom;
	private String unite;
	private String groupe;
	private int kcal;
	
	public int getIdIng() {
		return idIng;
	}
	public void setIdIng(int idIng) {
		this.idIng = idIng;
	}
	public String getNom() {
		return nom;
	}
	public void setNom(String nom) {
		this.nom = nom;
	}
	public String getUnite() {
		return unite;
	}
	public void setUnite(String unite) {
		this.unite = unite;
	}
	public String getGroupe() {
		return groupe;
	}
	public void setGroupe(String groupe) {
		this.groupe = groupe;
	}
	
	public int getKcal() {
		return kcal;
	}
	public void setKcal(int kcal) {
		this.kcal = kcal;
	}
	public Ingredient(int idIng, String nom, String unite, String groupe, int kcal) {
		super();
		this.idIng = idIng;
		this.nom = nom;
		this.unite = unite;
		this.groupe = groupe;
		this.kcal = kcal;
	}
	
	public Ingredient() {
		
	}*/
	
	private static final String TABLE = "Ingredient";
	private static final String ID = "id";
	private static final String[][] FIELDS = { 
			{ "nom", "VARCHAR(255)" }, 
			{ "unite", "VARCHAR(5)" }, {"groupe", "VARCHAR(100)"},{"kcal", "INT(11)"} 
			};
	
	public Ingredient() {
		super(TABLE, ID);
	}
	
	@Override
	public String getSchema() {
		return "CREATE TABLE " + TABLE + " ("  
				+ ID + " INT AUTO_INCREMENT PRIMARY KEY NOT NULL," 
				+ FIELDS[0][0] + " " + FIELDS[0][1] + ","
				+ FIELDS[1][0] + " " + FIELDS[1][1] + ","
				+ FIELDS[2][0] + " " + FIELDS[2][1] + ","
				+ FIELDS[3][0] + " " + FIELDS[3][1] + ""
				+ ")";
	}

	@Override
	public String getFields() {
		String result = "";
		int i = 0;
		for (; i < FIELDS.length-1; i++) {
			result += FIELDS[i][0] + ",";
		}
		result += FIELDS[i][0];
		return result;
	}
}
