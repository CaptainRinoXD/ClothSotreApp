package quanlysf.storedProcedures;
import java.sql.*;
import quanlysf.function.DatabaseConnector;

public class increaseSalary {
    // 1. Sử dụng lớp DatabaseConnector để tạo một kết nối mới
    private DatabaseConnector dbConnector = new DatabaseConnector();

    public void IncreaseSalaryMethod() throws SQLException {
        try(Connection connection = dbConnector.connect()){
            String theDepartment = "NV";
            int theIncreaseAmount = 100000;
            
            try(CallableStatement myStmt = connection.prepareCall("{call cloth_store.increase_salaries_for_department(?, ?)}")) {
                myStmt.setString(1, theDepartment);
                myStmt.setDouble(2, theIncreaseAmount);

            myStmt.execute();
            System.out.println("Finished calling stored-procedure");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
