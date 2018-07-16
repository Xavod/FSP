/**
 * 
 */
package com.s2rltx.projet.foodshuflle.model;

import com.s2rltx.projet.foodshuflle.manager.DBBaseItem;

/**
 * @author Stéphanie
 *
 */
public abstract class Ingredient extends DBBaseItem{

	
	
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
