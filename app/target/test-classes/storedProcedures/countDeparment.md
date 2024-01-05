package quanlysf.storedProcedures;
import java.sql.*;

import quanlysf.function.DatabaseConnector;

public class countDeparment {
    // 1. Sử dụng lớp DatabaseConnector để tạo một kết nối mới
    private DatabaseConnector dbConnector = new DatabaseConnector();
    public void countMethod() throws SQLException {
        // 2. Set the parameters
        String theDepartment = "NV";
        
        try (Connection connection = dbConnector.connect();
            CallableStatement myStmt = connection.prepareCall("{call cloth_store.get_count_for_department(?, ?)}")) {

            // 2.1 Register the output parameter
            myStmt.registerOutParameter(2, Types.INTEGER);

            // 2.2 Set the input parameters
            myStmt.setString(1, theDepartment);

            // 3. Call stored procedures
            System.out.println("Calling procedures to get count for department:('" + theDepartment + "', ?)");
            myStmt.execute();
            System.out.println("Finished calling stored procedures");
            
            // 4. Retrieve the output parameter
            int theCount = myStmt.getInt(2);
            System.out.println("The Count: " + theCount);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

}
