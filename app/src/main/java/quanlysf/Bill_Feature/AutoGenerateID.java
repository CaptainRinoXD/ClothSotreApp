package quanlysf.Bill_Feature;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;

import quanlysf.function.DatabaseConnector;

public class AutoGenerateID {
    public static String generateUniqueBillID() throws SQLException {
        while (true) {
            String generatedBillID = generateBillID();
            if (isBillIDUnique(generatedBillID)) {
                return generatedBillID;
            }
        }
    }

    private static String generateBillID() {
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyyMMdd"); //add yyyyMMddHHmmss if year month day hours minute second
        String timestamp = dateFormat.format(new Date());

        Random random = new Random();
        int randomNumber = random.nextInt(10000);

        return timestamp + String.format("%04d", randomNumber);
    }

    private static boolean isBillIDUnique(String Bill_ID) throws SQLException {
        DatabaseConnector dbConnector;
        dbConnector = new DatabaseConnector();
        Connection connection = dbConnector.connect();
        
        String query = "SELECT COUNT(*) FROM tbl_bill WHERE Bill_ID = ?";
        try (PreparedStatement preparedStatement = connection.prepareStatement(query)) {
            preparedStatement.setString(1, Bill_ID);

            try (ResultSet resultSet = preparedStatement.executeQuery()) {
                if (resultSet.next()) {
                    int count = resultSet.getInt(1);
                    return count == 0; // If count is 0, the ID is unique
                }
            }
        // Assume it's not unique in case of an exception
        return false;
        }
    }
}

