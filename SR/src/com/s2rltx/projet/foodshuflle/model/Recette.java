/**
 * 
 */
package com.s2rltx.projet.foodshuflle.model;

/**
 * @author Stéphanie
 *
 */
public class Recette {

	int idR;
	NomDePlat idP;
	int nbrPersonne;
	int tpsPrepa;
	int tpsCuisson;
	Ingredient idIng;
	int quantite;
	Ingredient unite;
	
	public int getIdR() {
		return idR;
	}
	public void setIdR(int idR) {
		this.idR = idR;
	}
	public NomDePlat getIdP() {
		return idP;
	}
	public void setIdP(NomDePlat idP) {
		this.idP = idP;
	}
	public int getNbrPersonne() {
		return nbrPersonne;
	}
	public void setNbrPersonne(int nbrPersonne) {
		this.nbrPersonne = nbrPersonne;
	}
	public int getTpsPrepa() {
		return tpsPrepa;
	}
	public void setTpsPrepa(int tpsPrepa) {
		this.tpsPrepa = tpsPrepa;
	}
	public int getTpsCuisson() {
		return tpsCuisson;
	}
	public void setTpsCuisson(int tpsCuisson) {
		this.tpsCuisson = tpsCuisson;
	}
	public Ingredient getIdIng() {
		return idIng;
	}
	public void setIdIng(Ingredient idIng) {
		this.idIng = idIng;
	}
	public int getQuantite() {
		return quantite;
	}
	public void setQuantite(int quantite) {
		this.quantite = quantite;
	}
	public Ingredient getUnite() {
		return unite;
	}
	public void setUnite(Ingredient unite) {
		this.unite = unite;
	}
	
	public Recette(int idR, NomDePlat idP, int nbrPersonne, int tpsPrepa, int tpsCuisson, Ingredient idIng,
			int quantite, Ingredient unite) {
		super();
		this.idR = idR;
		this.idP = idP;
		this.nbrPersonne = nbrPersonne;
		this.tpsPrepa = tpsPrepa;
		this.tpsCuisson = tpsCuisson;
		this.idIng = idIng;
		this.quantite = quantite;
		this.unite = unite;
	}
	
	
}
