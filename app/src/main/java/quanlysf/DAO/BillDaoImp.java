package quanlysf.DAO;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mysql.cj.xdevapi.PreparableStatement;

import quanlysf.function.DatabaseConnector;

public class BillDaoImp implements BillDAO {

    @Override
    public List<Bill> get(int i) throws SQLException, FileNotFoundException, IOException {
        // TODO Auto-generated method stub
        throw new UnsupportedOperationException("Unimplemented method 'get'");
    }

    @Override
    public List<Bill> getStr(String i) throws SQLException, FileNotFoundException, IOException {
        // TODO Auto-generated method stub
        throw new UnsupportedOperationException("Unimplemented method 'getStr'");
    }

    @Override
    public List<Bill> getALL() throws SQLException, FileNotFoundException, IOException {
        // TODO Auto-generated method stub
        throw new UnsupportedOperationException("Unimplemented method 'getALL'");
    }

    @Override
    public List<Bill> getAll_IDList() throws SQLException, FileNotFoundException, IOException {
        // TODO Auto-generated method stub
        throw new UnsupportedOperationException("Unimplemented method 'getAll_IDList'");
    }

    @Override
    public int save(Bill t) throws SQLException {
        // TODO Auto-generated method stub
        throw new UnsupportedOperationException("Unimplemented method 'save'");
    }

    @Override
    public int insert(Bill bill) throws SQLException, FileNotFoundException {
        DatabaseConnector dbConnector = new DatabaseConnector();
        Connection connection = dbConnector.connect();
        //connection.setAutoCommit(false);
        String sql = "insert into tbl_bill"
        + "( Bill_ID, EmID, CID, ExportDate )"
        + "values ( ?, ?, ?, ? )";

        PreparedStatement myStmt = connection.prepareStatement(sql);
        myStmt.setLong(1, bill.getBill_ID());
        myStmt.setInt(2, bill.getEmID());
        myStmt.setInt(3, bill.getCID());

        java.sql.Date currentDate = new java.sql.Date(System.currentTimeMillis());
        myStmt.setDate(4, currentDate);

        int resullt = myStmt.executeUpdate();
        dbConnector.closeConnection();
        return resullt;
    }

    @Override
    public int update(Bill t) throws SQLException, FileNotFoundException {
        // TODO Auto-generated method stub
        throw new UnsupportedOperationException("Unimplemented method 'update'");
    }

    @Override
    public int delete(int i) throws SQLException {
        // TODO Auto-generated method stub
        throw new UnsupportedOperationException("Unimplemented method 'delete'");
    }

    @Override
    public int deleteStr(String i) throws SQLException {
        // TODO Auto-generated method stub
        throw new UnsupportedOperationException("Unimplemented method 'deleteStr'");
    }

    @Override
    public List<Bill> getlong(long Bill_ID) throws SQLException {
        DatabaseConnector dbConnector;
        dbConnector = new DatabaseConnector();
        Connection connection = dbConnector.connect();

        List<Bill> bills = new ArrayList<>();
        String sql = "Select * from tbl_bill where Bill_ID = ?";
        PreparedStatement myStmt = connection.prepareStatement(sql);
        myStmt.setLong(1, Bill_ID);

        ResultSet rs = myStmt.executeQuery();

        if (rs.next()) {
            long Obill_ID = rs.getLong("Bill_ID");
            int EmID = rs.getInt("EmID");
            int CID = rs.getInt("CID");
            java.sql.Date ExpDate = rs.getDate("ExportDate");

            Bill bill = new Bill(Obill_ID, EmID, CID, ExpDate);
            bills.add(bill);
        }
        return bills;
    }

    @Override
    public long deletelong(Long Bill_ID) throws SQLException {
        DatabaseConnector dbConnector;
        dbConnector = new DatabaseConnector();
        Connection connection = dbConnector.connect();

        String sql = " Delete from tbl_bill Where Bill_ID = ? ";
        PreparedStatement myStmt = connection.prepareStatement(sql);
        myStmt.setLong(1, Bill_ID);

        long result = myStmt.executeUpdate();
        dbConnector.closeConnection();
        return result;
    }
}
