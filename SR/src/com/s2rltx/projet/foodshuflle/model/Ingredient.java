/**
 * 
 */
package com.s2rltx.projet.foodshuflle.model;

/**
 * @author Stéphanie
 *
 */
public class Ingredient {

	private int idIng;
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
	
	
	
}
