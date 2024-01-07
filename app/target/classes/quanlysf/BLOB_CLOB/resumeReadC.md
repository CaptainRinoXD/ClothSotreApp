package quanlysf.BLOB_CLOB;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.sql.*;
import quanlysf.function.DatabaseConnector;

public class resumeReadC {
    // 1. tạo đối tượng kết nối
    private DatabaseConnector dbConnector = new DatabaseConnector();
    FileReader input = null;

    public void resumeMethod() throws SQLException, FileNotFoundException {
        try( Connection connection = dbConnector.connect()) {
        
        // 2. Tạo PreparedStatment và sql
        String sql = "update employees set resume=? where id = ?";
        PreparedStatement myStmt = connection.prepareStatement(sql);

        // 3. Tạo file
        File theFile = new File("app/src/main/java/quanlysf/BLOB_CLOB/resumeID1.txt");
        input = new FileReader(theFile);
        myStmt.setCharacterStream(1, input);
        myStmt.setInt(2, 1);

        // 4. excute lệnh
        System.out.println("Reading input file from: " + theFile.getAbsolutePath());
        System.out.println("Storing in the database. Successfully!!");
        myStmt.executeUpdate();
        }
    }
   
}
