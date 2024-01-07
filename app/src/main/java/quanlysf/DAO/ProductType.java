/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package quanlysf.DAO;

/**
 *
 * @author dinhd
 */
public class ProductType {
    private String TypeID;

    @Override
    public String toString() {
        return "ProductType{" + "TypeID=" + TypeID + ", TypeName=" + TypeName + '}';
    }

    public String getTypeID() {
        return TypeID;
    }

    public void setTypeID(String TypeID) {
        this.TypeID = TypeID;
    }

    public String getTypeName() {
        return TypeName;
    }

    public void setTypeName(String TypeName) {
        this.TypeName = TypeName;
    }

    public ProductType(String TypeID, String TypeName) {
        this.TypeID = TypeID;
        this.TypeName = TypeName;
    }
    private String TypeName;
}
