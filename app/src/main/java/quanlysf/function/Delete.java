package quanlysf.function;
import java.sql.*;

public class Delete {
    // 1. Sử dụng lớp DatabaseConnector để tạo một kết nối mới
    private DatabaseConnector dbConnector = new DatabaseConnector();
    
    public void deleteMethod() {
        // 2. Tạo kết nối connection mới qua dbConnector
        Connection connection = dbConnector.connect();
        try {
            // 3. Tạo statement
            Statement DeleteStatement = connection.createStatement();

            // 4. Execute SQL query
            String sql = "DELETE FROM employees WHERE id = 15 ";

            int rowAffected = DeleteStatement.executeUpdate(sql);
            System.out.println("Row Affected:" + rowAffected);
            System.out.println("Delete complete.");

        } catch (Exception e) {
            e.printStackTrace();
        } 
    }
}