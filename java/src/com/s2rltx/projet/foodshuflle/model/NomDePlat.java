/**
 * 
 */
package com.s2rltx.projet.foodshuflle.model;

import java.sql.ResultSet;

import com.s2rltx.projet.foodshuflle.managerdatabase.DBBaseItem;

/**
 * @author Stéphanie
 *
 */
public class NomDePlat extends DBBaseItem{


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

	public DBBaseItem parseIn(ResultSet rs) {
		// TODO Auto-generated method stub
		return null;
	}

	public String parseOut(Object item) {
		// TODO Auto-generated method stub
		return null;
	}

	

	
	
}
