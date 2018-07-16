/**
 * 
 */
package com.s2rltx.projet.foodshuflle;



/**
 * @author Apprenant
 *
 */
public abstract class DBBaseItem {
	
	public String TABLE;
	public String ID;
	
	private int id;
		

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTABLE() {
		return TABLE;
	}

	public String getID() {
		return ID;
	}
	
	public DBBaseItem(String table, String id){
		this.TABLE = table;
		this.ID = id;
	}
	
		
	public abstract String getSchema();
	
		
	public abstract String getFields();
	
	 
}
