package quanlysf.DAO;

import java.io.File;
import java.sql.Date;

public class Product {

    private int ProductID;
    private String TypeID;
    private String ProductName;
    private int ProductQuanity;
    private File ProductImage;
    private int ImpPirce;
    private int ExpPirce;
    private Date ImpDate;

    public int getProductID() {
        return ProductID;
    }

    public void setProductID(int ProductID) {
        this.ProductID = ProductID;
    }

    public String getTypeID() {
        return TypeID;
    }

    public void setTypeID(String TypeID) {
        this.TypeID = TypeID;
    }

    public String getProductName() {
        return ProductName;
    }

    public void setProductName(String ProductName) {
        this.ProductName = ProductName;
    }

    public int getProductQuanity() {
        return ProductQuanity;
    }

    public void setProductQuanity(int ProductQuanity) {
        this.ProductQuanity = ProductQuanity;
    }

    public File getProductImage() {
        return ProductImage;
    }

    public void setProductImage(File ProductImage) {
        this.ProductImage = ProductImage;
    }

    public int getImpPirce() {
        return ImpPirce;
    }

    public void setImpPirce(int ImpPirce) {
        this.ImpPirce = ImpPirce;
    }

    public int getExpPirce() {
        return ExpPirce;
    }

    public void setExpPirce(int ExpPirce) {
        this.ExpPirce = ExpPirce;
    }

    public Date getImpDate() {
        return ImpDate;
    }

    public void setImpDate(Date ImpDate) {
        this.ImpDate = ImpDate;
    }

    public Product(int ProductID, String TypeID, String ProductName, int ProductQuanity, File ProductImage, int ImpPirce, int ExpPirce, Date ImpDate) {
        this.ProductID = ProductID;
        this.TypeID = TypeID;
        this.ProductName = ProductName;
        this.ProductQuanity = ProductQuanity;
        this.ProductImage = ProductImage;
        this.ImpPirce = ImpPirce;
        this.ExpPirce = ExpPirce;
        this.ImpDate = ImpDate;
    }
}
