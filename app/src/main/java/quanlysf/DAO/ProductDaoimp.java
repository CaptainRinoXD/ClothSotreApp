package quanlysf.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.io.*;


import quanlysf.function.DatabaseConnector;
import java.util.ArrayList;


public class ProductDaoimp implements ProductDao {

    @Override
    public List<Product> get(int ProductID) throws SQLException, FileNotFoundException, IOException {
        DatabaseConnector dbConnector;
        dbConnector = new DatabaseConnector();
        Connection connection = dbConnector.connect();

        List<Product> products = new ArrayList<>();
        String sql = "SELECT ProductID, TypeID, ProductName, ProductQuanity, ProductImage, ImpPrice, ExpPrice, ImpDate FROM product WHERE ProductID = ?";
        PreparedStatement myStmt = connection.prepareStatement(sql);
        myStmt.setInt(1, ProductID);

        ResultSet rs = myStmt.executeQuery();

        if (rs.next()) {
            int OProductID = rs.getInt("ProductID");
            String TypeID = rs.getString("TypeID");
            String ProductName = rs.getString("ProductName");
            int ProductQuanity = rs.getInt("ProductQuanity");
            InputStream imageStream = rs.getBinaryStream("ProductImage");
            
            // Lưu ảnh lấy được sang file tạm thời

            File imageFile = null;
            if (imageStream != null) {
                // Lưu ảnh lấy được sang file tạm thời
                imageFile = new File("TempImage.jpg");
                try (FileOutputStream fos = new FileOutputStream(imageFile)) {
                    byte[] buffer = new byte[1024];
                    int bytesRead;
                    while ((bytesRead = imageStream.read(buffer)) != -1) {
                        fos.write(buffer, 0, bytesRead);
                    }
                }
            }

            int ImpPrice = rs.getInt("ImpPrice");
            int ExpPrice = rs.getInt("ExpPrice");
            java.sql.Date impDate = rs.getDate("ImpDate");

            Product product = new Product(OProductID, TypeID, ProductName, ProductQuanity, imageFile,ImpPrice,ExpPrice,impDate);
            products.add(product);


        }
        return products;
    }

    @Override
    public List<Product> getALL() throws SQLException {
         // TODO Auto-generated method stub
        throw new UnsupportedOperationException("Unimplemented method 'save'");
    }

    @Override
    public int save(Product t) throws SQLException {
        // TODO Auto-generated method stub
        throw new UnsupportedOperationException("Unimplemented method 'save'");
    }

    @Override
    public int insert(Product product) throws SQLException, FileNotFoundException {
        DatabaseConnector dbConnector = new DatabaseConnector();
        Connection connection = dbConnector.connect();
        String sql = "insert into product"
        + "( TypeID, ProductName, ProductQuanity, ProductImage, ImpPrice, ExpPrice, ImpDate)"
        + "values (?, ? , ?, ?, ?, ?, ?)";

        PreparedStatement myStmt = connection.prepareStatement(sql);
        myStmt.setString(1, product.getTypeID());
        myStmt.setString(2, product.getProductName());
        myStmt.setInt(3, product.getProductQuanity());

        if(product.getProductImage() != null) {
            FileInputStream fis = new FileInputStream(product.getProductImage());
            myStmt.setBinaryStream(4, fis, (int) product.getProductImage().length());
        } else {
            myStmt.setNull(4, java.sql.Types.BLOB);

        }
        
        myStmt.setInt(5, product.getImpPirce());
        myStmt.setInt(6, product.getExpPirce());

        java.sql.Date currentDate = new java.sql.Date(System.currentTimeMillis());
        myStmt.setDate(7, currentDate);

        int resullt = myStmt.executeUpdate();
        dbConnector.closeConnection();
        return resullt;
    }

    @Override
    public int update(Product t) throws SQLException {
        // TODO Auto-generated method stub
        throw new UnsupportedOperationException("Unimplemented method 'update'");
    }

    @Override
    public int delete(int i) throws SQLException {
        // TODO Auto-generated method stub
        throw new UnsupportedOperationException("Unimplemented method 'delete'");
    }
    
}
