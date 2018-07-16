/**
 * 
 */
package com.s2rltx.projet.foodshuflle;

import java.sql.Connection;
import java.sql.SQLException;

import com.mysql.cj.jdbc.MysqlDataSource;

/**
 * @author Apprenant
 *
 */
public class DbOpenHelper {
	
	private Connection connection = createConnection();
	
	

	public Connection getConnection() {
		return connection;
	}

	public void setConnection(Connection connection) {
		this.connection = connection;
	}

	/** Constructeur privé */
	private DbOpenHelper() {
		createConnection();
	}

	/** Instance unique non préinitialisée */
	private static DbOpenHelper INSTANCE = null;

	/** Point d'accès pour l'instance unique du singleton */
	public static DbOpenHelper getInstance() {
		if (INSTANCE == null) {
			INSTANCE = new DbOpenHelper();
		}
		return INSTANCE;
	}

	private Connection createConnection() {
		Connection conn = null;
		MysqlDataSource dataSource = new MysqlDataSource();

		// Add settings about the data source.
		dataSource.setServerName("127.0.0.1");
		dataSource.setUser("root");
		dataSource.setDatabaseName("fsp");
		

		// Create the connection to our database.
		try {
			dataSource.setCreateDatabaseIfNotExist(true);
			dataSource.setServerTimezone("UTC");//dans le cas où erreur sur server time zone value
			conn = dataSource.getConnection();

		} catch (SQLException e) {
			e.printStackTrace();
			System.err.println("Problème avec la base de données : " + e.getMessage());
			System.exit(-2);
		}

		return conn;
	}

}
