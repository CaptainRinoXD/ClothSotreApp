package quanlysf.feature;
import java.sql.*;

import quanlysf.function.DatabaseConnector;

public class resultSetMD {
    private DatabaseConnector dBConnector = new DatabaseConnector();
    public void rsMD() throws SQLException {
        //String sql = "select ?, ?, ?, ? from ?"; 
        ResultSet mRs = null;
        try( Connection connection = dBConnector.connect()) {
            //PreparedStatement mystmt = connection.prepareStatement(sql);
            //mystmt.setString(1, "id");
            //mystmt.setString(2, "name");
            //ystmt.setString(3, "age");
            //mystmt.setString(4, "salary");
            //mystmt.setString(5, "employees");
            Statement mystmt = connection.createStatement();
            
            mRs = mystmt.executeQuery("select id, name, age, salary from employees");
            ResultSetMetaData rsMetaData = mRs.getMetaData();
            int columnsCount = rsMetaData.getColumnCount();
            System.out.println("Colummn Count: " + columnsCount);

            for ( int i = 1; i < columnsCount; i++  ) {
                System.out.println("Colummn name: " + rsMetaData.getColumnName(i));
                System.out.println("Colummn type name: " + rsMetaData.getColumnTypeName(i));
                System.out.println("Colummn is auto Increment: " + rsMetaData.isAutoIncrement(i));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
