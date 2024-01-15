/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package quanlysf.DAO;
import java.sql.Date;
/**
 *
 * @author dinhd
 */
public class Bill {

    @Override
    public String toString() {
        return "Bill{" + "Bill_ID=" + Bill_ID + ", EmID=" + EmID + ", CID=" + CID + ", ExpDate=" + ExpDate + '}';
    }

    public long getBill_ID() {
        return Bill_ID;
    }

    public void setBill_ID(long Bill_ID) {
        this.Bill_ID = Bill_ID;
    }

    public int getEmID() {
        return EmID;
    }

    public void setEmID(int EmID) {
        this.EmID = EmID;
    }

    public int getCID() {
        return CID;
    }

    public void setCID(int CID) {
        this.CID = CID;
    }

    public Date getExpDate() {
        return ExpDate;
    }

    public void setExpDate(Date ExpDate) {
        this.ExpDate = ExpDate;
    }

    public Bill(long Bill_ID, int EmID, int CID, Date ExpDate) {
        this.Bill_ID = Bill_ID;
        this.EmID = EmID;
        this.CID = CID;
        this.ExpDate = ExpDate;
    }
    private long Bill_ID;
    private int EmID;
    private int CID;
    private Date ExpDate;
}
