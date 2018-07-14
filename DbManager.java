package com.sr2ltx.algotojava.projetFoodShuffle;

import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class DbManager {
	
	public DbManager() {
		
	}

	public boolean isDbCreated() {
		
		boolean result = false;
		
		Statement stmt = null;
		
		try {
			stmt = DbOpenHelper.getInstance().getConnection().createStatement();
            ResultSet rs = stmt.executeQuery("SHOW TABLES");
            ResultSetMetaData metas = rs.getMetaData();
            
            if (metas.getColumnLabel(1).equals("Tables_in_fsp")) {
				if (!rs.next()) {
					result = true;
				}
			}
    
            rs.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
		
		return result;
	}
	
	public String creationRequest(String request) {
		StringBuilder result = new StringBuilder();

		Statement stmt = null;

		try {
			stmt = DbOpenHelper.getInstance().getConnection().createStatement();
			result.append(stmt.executeUpdate(request));
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				stmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		return result.toString();
	}

	
	public ResultSet selectRequest(String request) {
		Statement stmt = null;
		ResultSet rs = null;

		try {
			stmt = DbOpenHelper.getInstance().getConnection().createStatement();
			rs = stmt.executeQuery(request);
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return rs;
	}

	public List<String> selectRequestStrings(String request) {
		List<String> result = new ArrayList<String>();

		Statement stmt = null;
		ResultSet rs = null;

		try {
			stmt = DbOpenHelper.getInstance().getConnection().createStatement();
			rs = stmt.executeQuery(request);
			while (rs.next()) {
				ResultSetMetaData rsmd = rs.getMetaData();
				for (int i = 1; i <= rsmd.getColumnCount(); i++) {
					result.add(rs.getString(i));
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				rs.close();
				stmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		return result;
}
	
	
	
	
	
	
	
}
