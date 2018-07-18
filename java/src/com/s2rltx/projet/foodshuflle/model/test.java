class test {
	public void main(String[] args) {
		String[][] FIELDS = { 
		{ "P_id", "INT(11), FOREIGN KEY (P_id) REFERENCES nomDePlat(id)" }, 
		{ "R_nbr_pers", "INT(11)" }, 
		{ "R_tps_prepa", "INT(11)" },
		{ "R_tps_cuisson", "INT(11)" },
		{ "I_id", "INT(11), FOREIGN KEY (I_id) REFERENCES ingredient(id)" }, 
		{ "R_ingr_qtt", "DECIMAL(10,2)" } 
		};
			
			String msg = "CREATE TABLE " + TABLE + " ("  
				+ ID + " INT AUTO_INCREMENT PRIMARY KEY NOT NULL," ;
		for (int i = 0; i < (FIELDS.length - 1); i++) {
			msg += FIELDS[i][0] + " " + FIELDS[i][1] + ","
				+ FIELDS[1][0] + " " + FIELDS[1][1] + ","
				+ FIELDS[2][0] + " " + FIELDS[2][1] + ","
				+ FIELDS[3][0] + " " + FIELDS[3][1] + ","
				+ FIELDS[4][0] + " " + FIELDS[4][1] + ",";
		msg += FIELDS[FIELDS.length-1][0] + " " + FIELDS[FIELDS.length-1][1] + ")";
	System.out.println(msg);}}