/**
 * 
 */
package com.s2rltx.projet.foodshuflle.model;

import com.s2rltx.projet.foodshuflle.managerdatabase.DBBaseItem;

/**
 * @author Stéphanie
 *
 */
public class Utilisateur extends DBBaseItem {

	private static final String TABLE = "Utilisateur";
	private static final String ID = "id";
	private static final String[][] FIELDS = { { "U_pseudo", "VARCHAR(50)" }, { "U_mdp", "VARCHAR(255)" },
			{ "U_email", "VARCHAR(255)" }, { "U_fav01", "INT(11)" }, { "U_fav02", "INT(11)" }, { "U_fav03", "INT(11)" },
			{ "U_fav04", "INT(11)" }, { "U_fav05", "INT(11)" }, { "U_fav06", "INT(11)" }, { "U_fav07", "INT(11)" },
			{ "U_fav08", "INT(11)" }, { "U_fav09", "INT(11)" }, { "U_fav10", "INT(11)" }, { "U_fav11", "INT(11)" },
			{ "U_fav12", "INT(11)" }, { "U_fav13", "INT(11)" }, { "U_fav14", "INT(11)" }, { "U_fav15", "INT(11)" },
			{ "U_fav16", "INT(11)" }, { "U_fav17", "INT(11)" }, { "U_fav18", "INT(11)" }, { "U_fav19", "INT(11)" },
			{ "U_fav20", "INT(11)" } };

	public Utilisateur() {
		super(TABLE, ID);
	}

	@Override
	public String getSchema() {
		String msg = "CREATE TABLE " + TABLE + " (\n\t" + ID + " INT AUTO_INCREMENT PRIMARY KEY NOT NULL," + "\n\t";
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
		for (; i < FIELDS.length - 1; i++) {
			result += FIELDS[i][0] + ",";
		}
		result += FIELDS[i][0];
		return result;
	}

}