package quanlysf.DAO;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import quanlysf.function.DatabaseConnector;

public class DetailBillDaoImp implements DetailBillDAO {

    @Override
    public List<DetailBill> get(int i) throws SQLException, FileNotFoundException, IOException {
        // TODO Auto-generated method stub
        throw new UnsupportedOperationException("Unimplemented method 'get'");
    }

    @Override
    public List<DetailBill> getStr(String i) throws SQLException, FileNotFoundException, IOException {
        // TODO Auto-generated method stub
        throw new UnsupportedOperationException("Unimplemented method 'getStr'");
    }

    @Override
    public List<DetailBill> getALL() throws SQLException, FileNotFoundException, IOException {
        // TODO Auto-generated method stub
        throw new UnsupportedOperationException("Unimplemented method 'getALL'");
    }

    @Override
    public List<DetailBill> getAll_IDList() throws SQLException, FileNotFoundException, IOException {
        // TODO Auto-generated method stub
        throw new UnsupportedOperationException("Unimplemented method 'getAll_IDList'");
    }

    @Override
    public int save(DetailBill t) throws SQLException {
        // TODO Auto-generated method stub
        throw new UnsupportedOperationException("Unimplemented method 'save'");
    }

    @Override
    public int insert(DetailBill detailBill) throws SQLException, FileNotFoundException {
        DatabaseConnector dbConnector = new DatabaseConnector();
        Connection connection = dbConnector.connect();
        //connection.setAutoCommit(false);
        String sql = "insert into tbl_detail_bill"
        + "( Bill_ID, ProductID, ProductName , Bill_Quantity, Bill_Total )"
        + "values ( ?, ?, ?, ?, ? )";

        PreparedStatement myStmt = connection.prepareStatement(sql);
        myStmt.setLong(1, detailBill.getBill_ID());
        myStmt.setInt(2, detailBill.getProduct_ID());
        myStmt.setString(3, detailBill.getProductName());
        myStmt.setInt(4, detailBill.getDetailBill_Quantity());
        myStmt.setLong(5, detailBill.getBill_Total());

        int result = myStmt.executeUpdate();
        dbConnector.closeConnection();
        return result;
    }

    @Override
    public int update(DetailBill t) throws SQLException, FileNotFoundException {
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
    public List<DetailBill> getlong(long Bill_ID) throws SQLException {
        DatabaseConnector dbConnector;
        dbConnector = new DatabaseConnector();
        Connection connection = dbConnector.connect();

        List<DetailBill> detailBills = new ArrayList<>();
        String sql = "Select * from tbl_detail_bill where Bill_ID = ?";
        PreparedStatement myStmt = connection.prepareStatement(sql);
        myStmt.setLong(1, Bill_ID);

        ResultSet rs = myStmt.executeQuery();

        while (rs.next()) {
            long Obill_ID = rs.getLong("Bill_ID");
            int ProductID = rs.getInt("ProductID");
            String ProductName = rs.getString("ProductName");
            int Quantity = rs.getInt("Bill_Quantity");
            Long Bill_total = rs.getLong("Bill_Total");

            DetailBill detailBill = new DetailBill(Obill_ID, ProductID, ProductName, Quantity, Bill_total);
            detailBills.add(detailBill);
        }
        return detailBills;
    }

    @Override
    public long deletelong(Long Bill_ID) throws SQLException {
        DatabaseConnector dbConnector;
        dbConnector = new DatabaseConnector();
        Connection connection = dbConnector.connect();

        String sql = " Delete from tbl_detail_bill Where Bill_ID = ? ";
        PreparedStatement myStmt = connection.prepareStatement(sql);
        myStmt.setLong(1, Bill_ID);

        long result = myStmt.executeUpdate();
        dbConnector.closeConnection();
        return result;
    }
}
