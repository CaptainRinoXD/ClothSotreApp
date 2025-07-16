/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package quanlysf.DAO;

/**
 *
 * @author dinhd
 */
public class DetailBill {

    @Override
    public String toString() {
        return "DetailBill{" + "Bill_ID=" + Bill_ID + ", Product_ID=" + Product_ID + ", ProductName=" + ProductName + ", DetailBill_Quantity=" + DetailBill_Quantity + ", Bill_Total=" + Bill_Total + '}';
    }

    public long getBill_ID() {
        return Bill_ID;
    }

    public void setBill_ID(long Bill_ID) {
        this.Bill_ID = Bill_ID;
    }

    public int getProduct_ID() {
        return Product_ID;
    }

    public void setProduct_ID(int Product_ID) {
        this.Product_ID = Product_ID;
    }

    public String getProductName() {
        return ProductName;
    }

    public void setProductName(String ProductName) {
        this.ProductName = ProductName;
    }

    public int getDetailBill_Quantity() {
        return DetailBill_Quantity;
    }

    public void setDetailBill_Quantity(int DetailBill_Quantity) {
        this.DetailBill_Quantity = DetailBill_Quantity;
    }

    public long getBill_Total() {
        return Bill_Total;
    }

    public void setBill_Total(long Bill_Total) {
        this.Bill_Total = Bill_Total;
    }

    public DetailBill(long Bill_ID, int Product_ID, String ProductName, int DetailBill_Quantity, long Bill_Total) {
        this.Bill_ID = Bill_ID;
        this.Product_ID = Product_ID;
        this.ProductName = ProductName;
        this.DetailBill_Quantity = DetailBill_Quantity;
        this.Bill_Total = Bill_Total;
    }
    private long Bill_ID;
    private int Product_ID; 
    private String ProductName;
    private int DetailBill_Quantity;
    private long Bill_Total;
}
