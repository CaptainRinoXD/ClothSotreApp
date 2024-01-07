package quanlysf.DAO;

import java.util.List;

import javax.swing.table.AbstractTableModel;

public class ProductTypeTbModel extends AbstractTableModel {
    private static final int TypeID_COL = 0;
    private static final int TypeName_COL = 1;
    public static final int Object_COL = 2;

    private String[] columnNames = { "TypeID", "Type name", "Object" };
    private List<ProductType> productTypes;
    public ProductTypeTbModel(List<ProductType> thProducts) {
        productTypes = thProducts;
    }  

    @Override
    public int getRowCount() {
       return productTypes.size();
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
        ProductType temProductType = productTypes.get(rowIndex);

        switch (columnIndex) {
            case TypeID_COL:
                return temProductType.getTypeID();
            case TypeName_COL:
                return temProductType.getTypeName();
            case Object_COL:
                return temProductType;
            default:
                return null;
        }
    }

    @Override
    public Class getColumnClass(int c) {
        return getValueAt(0, c).getClass();
    }
}
