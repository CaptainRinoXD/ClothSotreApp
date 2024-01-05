package quanlysf.feature;
import java.sql.*;
import quanlysf.function.DatabaseConnector;
import java.util.Scanner;

public class transsaction {
    private DatabaseConnector dbConnector = new DatabaseConnector();
    public void transsactionMethod() throws SQLException {
        Connection connection = dbConnector.connect();
        // turn off auto commit
        connection.setAutoCommit(false);
        PreparedStatement myStmt = null;
        try{
            String sql = "delete from employees  where department = ? ";
            myStmt = connection.prepareStatement(sql);
            myStmt.setString(1, "BH");
            myStmt.executeUpdate();

            sql = "update employees set salary = ? where department = ? ";
            myStmt = connection.prepareStatement(sql);
            myStmt.setInt(1, 15000000);
            myStmt.setString(2, "QL");
            myStmt.executeUpdate();

            System.out.println("Transaction are ready");
            boolean ok = askUser();
            if (ok) {
                connection.commit();
                System.out.println("Transaction step COMMItTED");
            }
            else {
                connection.rollback();
                System.out.println("Transaction step ROLLBACKED");
            }

            
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    static boolean askUser() {
        String answer;
        try (Scanner scanner = new Scanner(System.in)) {
            System.out.println("Do you want to commit? (y/n)");
            do {
                answer = scanner.next();
                if (!answer.equals("y") && !answer.equals("n")) {
                    System.out.print("Please enter y or n again: ");
                }
            } while (!answer.equals("y") && !answer.equals("n"));
        }
        return answer.equals("y");
    }
    
}