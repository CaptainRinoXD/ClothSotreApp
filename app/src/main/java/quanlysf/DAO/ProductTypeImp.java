package quanlysf.DAO;

import java.sql.*;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import quanlysf.ui.*;

import quanlysf.function.DatabaseConnector;

public class ProductTypeImp implements ProductTypeDao {

    @Override
    public List<ProductType> get(int TypeID) throws SQLException, FileNotFoundException, IOException {
        // TODO Auto-generated method stub
        throw new UnsupportedOperationException("Unimplemented method 'get'");
    }

    @Override
    public List<ProductType> getALL() throws SQLException, FileNotFoundException, IOException {
        DatabaseConnector dbConnector;
        dbConnector = new DatabaseConnector();
        Connection connection = dbConnector.connect();

        List<ProductType> productTypes = new ArrayList<>();
        String sql = "SELECT * FROM product_type";
        Statement myStmt = connection.createStatement();
        ResultSet rs = myStmt.executeQuery(sql);

        while(rs.next()) {
            String OTypeID = rs.getString("TypeID");
            String TypeName = rs.getString("TypeName");
            ProductType productType = new ProductType(OTypeID, TypeName);
            productTypes.add(productType);

        }
        return productTypes;
    }

    @Override
	public List<ProductType> getAll_IDList() throws SQLException, FileNotFoundException, IOException {
		DatabaseConnector dbConnector;
        dbConnector = new DatabaseConnector();
        Connection connection = dbConnector.connect();

        ProductAdd.ProductTypeCbox.removeAllItems();

        List<ProductType> productTypes = new ArrayList<>();
        String sql = "SELECT * FROM product_type";
        Statement myStmt = connection.createStatement();
        ResultSet rs = myStmt.executeQuery(sql);

        while(rs.next()) {
            String OTypeID = rs.getString("TypeID");
            String TypeName = rs.getString("TypeName");
            ProductAdd.ProductTypeCbox.addItem(OTypeID);
            ProductType productType = new ProductType(OTypeID, TypeName);
            productTypes.add(productType);
        }
        return productTypes;
	}


    @Override
    public int save(ProductType t) throws SQLException {
        // TODO Auto-generated method stub
        throw new UnsupportedOperationException("Unimplemented method 'save'");
    }

    @Override
    public int insert(ProductType productType) throws SQLException, FileNotFoundException {
        DatabaseConnector dbConnector;
        dbConnector = new DatabaseConnector();
        Connection connection = dbConnector.connect();

        String sql = "insert into product_type"
                    + "(TypeID , TypeName)"
                    + "values (?, ?)";

        PreparedStatement myStmt = connection.prepareStatement(sql);
        myStmt.setString(1, productType.getTypeID());
        myStmt.setString(2, productType.getTypeName());

        int resullt = myStmt.executeUpdate();
        dbConnector.closeConnection();
        return resullt;
    }

    @Override
    public int update(ProductType productType) throws SQLException {
        PreparedStatement myStmt = null;
        DatabaseConnector dbConnector = new DatabaseConnector();
        Connection connection = dbConnector.connect();
        
        String sql = "UPDATE product_type "
                   + "SET TypeID = ?, TypeName = ? "
                   + "WHERE TypeID = ?";
        myStmt = connection.prepareStatement(sql);
    
        myStmt.setString(1, productType.getTypeID());
        myStmt.setString(2, productType.getTypeName());
        myStmt.setString(3, productType.getTypeID());
        
        int result = myStmt.executeUpdate();
        dbConnector.closeConnection();
        return result;
    }

    @Override
    public int delete(int TypeID) throws SQLException {
       // TODO Auto-generated method stub
        throw new UnsupportedOperationException("Unimplemented method 'deleteStr'");
    }

    @Override
    public List<ProductType> getStr(String TypeID) throws SQLException, FileNotFoundException, IOException {
        DatabaseConnector dbConnector;
        dbConnector = new DatabaseConnector();
        Connection connection = dbConnector.connect();

        List<ProductType> productTypes = new ArrayList<>();
        String sql = "SELECT TypeID, TypeName FROM product_type WHERE TypeID = ?";
        PreparedStatement myStmt = connection.prepareStatement(sql);
        myStmt.setString(1, TypeID);

        ResultSet rs = myStmt.executeQuery();

        if (rs.next()) {
            String OTypeID = rs.getString("TypeID");
            String TypeName = rs.getString("TypeName");

            ProductType productType = new ProductType(OTypeID, TypeName);
            productTypes.add(productType);
        }
        return productTypes;
    }

    @Override
    public int deleteStr(String TypeID) throws SQLException {
         // TODO Auto-generated method stub
        PreparedStatement myStmt = null;
        DatabaseConnector dbConnector = new DatabaseConnector();
        Connection connection = dbConnector.connect();

        String sql = "Delete from product_type where TypeID = ? ";
        myStmt = connection.prepareStatement(sql);
        myStmt.setString(1, TypeID);
        int resullt = myStmt.executeUpdate();
        dbConnector.closeConnection();
        return resullt;
    }

    @Override
    public List<ProductType> getlong(long i) throws SQLException {
        // TODO Auto-generated method stub
        throw new UnsupportedOperationException("Unimplemented method 'getlong'");
    }

    @Override
    public long deletelong(Long i) throws SQLException {
        // TODO Auto-generated method stub
        throw new UnsupportedOperationException("Unimplemented method 'deletelong'");
    }

	
}
