/**
 * 
 */
package com.s2rltx.projet.foodshuflle.model;

/**
 * @author Stéphanie
 *
 */
public class Recette {

	/*int idR;
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
	}*/
	 public Recette () {
		 
	 }
	private static final String TABLE = "Recette";
	private static final String ID = "id";
	private static final String[][] FIELDS = { 
			{ "P_id", "VARCHAR(255)", "FOREIGN KEY (P_id) REFERENCES nomDePlat(id)" }, 
			{ "R_nbr_pers", "INT(11)" }, {"R_tps_prepa", "INT(11)"},{"R_tps_cuisson", "INT(11)"},{"R_ingr", "VARCHAR(50)"},{"R_ingr_qtt", "DECIMAL(10,2)"} 
			};
	
	public Recette() {
		super(TABLE, ID);
	}
	// pour la foreign faire un getContraintes() avec un retour sysout et la foreign en string
	@Override
	public String getSchema() {
		return "CREATE TABLE " + TABLE + " ("  
				+ ID + " INT AUTO_INCREMENT PRIMARY KEY NOT NULL," 
				+ FIELDS[0][0] + " " + FIELDS[0][1] + ","
				+ FIELDS[1][0] + " " + FIELDS[1][1] + ","
				+ FIELDS[2][0] + " " + FIELDS[2][1] + ","
				+ FIELDS[3][0] + " " + FIELDS[3][1] + ","
				+ FIELDS[4][0] + " " + FIELDS[4][1] + ","
				+ FIELDS[5][0] + " " + FIELDS[5][1] + ""
				+ ")";
	}
	@Override
	public getContraints() {
		System.out.println("FOREIGN KEY (P_id) references nomDePlat(id)");
				
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
