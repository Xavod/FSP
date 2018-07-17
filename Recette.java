/**
 * 
 */
package com.s2rltx.projet.foodshuflle.model;

import com.s2rltx.projet.foodshuflle.manager.DBBaseItem;

/**
 * @author Stéphanie
 *
 */
public abstract class Recette extends DBBaseItem {

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
