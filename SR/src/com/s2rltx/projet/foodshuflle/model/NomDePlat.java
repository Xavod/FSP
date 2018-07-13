/**
 * 
 */
package com.s2rltx.projet.foodshuflle.model;

/**
 * @author Stéphanie
 *
 */
public class NomDePlat {

	int idNDP;
	String nomDePlat;
	String regime;
	
	public int getIdNDP() {
		return idNDP;
	}
	public void setIdNDP(int idNDP) {
		this.idNDP = idNDP;
	}
	public String getNomDePlat() {
		return nomDePlat;
	}
	public void setNomDePlat(String nomDePlat) {
		this.nomDePlat = nomDePlat;
	}
	
	public String getRegime() {
		return regime;
	}
	public void setRegime(String regime) {
		this.regime = regime;
	}
	
	public NomDePlat(int idNDP, String nomDePlat, String regime) {
		super();
		this.idNDP = idNDP;
		this.nomDePlat = nomDePlat;
		this.regime = regime;
	}
	
	
	
}
