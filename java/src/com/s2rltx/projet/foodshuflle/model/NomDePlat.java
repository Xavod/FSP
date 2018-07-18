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
			{ "nom_du_plat", "VARCHAR(255)" }, 
			{ "regime", "VARCHAR(255)" } 
			};
	
	public NomDePlat() {
		super(TABLE, ID);
	}
	
	@Override
	public String getSchema() {
		String msg = "CREATE TABLE " + TABLE + " (\n\t"
                + ID + " INT AUTO_INCREMENT PRIMARY KEY NOT NULL," + "\n\t";
        for (int i = 0; i < (FIELDS.length - 1); i++) {
            msg += FIELDS[i][0] + " " + FIELDS[i][1] + ",\n\t";
        }

        msg += FIELDS[FIELDS.length - 1][0] + " " + FIELDS[FIELDS.length - 1][1] + "\n)";
        return msg;
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
