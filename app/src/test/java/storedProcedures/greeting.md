package quanlysf.storedProcedures;
import java.sql.*;
import quanlysf.function.DatabaseConnector;

public class greeting {
    // 1. Sử dụng lớp DatabaseConnector để tạo một kết nối mới
    private DatabaseConnector dbConnector = new DatabaseConnector();
    
    public void greetingMethod() throws SQLException {
        try(Connection connection = dbConnector.connect()) {
            try(CallableStatement myStmt = connection.prepareCall("{call cloth_store.greet_the_department(?)}")) {
                myStmt.registerOutParameter(1, Types.VARCHAR); // Using for INOUT
                myStmt.setString(1, "NV");

                // Calling stored procedures
                myStmt.execute();
                String theResult = myStmt.getString(1);
                System.out.println(theResult);   
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
