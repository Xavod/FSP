/**
 * 
 */
package com.s2rltx.projet.foodshuflle.model;

import java.util.List;

/**
 * @author Stéphanie
 *
 */
public class Utilisateur {
	
	String login;
	String motDePasse;
	List <NomDePlat> idNDPfav;
	public String getLogin() {
		return login;
	}
	public void setLogin(String login) {
		this.login = login;
	}
	public String getMotDePasse() {
		return motDePasse;
	}
	public void setMotDePasse(String motDePasse) {
		this.motDePasse = motDePasse;
	}
	public List<NomDePlat> getIdNDPfav() {
		return idNDPfav;
	}
	public void setIdNDPfav(List<NomDePlat> idNDPfav) {
		this.idNDPfav = idNDPfav;
	}
	public Utilisateur(String login, String motDePasse, List<NomDePlat> idNDPfav) {
		super();
		this.login = login;
		this.motDePasse = motDePasse;
		this.idNDPfav = idNDPfav;
	}
	
	
	

}
