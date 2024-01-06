/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/GUIForms/JFrame.java to edit this template
 */
package quanlysf.ui;
import quanlysf.DAO.*;
import javax.swing.JOptionPane;
import javax.swing.JTabbedPane;
import javax.swing.JTable;
import javax.swing.table.DefaultTableModel;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;
/**
 *
 * @author dinhd
 */
public class EmployeesSearch extends javax.swing.JFrame {
    private EmployeeDAO employeeDAO;
    private ProductDao productDao;
    private String previousProductIDValue = "";

    /**
     * Creates new form EmployeesSearch
     */
    public EmployeesSearch() {
        initComponents();
        // Create DAO
        this.setLocationRelativeTo(null);
        try {
            employeeDAO = new EmployeeDaoImp();
            productDao = new ProductDaoimp();
        } catch (Exception exc) {
            JOptionPane.showMessageDialog(this,"Error" + exc , "Error", JOptionPane.ERROR_MESSAGE);
        }
    }

    public void refreshEmployeeView() {
        // TODO
        try {
            List<Employee> employees = null;
            employees = employeeDAO.getALL();

            //create table and update table
            EmployeeTbModel model = new EmployeeTbModel(employees);
            jTable1.setModel(model);
        } catch (Exception exc) {
            JOptionPane.showMessageDialog(this, "Error" + exc,"Error" , JOptionPane.ERROR_MESSAGE);
        }
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jPanel2 = new javax.swing.JPanel();
        jLabel2 = new javax.swing.JLabel();
        jTabbedPane = new javax.swing.JTabbedPane();
        ProductPanel = new javax.swing.JPanel();
        btnSearchProduct = new javax.swing.JButton();
        ProductIDtextField = new javax.swing.JTextField();
        jLabel3 = new javax.swing.JLabel();
        btnDeleteProduct = new javax.swing.JButton();
        btnUpdateProduct = new javax.swing.JButton();
        btnADDproduct = new javax.swing.JButton();
        btnViewProduct = new javax.swing.JButton();
        jScrollPane2 = new javax.swing.JScrollPane();
        jTable2 = new javax.swing.JTable();
        ProductTypesPanel = new javax.swing.JPanel();
        EmployeePanel = new javax.swing.JPanel();
        btnSearch = new javax.swing.JButton();
        employeeIDtextField = new javax.swing.JTextField();
        jLabel1 = new javax.swing.JLabel();
        btnDelete = new javax.swing.JButton();
        btnUpdate = new javax.swing.JButton();
        btnADD = new javax.swing.JButton();
        jScrollPane1 = new javax.swing.JScrollPane();
        jTable1 = new javax.swing.JTable();
        CostumersPanel = new javax.swing.JPanel();
        BillPanel = new javax.swing.JPanel();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setTitle("Employee");
        setBackground(new java.awt.Color(0, 0, 0));
        setLocation(new java.awt.Point(0, 1000));
        setLocationByPlatform(true);
        setResizable(false);

        jPanel2.setBackground(new java.awt.Color(142, 154, 255));

        jLabel2.setFont(new java.awt.Font("Segoe UI", 1, 24)); // NOI18N
        jLabel2.setForeground(new java.awt.Color(255, 255, 255));
        jLabel2.setText("ClothStore Management Software");

        btnSearchProduct.setText("Search");
        btnSearchProduct.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                try {
                    btnSearchProductActionPerformed(evt);
                } catch (FileNotFoundException e) {
                    // TODO Auto-generated catch block
                    e.printStackTrace();
                } catch (SQLException e) {
                    // TODO Auto-generated catch block
                    e.printStackTrace();
                } catch (IOException e) {
                    // TODO Auto-generated catch block
                    e.printStackTrace();
                }
            }
        });

        ProductIDtextField.setToolTipText("");
        ProductIDtextField.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                ProductIDtextFieldActionPerformed(evt);
            }
        });

        jLabel3.setBackground(new java.awt.Color(255, 255, 255));
        jLabel3.setFont(new java.awt.Font("Segoe UI", 3, 14)); // NOI18N
        jLabel3.setText("Enter Employee ID");
        jLabel3.setCursor(new java.awt.Cursor(java.awt.Cursor.DEFAULT_CURSOR));

        btnDeleteProduct.setBackground(new java.awt.Color(236, 232, 255));
        btnDeleteProduct.setText("Delete Product");
        btnDeleteProduct.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnDeleteProductActionPerformed(evt);
            }
        });

        btnUpdateProduct.setBackground(new java.awt.Color(236, 232, 255));
        btnUpdateProduct.setText("Update Product");
        btnUpdateProduct.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnUpdateProductActionPerformed(evt);
            }
        });

        btnADDproduct.setBackground(new java.awt.Color(236, 232, 255));
        btnADDproduct.setText("Add Product");
        btnADDproduct.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnADDproductActionPerformed(evt);
            }
        });

        btnViewProduct.setBackground(new java.awt.Color(236, 232, 255));
        btnViewProduct.setText("View");
        btnViewProduct.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                try {
                    btnViewProductActionPerformed(evt);
                } catch (FileNotFoundException e) {
                    // TODO Auto-generated catch block
                    e.printStackTrace();
                } catch (SQLException e) {
                    // TODO Auto-generated catch block
                    e.printStackTrace();
                } catch (IOException e) {
                    // TODO Auto-generated catch block
                    e.printStackTrace();
                }
            }
        });

        jScrollPane2.setBackground(new java.awt.Color(255, 255, 255));
        jScrollPane2.setBorder(null);

        jTable2.setFont(new java.awt.Font("Segoe UI", 0, 14)); // NOI18N
        jTable2.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {

            },
            new String [] {

            }
        ));
        jScrollPane2.setViewportView(jTable2);

        javax.swing.GroupLayout ProductPanelLayout = new javax.swing.GroupLayout(ProductPanel);
        ProductPanel.setLayout(ProductPanelLayout);
        ProductPanelLayout.setHorizontalGroup(
            ProductPanelLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jScrollPane2)
            .addGroup(ProductPanelLayout.createSequentialGroup()
                .addContainerGap()
                .addComponent(btnADDproduct, javax.swing.GroupLayout.PREFERRED_SIZE, 114, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(btnUpdateProduct)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(btnDeleteProduct)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(btnViewProduct)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 114, Short.MAX_VALUE)
                .addComponent(jLabel3, javax.swing.GroupLayout.PREFERRED_SIZE, 124, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(ProductIDtextField, javax.swing.GroupLayout.PREFERRED_SIZE, 122, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(btnSearchProduct, javax.swing.GroupLayout.PREFERRED_SIZE, 89, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap())
        );
        ProductPanelLayout.setVerticalGroup(
            ProductPanelLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(ProductPanelLayout.createSequentialGroup()
                .addComponent(jScrollPane2, javax.swing.GroupLayout.DEFAULT_SIZE, 452, Short.MAX_VALUE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addGroup(ProductPanelLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(btnADDproduct, javax.swing.GroupLayout.PREFERRED_SIZE, 31, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(btnUpdateProduct, javax.swing.GroupLayout.PREFERRED_SIZE, 31, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(btnDeleteProduct, javax.swing.GroupLayout.PREFERRED_SIZE, 31, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(ProductIDtextField, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel3)
                    .addComponent(btnSearchProduct)
                    .addComponent(btnViewProduct, javax.swing.GroupLayout.PREFERRED_SIZE, 31, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addContainerGap())
        );

        jTabbedPane.addTab("Products", ProductPanel);

        javax.swing.GroupLayout ProductTypesPanelLayout = new javax.swing.GroupLayout(ProductTypesPanel);
        ProductTypesPanel.setLayout(ProductTypesPanelLayout);
        ProductTypesPanelLayout.setHorizontalGroup(
            ProductTypesPanelLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 905, Short.MAX_VALUE)
        );
        ProductTypesPanelLayout.setVerticalGroup(
            ProductTypesPanelLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 501, Short.MAX_VALUE)
        );

        jTabbedPane.addTab("Product Types", ProductTypesPanel);

        btnSearch.setText("Search");
        btnSearch.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnSearchActionPerformed(evt);
            }
        });

        employeeIDtextField.setToolTipText("");
        employeeIDtextField.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                employeeIDtextFieldActionPerformed(evt);
            }
        });

        jLabel1.setBackground(new java.awt.Color(255, 255, 255));
        jLabel1.setFont(new java.awt.Font("Segoe UI", 3, 14)); // NOI18N
        jLabel1.setText("Enter Employee ID");
        jLabel1.setCursor(new java.awt.Cursor(java.awt.Cursor.DEFAULT_CURSOR));

        btnDelete.setBackground(new java.awt.Color(236, 232, 255));
        btnDelete.setText("Delete Employee");
        btnDelete.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnDeleteActionPerformed(evt);
            }
        });

        btnUpdate.setBackground(new java.awt.Color(236, 232, 255));
        btnUpdate.setText("Update Employee");
        btnUpdate.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnUpdateActionPerformed(evt);
            }
        });

        btnADD.setBackground(new java.awt.Color(236, 232, 255));
        btnADD.setText("Add Employee");
        btnADD.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnADDActionPerformed(evt);
            }
        });

        jScrollPane1.setBackground(new java.awt.Color(255, 255, 255));
        jScrollPane1.setBorder(null);

        jTable1.setFont(new java.awt.Font("Segoe UI", 0, 14)); // NOI18N
        jTable1.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {

            },
            new String [] {

            }
        ));
        jScrollPane1.setViewportView(jTable1);

        javax.swing.GroupLayout EmployeePanelLayout = new javax.swing.GroupLayout(EmployeePanel);
        EmployeePanel.setLayout(EmployeePanelLayout);
        EmployeePanelLayout.setHorizontalGroup(
            EmployeePanelLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(EmployeePanelLayout.createSequentialGroup()
                .addContainerGap()
                .addComponent(btnADD, javax.swing.GroupLayout.PREFERRED_SIZE, 114, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(btnUpdate)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(btnDelete)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 174, Short.MAX_VALUE)
                .addComponent(jLabel1, javax.swing.GroupLayout.PREFERRED_SIZE, 124, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(employeeIDtextField, javax.swing.GroupLayout.PREFERRED_SIZE, 122, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(btnSearch, javax.swing.GroupLayout.PREFERRED_SIZE, 89, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap())
            .addComponent(jScrollPane1)
        );
        EmployeePanelLayout.setVerticalGroup(
            EmployeePanelLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(EmployeePanelLayout.createSequentialGroup()
                .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 452, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addGroup(EmployeePanelLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(btnADD, javax.swing.GroupLayout.PREFERRED_SIZE, 31, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(btnUpdate, javax.swing.GroupLayout.PREFERRED_SIZE, 31, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(btnDelete, javax.swing.GroupLayout.PREFERRED_SIZE, 31, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(employeeIDtextField, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel1)
                    .addComponent(btnSearch))
                .addContainerGap())
        );

        btnSearch.getAccessibleContext().setAccessibleDescription("");

        jTabbedPane.addTab("Employees", EmployeePanel);

        javax.swing.GroupLayout CostumersPanelLayout = new javax.swing.GroupLayout(CostumersPanel);
        CostumersPanel.setLayout(CostumersPanelLayout);
        CostumersPanelLayout.setHorizontalGroup(
            CostumersPanelLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 905, Short.MAX_VALUE)
        );
        CostumersPanelLayout.setVerticalGroup(
            CostumersPanelLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 501, Short.MAX_VALUE)
        );

        jTabbedPane.addTab("Costumers", CostumersPanel);

        javax.swing.GroupLayout BillPanelLayout = new javax.swing.GroupLayout(BillPanel);
        BillPanel.setLayout(BillPanelLayout);
        BillPanelLayout.setHorizontalGroup(
            BillPanelLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 905, Short.MAX_VALUE)
        );
        BillPanelLayout.setVerticalGroup(
            BillPanelLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 501, Short.MAX_VALUE)
        );

        jTabbedPane.addTab("     Bill     ", BillPanel);

        javax.swing.GroupLayout jPanel2Layout = new javax.swing.GroupLayout(jPanel2);
        jPanel2.setLayout(jPanel2Layout);
        jPanel2Layout.setHorizontalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addGap(15, 15, 15)
                .addComponent(jLabel2)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addComponent(jTabbedPane, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(0, 0, Short.MAX_VALUE))
        );
        jPanel2Layout.setVerticalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addGap(25, 25, 25)
                .addComponent(jLabel2, javax.swing.GroupLayout.PREFERRED_SIZE, 64, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jTabbedPane))
        );

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void employeeIDtextFieldActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_employeeIDtextFieldActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_employeeIDtextFieldActionPerformed

    private void btnSearchActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnSearchActionPerformed
        try {
            String idText = employeeIDtextField.getText();
            List<Employee> employees = null;
            if (!idText.trim().isEmpty()) {
                int id = Integer.parseInt(idText);
                employees= employeeDAO.get(id);
                EmployeeTbModel model = new EmployeeTbModel(employees);
                jTable1.setModel(model);
                // Now you can use the 'id' to search for the employee
                
            } if (idText.trim().isEmpty()) {
                employees = employeeDAO.getALL();
                EmployeeTbModel model = new EmployeeTbModel(employees);
                jTable1.setModel(model);
                
            } if (employees.isEmpty()) {
                JOptionPane.showMessageDialog(EmployeesSearch.this, "No employees found for the given ID", "Result", JOptionPane.INFORMATION_MESSAGE);
            }
        } catch (NumberFormatException ex) {
            JOptionPane.showMessageDialog(EmployeesSearch.this, "Invalid ID format", "Error", JOptionPane.ERROR_MESSAGE);
        } catch (Exception exc) {
            JOptionPane.showMessageDialog(EmployeesSearch.this, "Error: " + exc, "Error", JOptionPane.ERROR_MESSAGE);
        }
    }//GEN-LAST:event_btnSearchActionPerformed

    private void btnADDActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnADDActionPerformed
        // TODO add your handling code here:

        // Create dialog 
        EmployeeAdd dialog = new EmployeeAdd(null, rootPaneCheckingEnabled, EmployeesSearch.this, employeeDAO, null, false);
        dialog.setVisible(true);

    }//GEN-LAST:event_btnADDActionPerformed

    private void btnUpdateActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnUpdateActionPerformed
        int objectColumnIndex = EmployeeTbModel.OBJECT_COL;
        int row = jTable1.getSelectedRow();

        // Make sure a row is selected
        if (row >= 0) {
        Employee selectedEmployee = (Employee) jTable1.getModel().getValueAt(row, objectColumnIndex);
            // Now 'selectedEmployee' contains the entire Employee object for the selected row.
            System.out.println(selectedEmployee); // Just for testing, you can remove this line

            // Add your code to open the EmployeeAdd dialog with the selectedEmployee for updating
            // Example: 
            EmployeeAdd dialog = new EmployeeAdd(null, rootPaneCheckingEnabled, EmployeesSearch.this, employeeDAO, selectedEmployee, true);
            dialog.setVisible(true);

        } else {
            JOptionPane.showMessageDialog(EmployeesSearch.this, "You must select an employee", "ERROR", JOptionPane.ERROR_MESSAGE);
        }
        //dialog.setVisible(true);

    }//GEN-LAST:event_btnUpdateActionPerformed

    private void btnDeleteActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnDeleteActionPerformed
        // TODO add your handling code here:
        int row = jTable1.getSelectedRow();
        int objectColumnIndex = EmployeeTbModel.OBJECT_COL;

        if(row <0) {
            JOptionPane.showMessageDialog(EmployeesSearch.this , "You must select an employee", "Error", JOptionPane.ERROR_MESSAGE);
            return;
        }

        int respone = JOptionPane.showConfirmDialog(EmployeesSearch.this, "Delete this employee?", "Confirm", JOptionPane.YES_NO_OPTION,JOptionPane.QUESTION_MESSAGE);

        if (respone != JOptionPane.YES_OPTION) {
            return;
        }

        Employee tmEmployee = (Employee) jTable1.getModel().getValueAt(row, objectColumnIndex);
        try {
            employeeDAO.delete(tmEmployee.getId());
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        refreshEmployeeView();

        JOptionPane.showMessageDialog(EmployeesSearch.this, "Employee delete succesfully.","Employee Deleted",JOptionPane.INFORMATION_MESSAGE);
    }//GEN-LAST:event_btnDeleteActionPerformed

    private void btnSearchProductActionPerformed(java.awt.event.ActionEvent evt) throws FileNotFoundException, SQLException, IOException {//GEN-FIRST:event_btnSearchProductActionPerformed
        try {

            String ProductIDtext = ProductIDtextField.getText();
            List<Product> products = null;
            if (!ProductIDtext.equals(previousProductIDValue)) {
                // Giá trị đã thay đổi, thực hiện các hành động bạn muốn ở đây
                // Ví dụ: Gọi tới phương thức setRowCountToZero trong ProductTbModel
                if ((jTable2.getModel() instanceof ProductTbModel)){
                    ProductTbModel productModel = (ProductTbModel) jTable2.getModel();
                    productModel.setRowCountToZero();
                }
                // Cập nhật giá trị trước đó với giá trị hiện tại
                previousProductIDValue = ProductIDtext;
            }

            if (!ProductIDtext.trim().isEmpty()) {
                int ProductID = Integer.parseInt(ProductIDtext);
                
                products = productDao.get(ProductID);
                ProductTbModel model = new ProductTbModel(products);
                jTable2.setModel(model);
                model.setRowCountToZero();
            } if (ProductIDtext.trim().isEmpty()) {
                products = productDao.getALL();
                ProductTbModel model = new ProductTbModel(products);
                jTable2.setModel(model);
            } if (products.isEmpty()) {
                JOptionPane.showMessageDialog(EmployeesSearch.this, "No product found for the given ID", "Result", JOptionPane.INFORMATION_MESSAGE);
            }
        } catch (NumberFormatException ex) {
            JOptionPane.showMessageDialog(EmployeesSearch.this, "Invalid ID format", "Error", JOptionPane.ERROR_MESSAGE);
        } catch (Exception exc) {
            JOptionPane.showMessageDialog(EmployeesSearch.this, "Error: " + exc, "Error", JOptionPane.ERROR_MESSAGE);
        }
    }//GEN-LAST:event_btnSearchProductActionPerformed

    private void ProductIDtextFieldActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_ProductIDtextFieldActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_ProductIDtextFieldActionPerformed

    private void btnDeleteProductActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnDeleteProductActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_btnDeleteProductActionPerformed

    private void btnUpdateProductActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnUpdateProductActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_btnUpdateProductActionPerformed

    private void btnADDproductActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnADDproductActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_btnADDproductActionPerformed

    private void btnViewProductActionPerformed(java.awt.event.ActionEvent evt) throws FileNotFoundException, SQLException, IOException {//GEN-FIRST:event_btnViewProductActionPerformed
        // Get the selected row index from jTable2
        int selectedRow = jTable2.getSelectedRow();
        int selectedColumn = ProductTbModel.Object_COL;
        // Check if any row is selected
        if (selectedRow >= 0) {

            Product tmProduct = (Product) jTable2.getModel().getValueAt(selectedRow, selectedColumn);
            int productId = tmProduct.getProductID();
            System.out.println(productDao.get(productId));
            // Now you have the productID, you can fetch the corresponding Product object
            try {
                // Open the ViewProduct dialog and pass the Product object to it
                ViewImage viewProductDialog = new ViewImage(this, true, tmProduct);
                viewProductDialog.setVisible(true);
            } catch (Exception ex) {
                ex.printStackTrace(); // Handle the exception appropriately
            }
        } else {
            JOptionPane.showMessageDialog(this, "Please select a row in jTable2.", "No Row Selected", JOptionPane.INFORMATION_MESSAGE);
        }
    }//GEN-LAST:event_btnViewProductActionPerformed


    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(EmployeesSearch.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(EmployeesSearch.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(EmployeesSearch.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(EmployeesSearch.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new EmployeesSearch().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JPanel BillPanel;
    private javax.swing.JPanel CostumersPanel;
    private javax.swing.JPanel EmployeePanel;
    private javax.swing.JTextField ProductIDtextField;
    private javax.swing.JPanel ProductPanel;
    private javax.swing.JPanel ProductTypesPanel;
    private javax.swing.JButton btnADD;
    private javax.swing.JButton btnADDproduct;
    private javax.swing.JButton btnDelete;
    private javax.swing.JButton btnDeleteProduct;
    private javax.swing.JButton btnSearch;
    private javax.swing.JButton btnSearchProduct;
    private javax.swing.JButton btnUpdate;
    private javax.swing.JButton btnUpdateProduct;
    private javax.swing.JButton btnViewProduct;
    private javax.swing.JTextField employeeIDtextField;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JScrollPane jScrollPane2;
    private javax.swing.JTabbedPane jTabbedPane;
    private javax.swing.JTable jTable1;
    private javax.swing.JTable jTable2;
    // End of variables declaration//GEN-END:variables
}
