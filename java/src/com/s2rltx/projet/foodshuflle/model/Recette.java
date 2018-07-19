/**
 *
 */
package com.s2rltx.projet.foodshuflle.model;

import com.s2rltx.projet.foodshuflle.managerdatabase.DBBaseItem;

/**
 * @author Stephanie
 *
 */
public abstract class Recette extends DBBaseItem {

    private static final String TABLE = "Recette";
    private static final String ID = "id";
    private static final String[][] FIELDS = {
        {"P_id", "INT(11), FOREIGN KEY (P_id) REFERENCES nomDePlat(id)"},
        {"R_nbr_pers", "INT(11)"},
        {"R_tps_prepa", "INT(11)"},
        {"R_tps_cuisson", "INT(11)"},
        {"I_id", "INT(11), FOREIGN KEY (I_id) REFERENCES ingredient(id)"},
        {"R_ingr_qtt", "DECIMAL(10,2)"}
    };

    public Recette() {
        super(TABLE, ID);
    }

    // pour la foreign faire un getContraintes() avec un retour sysout et la foreign en string
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

    //@Override
    public void getContraints() {
        System.out.println("FOREIGN KEY (P_id) REFERENCES nomDePlat(id)");
        System.out.println("FOREIGN KEY (I_id) REFERENCES ingredient(id)");
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
