package quanlysf.BLOB_CLOB;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.Reader;
import java.sql.*;
import quanlysf.function.DatabaseConnector;

public class resumeWriteC {
     // 1. tạo đối tượng kết nối
    private DatabaseConnector dbConnector = new DatabaseConnector();
    Reader input = null;
    FileOutputStream output = null;
    ResultSet mRs = null;
        public void resumeMethod() throws SQLException, IOException {
        try( Connection connection = dbConnector.connect()) {
            // 2. Tạo PreparedStatment và sql
            String sql = "select resume from employees where id = ?";
            PreparedStatement myStmt = connection.prepareStatement(sql);
            myStmt.setInt(1, 1);
            mRs = myStmt.executeQuery();

            // 3. Tạo file
            File theFile = new File("app/src/main/java/quanlysf/BLOB_CLOB/resumeID2.txt");
            output = new FileOutputStream(theFile);
            
            if (mRs.next()) {
                input = mRs.getCharacterStream("resume");
                System.out.println("Reading and saving from database...");
                System.out.println(sql);
                int theChar;
                while ((theChar = input.read()) > 0 ) {
                    output.write(theChar);
                }
            }
        }
    }
   
}

