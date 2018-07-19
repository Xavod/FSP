/**
 * 
 */
package com.s2rltx.projet.foodshuflle.model;



import com.s2rltx.projet.foodshuflle.managerdatabase.DBBaseItem;

/**
 * @author Stéphanie
 *
 */
public class Utilisateur extends DBBaseItem{
	
	private static final String TABLE = "Utilisateur";
	private static final String ID = "id";
	private static final String[][] FIELDS = { 
			{"U_pseudo", "VARCHAR(50)"}, {"U_mdp", "VARCHAR(255)"},
			{"U_email", "VARCHAR(255)"}, {"U_fav01", "INT(11)"},
			{"U_fav02", "INT(11)"}, {"U_fav03", "INT(11)"},
			{"U_fav04", "INT(11)"}, {"U_fav05", "INT(11)"},
			{"U_fav06", "INT(11)"}, {"U_fav07", "INT(11)"},
			{"U_fav08", "INT(11)"}, {"U_fav09", "INT(11)"},
			{"U_fav10", "INT(11)"}, {"U_fav11", "INT(11)"},
			{"U_fav12", "INT(11)"}, {"U_fav13", "INT(11)"},
			{"U_fav14", "INT(11)"}, {"U_fav15", "INT(11)"},
			{"U_fav16", "INT(11)"}, {"U_fav17", "INT(11)"},
			{"U_fav18", "INT(11)"}, {"U_fav19", "INT(11)"},
			{"U_fav20", "INT(11)"}
			};
	
	public Utilisateur() {
		super(TABLE, ID);
		// TODO Auto-generated constructor stub
	}
	
	@Override
	public String getSchema() {
		return "CREATE TABLE " + TABLE + " ("  
				+ ID + " INT AUTO_INCREMENT PRIMARY KEY NOT NULL," 
				+ FIELDS[0][0] + " " + FIELDS[0][1] + ","
				+ FIELDS[1][0] + " " + FIELDS[1][1] + ","
				+ FIELDS[2][0] + " " + FIELDS[2][1] + ","
				+ FIELDS[3][0] + " " + FIELDS[3][1] + ","
				+ FIELDS[4][0] + " " + FIELDS[4][1] + ","
				+ FIELDS[5][0] + " " + FIELDS[5][1] + ","
				+ FIELDS[6][0] + " " + FIELDS[6][1] + ","
				+ FIELDS[7][0] + " " + FIELDS[7][1] + ","
				+ FIELDS[8][0] + " " + FIELDS[8][1] + ","
				+ FIELDS[9][0] + " " + FIELDS[9][1] + ","
				+ FIELDS[10][0] + " " + FIELDS[10][1] + ","
				+ FIELDS[11][0] + " " + FIELDS[11][1] + ","
				+ FIELDS[12][0] + " " + FIELDS[12][1] + ","
				+ FIELDS[13][0] + " " + FIELDS[13][1] + ","
				+ FIELDS[14][0] + " " + FIELDS[14][1] + ","
				+ FIELDS[15][0] + " " + FIELDS[15][1] + ","
				+ FIELDS[16][0] + " " + FIELDS[16][1] + ","
				+ FIELDS[17][0] + " " + FIELDS[17][1] + ","
				+ FIELDS[18][0] + " " + FIELDS[18][1] + ","
				+ FIELDS[19][0] + " " + FIELDS[19][1] + ","
				+ FIELDS[20][0] + " " + FIELDS[20][1] + ","
				+ FIELDS[21][0] + " " + FIELDS[21][1] + ","
				+ FIELDS[22][0] + " " + FIELDS[22][1] + ""
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
