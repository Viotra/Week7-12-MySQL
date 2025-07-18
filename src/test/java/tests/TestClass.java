package tests;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import projects.dao.DbConnection;
import projects.entity.Project;
import projects.exception.DbException;
import provided.util.DaoBase;

public class TestClass extends DaoBase {
	public static void main(String[] args) {
		//Project project = new Project();
//		String className = Project.class.getName();
//		
//		System.out.println(className);
	}
	
	public void TestResultSet() {
		String sql = "SELECT * FROM project";
		
		try(Connection conn = DbConnection.getConnection()){
			startTransaction(conn);
			
			try(PreparedStatement stmt = conn.prepareStatement(sql)){
				
			}
			catch(Exception e) {
				rollbackTransaction(conn);
				throw new DbException(e);
			}
		}
		catch(SQLException e) {
			throw new DbException(e);
		}
	}
}
	

