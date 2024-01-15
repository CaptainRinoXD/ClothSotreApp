package quanlysf.DAO;
import java.io.File;
import java.util.List;

//import javax.swing.ImageIcon;
import javax.swing.table.AbstractTableModel;

public class ProductTbModel extends AbstractTableModel {
    private static final int ProductID_COL = 0;
    private static final int TypeID_COL = 1;
    private static final int ProductName_COL = 2;
    private static final int ProdductQuanity_COL = 3;
    public static final int ProductImage_COL = 4;
    private static final int ImpPrice_COL = 5;
    private static final int ExpPrice_COL = 6;
    private static final int ImpDate_COL = 7;
    public static final int Object_COL = 8;

    private String[] columnNames = { "ProductID", "TypeID", "Product Name"," Product Quantity", "Product Image", "Import Price","Export Price","Import Date"};
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
       return columnNames.length;
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
            case ProdductQuanity_COL:
                return temProduct.getProductQuanity();
            case ProductImage_COL:
                File productImageFile = temProduct.getProductImage();
                if (productImageFile != null) {
                    // RETURN ICON BUT cannot change
                    //return new ImageIcon(productImageFile.toString());

                    return ("Image");
                } else {
                    return ("no Image"); // or return some default image/icon
                }
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

    
    public void clearProductImages() {
        for (Product product : products) {
            product.setProductImage(null);
        }
        fireTableDataChanged();
    }

    
    public void setRowCountToZero() {
         // Xóa danh sách sản phẩm
        fireTableDataChanged();  // Thông báo cho bảng biết rằng dữ liệu đã thay đổi
    }

    public void resetData(List<Product> newProducts) {
        products = newProducts;
        fireTableDataChanged();
    }
}
