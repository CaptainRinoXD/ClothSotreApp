//backupfor employeetbmodel

package quanlysf.DAO;

import java.util.List;
import javax.swing.table.AbstractTableModel;

public class EmployeeTbModel extends AbstractTableModel {
    private static final int EmID_COL = 0;
    private static final int NAME_COL = 1;
    private static final int AGE_COL = 2;
    private static final int SALARY_COL = 3;
    private static final int EMAIL_COL = 4;
    private static final int DEPARTMENT_COL = 5;
    public static final int OBJECT_COL = 6; // Assuming 6 is the next available index
    

    private String[] columnNames = { "EmID", "Name", "Age", "Salary", "Email", "Department","Employee Object" };
    private List<Employee> employees;

    public EmployeeTbModel(List<Employee> thEmployees) {
        employees = thEmployees;
    }

    @Override
    public int getRowCount() {
        return employees.size();
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
        Employee tempEmployee = employees.get(rowIndex);

        switch (columnIndex) {
            case EmID_COL:
                return tempEmployee.getId();
            case NAME_COL:
                return tempEmployee.getName();
            case AGE_COL:
                return tempEmployee.getAge();
            case SALARY_COL:
                return tempEmployee.getSalary();
            case EMAIL_COL:
                return tempEmployee.getEmail();
            case DEPARTMENT_COL:
                return tempEmployee.getDepartment();
            case OBJECT_COL:
                return tempEmployee; // Return the entire Employee object
            default:
                return null; // Handle unknown column index gracefully
        }
    }

    @Override
    public Class getColumnClass(int c) {
        return getValueAt(0, c).getClass();
    }
}
