package quanlysf.function;
import java.sql.*;

public class Update {
    private DatabaseConnector dbConnector = new DatabaseConnector();

    public void updateMethod() {
        try (Connection connection = dbConnector.connect()) {
            // 1. tạo ra một lệnh sql cho PStatment
            String sql = "UPDATE employees SET name = ? WHERE id = ?";

            // 2. Tạo ra PreparedStatment sử dụng trong try để đảm bảo nested try-with-resources
            try (PreparedStatement updateStatement = connection.prepareStatement(sql)) {
                updateStatement.setString(1, "Trương Thịnh Phát");
                updateStatement.setInt(2, 10);

                int rowsAffected = updateStatement.executeUpdate();
                System.out.println("Rows Affected: " + rowsAffected);
                System.out.println("Update Complete");
                
                //display(rowsAffected);
                                ///////////////// sử dụng lại /////////////

                //updateStatement.setString(1, "NV");
                //updateStatement.setInt(2, 3);

                //updateStatement.executeUpdate();
                System.out.println("Rows Affected: " + rowsAffected);
                System.out.println("Update Complete");
                
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
