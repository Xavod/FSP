package com.s2rltx.projet.foodshuffle;

import java.sql.ResultSet;


public abstract class DBBaseItem {
	
	public String TABLE;
	public String ID;
	
	private int id;
	private Object item;
	

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
	
	public Object getItem() {
		return item;
	}

	public void setItem(Object item) {
		this.item = item;
	}

	public DBBaseItem(String table, String id){
		this.TABLE = table;
		this.ID = id;
	}
	
	public abstract DBBaseItem parseIn(ResultSet rs);
	
	public abstract String getSchema();
	
	public abstract String parseOut(Object item);
	
	public abstract String getContraintes();

	public abstract String getFields();
}
