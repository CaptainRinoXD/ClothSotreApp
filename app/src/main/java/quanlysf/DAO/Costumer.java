/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package quanlysf.DAO;

/**
 *
 * @author Admin
 */
public class Costumer {

    @Override
    public String toString() {
        return "Costumer{" + "CID=" + CID + ", Cname=" + Cname + ", Caddress=" + Caddress + ", Cnumber=" + Cnumber + '}';
    }

    public int getCID() {
        return CID;
    }

    public void setCID(int CID) {
        this.CID = CID;
    }

    public String getCname() {
        return Cname;
    }

    public void setCname(String Cname) {
        this.Cname = Cname;
    }

    public String getCaddress() {
        return Caddress;
    }

    public void setCaddess(String Caddress) {
        this.Caddress = Caddress;
    }

    public String getCnumber() {
        return Cnumber;
    }

    public void setCnumber(String Cnumber) {
        this.Cnumber = Cnumber;
    }

    public Costumer(int CID, String Cname, String Caddress, String Cnumber) {
        this.CID = CID;
        this.Cname = Cname;
        this.Caddress = Caddress;
        this.Cnumber = Cnumber;
    }
    private int CID;
    private String Cname;
    private String Caddress;
    private String Cnumber;
            
}
