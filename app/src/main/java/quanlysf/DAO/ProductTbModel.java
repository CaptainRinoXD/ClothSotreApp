package quanlysf.DAO;
import java.util.List;
import javax.swing.table.AbstractTableModel;

public class ProductTbModel extends AbstractTableModel {
    private static final int ProductID_COL = 0;
    private static final int TypeID_COL = 1;
    private static final int ProductName_COL = 2;
    private static final int ProductImage_COL =3;
    private static final int ImpPrice_COL = 4;
    private static final int ExpPrice_COL = 5;
    private static final int ImpDate_COL = 6;
    public static final int Object_COL = 7;

    private String[] columnNames = { "ProductID", "TypeID", "Product Name", "Product Image", "Import Price","Export Price","Import Date"};
    private List<Product> products;

    public ProductTbModel(List<Product> thProducts) {
        products = thProducts;
    }

    @Override
    public int getRowCount() {
        return products.size();
    }

    @Override
    public int getColumnCount() {
       return columnNames.length -1;
    }

    @Override
    public String getColumnName(int col) {
        return columnNames[col];
    }

    @Override
    public Object getValueAt(int rowIndex, int columnIndex) {
        Product temProduct = products.get(rowIndex);

        switch (columnIndex) {
            case ProductID_COL:
                return temProduct.getProductID();
            case TypeID_COL:
                return temProduct.getTypeID();
            case ProductName_COL:
                return temProduct.getProductName();
            case ProductImage_COL:
                return temProduct.getProductImage();
            case ImpPrice_COL:
                return temProduct.getImpPirce();
            case ExpPrice_COL:
                return temProduct.getExpPirce();
            case ImpDate_COL:
                return temProduct.getImpDate();
            case Object_COL:
                return temProduct;
            default:
                return null;
        }
    }

    @Override
    public Class getColumnClass(int c) {
        return getValueAt(0, c).getClass();
    }
}
