/**
 * 
 */
package com.s2rltx.projet.foodshuflle;

import com.s2rltx.projet.foodshuflle.managerdatabase.DbManager;

class Main {
   
    public static void main(String[] args) {
    	DbManager manager = new DbManager();
		
		manager.creationRequest("INSERT INTO utilisateur (U_pseudo, U_mdp, U_email) VALUES ('VB','AR','TY@yahoo.fr')");
    }
}