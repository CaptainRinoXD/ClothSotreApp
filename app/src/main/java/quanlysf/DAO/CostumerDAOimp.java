package quanlysf.DAO;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.sql.*;

import quanlysf.function.DatabaseConnector;

public class CostumerDAOimp implements CostumerDAO{

    @Override
    public List<Costumer> get(int CID) throws SQLException, FileNotFoundException, IOException {
        DatabaseConnector dbConnector;
        dbConnector = new DatabaseConnector();
        Connection connection = dbConnector.connect();

        List<Costumer> costumers = new ArrayList<>();
        String sql = "SELECT CID, Cname, Caddress, Cnumber FROM costumer WHERE CID = ?";
        PreparedStatement myStmt = connection.prepareStatement(sql);
        myStmt.setInt(1, CID);

        ResultSet rs = myStmt.executeQuery();

        if (rs.next()) {
            int OCID = rs.getInt("CID");
            String Cname = rs.getString("Cname");
            String Caddress = rs.getString("Caddress");
            String Cnumber = rs.getString("Cnumber");

            Costumer costumer = new Costumer(OCID, Cname, Caddress, Cnumber);
            costumers.add(costumer);
        }
        return costumers;
    }

    @Override
    public List<Costumer> getALL() throws SQLException {
        DatabaseConnector dbConnector = new DatabaseConnector();
        Connection connection = dbConnector.connect();

        List<Costumer> costumers = new ArrayList<>();
        String sql = "Select * from costumer"; 

        Statement myStmt = connection.createStatement();
        ResultSet Rs = myStmt.executeQuery(sql);

        while(Rs.next()){
            int CID = Rs.getInt("CID");
            String Cname = Rs.getString("Cname");
            String Caddress = Rs.getString("Caddress");
            String Cnumber = Rs.getString("Cnumber");

            Costumer costumer = new Costumer(CID, Cname, Caddress, Cnumber);

            costumers.add(costumer);
        }
        return costumers;
    }

    @Override
    public int save(Costumer t) throws SQLException {
        // TODO Auto-generated method stub
        throw new UnsupportedOperationException("Unimplemented method 'save'");
    }

    @Override
    public int insert(Costumer costumer) throws SQLException, FileNotFoundException {
        DatabaseConnector dbConnector = new DatabaseConnector();
        Connection connection = dbConnector.connect();
        String sql = "insert into costumer"
        + "( Cname, Caddress, Cnumber)"
        + "values (?, ? , ?)";

        PreparedStatement myStmt = connection.prepareStatement(sql);
        myStmt.setString(1, costumer.getCname());
        myStmt.setString(2, costumer.getCaddress());
        myStmt.setString(3, costumer.getCnumber());

        int resullt = myStmt.executeUpdate();
        dbConnector.closeConnection();
        return resullt;
    }

    @Override
    public int update(Costumer costumer) throws SQLException {
        PreparedStatement myStmt = null;
        DatabaseConnector dbConnector = new DatabaseConnector();
        Connection connection = dbConnector.connect();

        String sql = "UPDATE costumer "
                    + "SET Cname = ?, Caddress = ?, Cnumber = ? "
                    + "WHERE CID = ?";
        myStmt = connection.prepareStatement(sql);

        myStmt.setString(1, costumer.getCname());
        myStmt.setString(2, costumer.getCaddress());
        myStmt.setString(3, costumer.getCnumber());
        //myStmt.setInt(4, costumer.getCID());

        int result = myStmt.executeUpdate();
        dbConnector.closeConnection();
        return result;
    }

    @Override
    public int delete(int CID) throws SQLException {
        // TODO Auto-generated method stub
        PreparedStatement myStmt = null;
        DatabaseConnector dbConnector = new DatabaseConnector();
        Connection connection = dbConnector.connect();

        String sql = "Delete from costumer where CID = ? ";
        myStmt = connection.prepareStatement(sql);
        myStmt.setInt(1, CID);
        int resullt = myStmt.executeUpdate();
        dbConnector.closeConnection();
        return resullt;
    }

    @Override
    public List<Costumer> getStr(String i) throws SQLException, FileNotFoundException, IOException {
        // TODO Auto-generated method stub
        throw new UnsupportedOperationException("Unimplemented method 'getStr'");
    }

    @Override
    public List<Costumer> getAll_IDList() throws SQLException, FileNotFoundException, IOException {
        // TODO Auto-generated method stub
        throw new UnsupportedOperationException("Unimplemented method 'getAll_IDList'");
    }

    @Override
    public int deleteStr(String i) throws SQLException {
        // TODO Auto-generated method stub
        throw new UnsupportedOperationException("Unimplemented method 'deleteStr'");
    }
    
}
