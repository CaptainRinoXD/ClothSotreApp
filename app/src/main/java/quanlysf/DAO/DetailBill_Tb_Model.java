package quanlysf.DAO;
import java.util.List;
import javax.swing.table.AbstractTableModel;

public class DetailBill_Tb_Model extends AbstractTableModel {
    private static final int Bill_ID_COL = 0;
    private static final int ProductID_COL = 1;
    private static final int ProductName_COL = 2;
    private static final int Bill_Quantity_COL = 3;
    private static final int Bill_Total_COL = 4;
    private static final int Object_COL = 5;

    private String[] columnNames = {
        "Bill ID", "Product ID", "Product Name" ,"Bill Quantity", "Bill Total", "Object"
    };

    private List<DetailBill> detailBills;
    public DetailBill_Tb_Model(List<DetailBill> thDetailBills) {
        detailBills = thDetailBills;
    } // constructor
    @Override
    public int getRowCount() {
        return detailBills.size();
        // Lấy số dữ liệu trong arraylist
    }

    @Override
    public int getColumnCount() {
       return columnNames.length-1;
    }

    @Override
    public String getColumnName(int col) {
        return columnNames[col];
    }

    @Override
    public Object getValueAt(int rowIndex, int columnIndex) {
        DetailBill temDetailBill = detailBills.get(rowIndex);

        switch (columnIndex) {
            case Bill_ID_COL:
                return temDetailBill.getBill_ID();
            case ProductID_COL:
                return temDetailBill.getProduct_ID();
            case ProductName_COL:
                return temDetailBill.getProductName();
            case Bill_Quantity_COL:
                return temDetailBill.getDetailBill_Quantity();
            case Bill_Total_COL:
                return temDetailBill.getBill_Total();
            case Object_COL:
                return temDetailBill;
            default:
                return null;
        }
    }

    @Override
    public Class getColumnClass(int c) {
        return getValueAt(0, c).getClass();
    }
}
