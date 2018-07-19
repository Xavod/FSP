/**
 * 
 */
package com.s2rltx.projet.foodshuflle.model;

import com.s2rltx.projet.foodshuflle.managerdatabase.DBBaseItem;

/**
 * @author St�phanie
 *
 */
public abstract class Ingredient extends DBBaseItem{

	private static final String TABLE = "Ingredient";
	private static final String ID = "id";
	private static final String[][] FIELDS = { 
			{ "nom", "VARCHAR(255)" }, 
			{ "unite", "VARCHAR(5)" }, {"groupe", "VARCHAR(100)"},{"kcal", "INT(11)"} 
			};


	public static String getTable() {
		return TABLE;
	}

	/*public static String getId() {
		return ID;
	}*/

	public Ingredient() {
		super(TABLE, ID);
		
	}

	@Override
	public String getSchema() {
		String msg= "CREATE TABLE " + TABLE + " (\n\t"  
				+ ID + " INT AUTO_INCREMENT PRIMARY KEY NOT NULL," + "\n\t";
				for (int i=0; i<(FIELDS.length)-1; i++) {
				msg  +=  FIELDS[i][0] + " " + FIELDS[i][1] + ",\n\t";
				}
				msg += FIELDS [FIELDS.length-1][0]+ " " + FIELDS[FIELDS.length-1][1] + "\n";
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
}
