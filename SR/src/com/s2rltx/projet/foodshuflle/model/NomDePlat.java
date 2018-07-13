/**
 * 
 */
package com.s2rltx.projet.foodshuflle.model;

/**
 * @author Stéphanie
 *
 */
public class NomDePlat {

	/*int idNDP;
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
	*/
	public NomDePlat() {
		
	}
	private static final String TABLE = "NomDePlat";
	private static final String ID = "id";
	private static final String[][] FIELDS = { 
			{ "nom", "VARCHAR(255)"}, {"regime", "VARCHAR(255)"} 
			};
	
	public NomDePlat() {
		super(TABLE, ID);
	}
	
	@Override
	public String getSchema() {
		return "CREATE TABLE " + TABLE + " ("  
				+ ID + " INT AUTO_INCREMENT PRIMARY KEY NOT NULL," 
				+ FIELDS[0][0] + " " + FIELDS[0][1] + ","
				+ FIELDS[1][0] + " " + FIELDS[1][1] + ""
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
