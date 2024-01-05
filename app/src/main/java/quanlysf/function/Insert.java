package quanlysf.function;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.sql.*;

public class Insert {
    // 1. Sử dụng lớp DatabaseConnector để tạo một kết nối mới
    private DatabaseConnector dbConnector = new DatabaseConnector();

    public void insertMethod() throws FileNotFoundException, IOException {
        // 2. Tạo kết nối connection mới qua dbConnector
        Connection connection = dbConnector.connect();
        try {
            // 3. Create a statment
            Statement Statement = connection.createStatement();
            
            // 4. Execute SQL query
            String sql = "insert into employees"
                        + "(name, age, salary, email, department)"
                        + "values ('Bùi Ngọc Khánh', 20, 10000000 , 'thinhphat2003@gmail.com', 'BH')";

            Statement.executeUpdate(sql);
            System.out.println("Insert complete.");
            
        } catch (Exception e) {
            e.printStackTrace();
        } 
    }
}
