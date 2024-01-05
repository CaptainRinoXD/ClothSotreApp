package quanlysf;
import java.sql.*;

public class Update {
    // 1. Sử dụng lớp DatabaseConnector để tạo một kết nối mới
    private DatabaseConnector dbConnector = new DatabaseConnector();
    
    public void UpdateMethod() {
        // 2. Tạo kết nối connection mới qua dbConnector
        Connection connection = dbConnector.connect();
        try {
            // 3. Tạo statement
            Statement updateStatement = connection.createStatement();

            // 4. Execute SQL query
            String sql = "update employees "
                        + "set email = 'votrang03@outlook.com' "
                        + "where id = 3";

            updateStatement.executeUpdate(sql);
            System.out.println("Update complete.");

        } catch (Exception e) {
            e.printStackTrace();
        } 
    }
}
