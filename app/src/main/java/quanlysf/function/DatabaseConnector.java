package quanlysf.function;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseConnector {
    private String dbURL = "jdbc:mysql://localhost:3306/cloth_store";
    private String user = "root";
    private String pass = "Dainhan6a2";
    private Connection connection;

    public Connection connect() {
        try {
            // Check if the connection is already established
            if (connection == null || connection.isClosed()) {
                // If not, establish a new connection
                connection = DriverManager.getConnection(dbURL, user, pass);
                System.out.println("Connected successful to db: " + dbURL);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return connection;
    }

    public void closeConnection() {
        try {
            if (connection != null && !connection.isClosed()) {
                connection.close();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}