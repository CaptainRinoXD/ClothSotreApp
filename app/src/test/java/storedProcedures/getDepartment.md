package quanlysf.storedProcedures;
import java.sql.*;
import quanlysf.function.DatabaseConnector;

public class getDepartment {
    private DatabaseConnector dbConnector = new DatabaseConnector();
    String the_department = "QL";
    ResultSet myRs = null;
    public Object getDepartmentMethod;

    public void getDepartmentMethod() {
        try (Connection connection = dbConnector.connect();
             CallableStatement myStmt = connection.prepareCall("{call cloth_store.get_employees_for_department(?)}")) {
            myStmt.setString(1, the_department);
            myStmt.execute();
            System.out.println("Finished calling stored procedures");
    
            myRs = myStmt.getResultSet();
            display.displayMethod(myRs);

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    
}

class display {
    static void displayMethod(ResultSet myRs) {
        try {
            ResultSetMetaData rsmd = myRs.getMetaData();
            int columnsCount = rsmd.getColumnCount();
            
            while (myRs.next()) {
                for (int i = 1; i <= columnsCount; i++) {
                    System.out.print(rsmd.getColumnName(i) + ": " + myRs.getString(i) + "\t");
                }
                System.out.println(); // Move to the next line for the next row
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
