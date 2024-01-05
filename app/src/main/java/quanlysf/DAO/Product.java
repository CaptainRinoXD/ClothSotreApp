/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package quanlysf.DAO;
import java.io.*;
import java.sql.*;
/**
 *
 * @author dinhd
 */
public class Product {

    @Override
    public String toString() {
        return "Product{" + "ProductID=" + ProductID + ", TypeID=" + TypeID + ", ProductName=" + ProductName + ", ProductQuanity=" + ProductQuanity + ", ProductImage=" + ProductImage + ", ImpPirce=" + ImpPirce + ", ExpPirce=" + ExpPirce + ", ImpDate=" + ImpDate + '}';
    }

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

    public java.sql.Date getImpDate() {
        return ImpDate;
    }

    public void setImpDate(java.sql.Date ImpDate) {
        this.ImpDate = ImpDate;
    }

    public Product(int ProductID, String TypeID, String ProductName, int ProductQuanity, File ProdcutImage, int ImpPirce, int ExpPirce, java.sql.Date ImpDate) {
        this.ProductID = ProductID;
        this.TypeID = TypeID;
        this.ProductName = ProductName;
        this.ProductQuanity = ProductQuanity;
        this.ProductImage = ProductImage;
        this.ImpPirce = ImpPirce;
        this.ExpPirce = ExpPirce;
        this.ImpDate = ImpDate;
    }
    private int ProductID;
    private String TypeID;
    private String ProductName;
    private int ProductQuanity;
    private File ProductImage;
    private int ImpPirce;
    private int ExpPirce;
    private java.sql.Date ImpDate;
}
