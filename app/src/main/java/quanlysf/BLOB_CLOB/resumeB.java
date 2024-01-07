package quanlysf.BLOB_CLOB;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.sql.*;
import quanlysf.function.DatabaseConnector;

public class resumeB {
    // 1. tạo đối tượng kết nối
    private DatabaseConnector dbConnector = new DatabaseConnector();
    FileInputStream input = null;
    public void resumeMethod() throws FileNotFoundException, SQLException {
        Connection connection = dbConnector.connect();
        String sql = "update product set ProductImage = ? where ProductID = ?";

        // 2. Tạo PreparedStatment
        try (PreparedStatement myStmt = connection.prepareStatement(sql)) {

            // 3. Tạo File
            File theFile = new File("app/src/main/java/quanlysf/BLOB_CLOB/Fern.jpg");
            input = new FileInputStream(theFile);
            myStmt.setBinaryStream(1, input);
            myStmt.setInt(2, 4);

            // 4. Execute 
            System.out.println("Reading input file: " + theFile.getAbsolutePath());
            System.out.println("Storing resume in database: " + theFile);
            myStmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
