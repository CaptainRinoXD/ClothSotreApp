package quanlysf.feature;

import java.sql.*;
import quanlysf.function.DatabaseConnector;

public class metaData {
    // 1. Use the DatabaseConnector class to create a new connection
    private DatabaseConnector dbConnector = new DatabaseConnector();
    ResultSet myRs = null;

    // 2. Passing parameters
    String catalog = "cloth_store"; 
    String schemaPattern = null;
    String tableNamePattern = null;
    String[] types = {"TABLE"};  

    public void metaDataMethod() throws SQLException {
        try (Connection connection = dbConnector.connect()) {
            DatabaseMetaData dbMetaData = connection.getMetaData();

            System.out.println("Product Info: " + dbMetaData.getDatabaseProductName());
            System.out.println("Product Version: " + dbMetaData.getDatabaseProductVersion());
            System.out.println("Driver Info: " + dbMetaData.getDriverName());
            System.out.println("Driver Version: " + dbMetaData.getDriverVersion());

            System.out.println("List of Tables:");
            System.out.println("---------------");

            try{
                myRs = dbMetaData.getTables(catalog, schemaPattern, tableNamePattern, types);
                while (myRs.next()) {
                System.out.println(myRs.getString("TABLE_NAME"));
                }
            } catch (SQLException e) {
            e.printStackTrace();
            }
            
            myRs = dbMetaData.getColumns(null, null, "employees", null);
            while (myRs.next()) {
                System.out.println(myRs.getString("COLUMN_NAME"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            // Close resources in the finally block
            if (myRs != null) {
                myRs.close();
            }
        }
    }
}
