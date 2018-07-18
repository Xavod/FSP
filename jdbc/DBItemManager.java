<<<<<<< HEAD
package com.s2rltx.projet.foodshuffle;
=======
/**
 * 
 */
package com.s2rltx.projet.foodshuflle;

>>>>>>> f21f73ab52bc14117ec530bdcd6f7d88edcdd86d

import java.util.List;
import java.util.Scanner;


public class DBItemManager <T extends DBBaseItem>{

	private static final String INSERT = "INSERT INTO %s(%s) VALUES(%s)";
	private static final String SELECT = "SELECT %s FROM %s %s";
	private static final String WHERE = "WHERE %s = %s";
	
	private DbManager manager = new DbManager();
	private DBBaseItem baseItem;
	private Class<T> klazz;
	
	public DBItemManager(DBBaseItem baseItem,Class<T> klazz) {
		super();
		this.baseItem = baseItem;
		this.klazz = klazz;
//		if (!checkTableExists()) {
//			create();
//		}
	}

	public void insert(){
		
		Scanner scan = new Scanner(System.in);
		System.out.println("fields :");
		String fields = scan.nextLine();
		System.out.println("add :");
		String add = scan.nextLine();
		manager.creationRequest(String.format(INSERT, baseItem.TABLE,(fields),(add)));
		scan.close();
		
	}
	
	public void update(){
		
		Scanner scan = new Scanner(System.in);
		System.out.println("modif :");
		String modif = scan.nextLine();
		System.out.println("condition :");
		String condition = scan.nextLine();
		manager.creationRequest("UPDATE " + baseItem.TABLE + " SET " + modif + " WHERE " + condition);
		scan.close();
		
	}
	
	public void deleteID(int id) {
		manager.creationRequest(String.format("DELETE FROM " + baseItem.TABLE + " " + WHERE,baseItem.ID, id));
	}
	
	public void deleteFields() {
				
		Scanner scan = new Scanner(System.in);
		System.out.println("condition :");
		String condition = scan.nextLine();
		manager.creationRequest(String.format("DELETE FROM " + baseItem.TABLE + " WHERE " + condition));
		scan.close();
	}
	
	public void deleteTable(){
		manager.creationRequest(String.format("DROP TABLE " + baseItem.TABLE));
		
	}
	
	public void create(){
		if (!checkTableExists()) {
			manager.creationRequest(baseItem.getSchema());
		}
	}
	
	public List<String> selected() {
		List<String> result = manager.selectRequestStrings(String.format(SELECT, "*", baseItem.TABLE,""));
		return result;
		
	}
	
	public void showT() {
		manager.selectReq(String.format(SELECT, "*", baseItem.TABLE,""));
	}
	
	public void desc() {
		manager.selectReq(String.format("DESC " + baseItem.TABLE));
	}
	
	public void contrainte() {
		manager.selectReq(String.format("SELECT* FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE TABLE_NAME = " + "'" + baseItem.TABLE + "'"));
	}
	
	public boolean checkTableExists(){
		boolean result = false;
		for (String name : manager.selectRequestStrings("SHOW TABLES")) {
			if (name.equals(baseItem.TABLE)) {
				result = true;
				break;
			}
		}
		return result;
}
}
