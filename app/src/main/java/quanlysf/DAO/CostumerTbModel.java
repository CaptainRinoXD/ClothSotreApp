package quanlysf.DAO;

import java.util.List;
import javax.swing.table.AbstractTableModel;

public class CostumerTbModel extends AbstractTableModel{
    private static final int CID_COL = 0;
    private static final int Cname_COL = 1;
    private static final int Caddress_COL = 2;
    private static final int Cnumber_COL = 3;
    public static final int OBJECT_COL = 4;


    private String[] columnNames = {"Costumer ID", "Costumer name", "Costumer address", "Costumer number"};
    private List<Costumer> costumers;

    public CostumerTbModel(List<Costumer> thCostumers){
        costumers = thCostumers;
    }


    @Override
    public int getRowCount() {
        return costumers.size();
    }

    @Override
    public int getColumnCount() {
        return columnNames.length;
    }

    @Override
    public String getColumnName(int col) {
        return columnNames[col];
    }

    @Override
    public Object getValueAt(int rowIndex, int columnIndex) {
       Costumer tempCostumer = costumers.get(rowIndex);

       switch (columnIndex) {
        case CID_COL:
            return tempCostumer.getCID();
        case Cname_COL:
            return tempCostumer.getCname();
        case Caddress_COL:
            return tempCostumer.getCaddress();
        case Cnumber_COL:
            return tempCostumer.getCnumber();
        case OBJECT_COL:
            return tempCostumer;
        default:
            return null;
       }
    }

    @Override
    public Class getColumnClass(int c) {
        return getValueAt(0, c).getClass();
    }
    
}
