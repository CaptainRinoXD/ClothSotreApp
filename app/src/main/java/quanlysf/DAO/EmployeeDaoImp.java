package quanlysf.DAO;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;


import quanlysf.function.DatabaseConnector;
import quanlysf.ui.EmployeesSearch;

public class EmployeeDaoImp implements EmployeeDAO {

    @Override
    // Phương thức get id 
    public List<Employee> get(int id) throws SQLException {
        DatabaseConnector dbConnector;
        dbConnector = new DatabaseConnector();
        Connection connection = dbConnector.connect();
        //Employee employee = null;

        List<Employee> employees = new ArrayList<>();
        String sql = "SELECT id, name, age, salary, email, department FROM employees WHERE id = ?";
        PreparedStatement myStmt = connection.prepareStatement(sql);
        myStmt.setInt(1, id);

        ResultSet rs = myStmt.executeQuery();

        if (rs.next()) {
            int Oid = rs.getInt("id");
            String name = rs.getString("name");
            int age = rs.getInt("age");
            int salary = rs.getInt("salary");
            String email = rs.getString("email");
            String department = rs.getString("department");

            Employee employee = new Employee(Oid, name, age, salary, email, department);
            employees.add(employee);
        }
        return employees;
    }

    @Override
    // Phương thức gọi tất cả bảng employee
    public List<Employee> getALL() throws SQLException {
        DatabaseConnector dbConnector = new DatabaseConnector();
        Connection connection = dbConnector.connect();

        List<Employee> employees = new ArrayList<>();
        String sql = "Select * from employees"; 

        Statement myStmt = connection.createStatement();
        ResultSet Rs = myStmt.executeQuery(sql);

        while(Rs.next()) {
            int id = Rs.getInt("id");
            String name = Rs.getString("name");
            int age = Rs.getInt("age");
            int salary = Rs.getInt("salary");
            String email = Rs.getString("email");
            String department = Rs.getString("department");

            Employee employee = new Employee(id, name, age, salary, email, department);
			
			employees.add(employee);
            
        }
        return employees;
        
    }

    @Override
    // Phương thức nhập vào bảng empolyee
    public int insert(Employee employee) throws SQLException {
        DatabaseConnector dbConnector = new DatabaseConnector();
        Connection connection = dbConnector.connect();
        String sql = "insert into employees"
        + "(name, age, salary, email, department)"
        + "values (?, ?, ? , ?, ?)";

        PreparedStatement myStmt = connection.prepareStatement(sql);
        myStmt.setString(1, employee.getName());
        myStmt.setInt(2, employee.getAge());
        myStmt.setInt(3, employee.getSalary());
        myStmt.setString(4, employee.getEmail());
        myStmt.setString(5, employee.getDepartment());

        int resullt = myStmt.executeUpdate();

        dbConnector.closeConnection();
        return resullt;
    }

    @Override
    public int save(Employee employee) throws SQLException {
        // TODO Auto-generated method stub
        throw new UnsupportedOperationException("Unimplemented method 'insert'");
    }

    @Override
    public int update(Employee employee) throws SQLException {
        PreparedStatement myStmt = null;
        DatabaseConnector dbConnector = new DatabaseConnector();
        Connection connection = dbConnector.connect();
        
        String sql = "UPDATE employees "
                   + "SET name = ?, age = ?, salary = ?, email = ?, department = ? "
                   + "WHERE id = ?";
        myStmt = connection.prepareStatement(sql);
    
        myStmt.setString(1, employee.getName());
        myStmt.setInt(2, employee.getAge());
        myStmt.setInt(3, employee.getSalary());
        myStmt.setString(4, employee.getEmail());
        myStmt.setString(5, employee.getDepartment());
        myStmt.setInt(6, employee.getId());
        
        int result = myStmt.executeUpdate();
        dbConnector.closeConnection();
        return result;
    }

    @Override
    public int delete(int id) throws SQLException {
        // TODO Auto-generated method stub
        PreparedStatement myStmt = null;
        DatabaseConnector dbConnector = new DatabaseConnector();
        Connection connection = dbConnector.connect();

        String sql = "Delete from employees where id = ? ";
        myStmt = connection.prepareStatement(sql);
        myStmt.setInt(1, id);
        int resullt = myStmt.executeUpdate();
        dbConnector.closeConnection();
        return resullt;
    }

    @Override
    public List<Employee> getStr(String i) throws SQLException, FileNotFoundException, IOException {
        // TODO Auto-generated method stub
        throw new UnsupportedOperationException("Unimplemented method 'getStr'");
    }

    @Override
    public int deleteStr(String i) throws SQLException {
        // TODO Auto-generated method stub
        throw new UnsupportedOperationException("Unimplemented method 'deleteStr'");
    }

    @Override
    public List<Employee> getAll_IDList() throws SQLException, FileNotFoundException, IOException {
        DatabaseConnector dbConnector = new DatabaseConnector();
        Connection connection = dbConnector.connect();

        EmployeesSearch.EmployeeID_ComboBox.removeAllItems();

        List<Employee> employees = new ArrayList<>();
        String sql = "Select * from employees"; 

        Statement myStmt = connection.createStatement();
        ResultSet Rs = myStmt.executeQuery(sql);

        while(Rs.next()) {
            int id = Rs.getInt("id");
            String EmID = String.valueOf(id);
            EmployeesSearch.EmployeeID_ComboBox.addItem(EmID);
            String name = Rs.getString("name");
            int age = Rs.getInt("age");
            int salary = Rs.getInt("salary");
            String email = Rs.getString("email");
            String department = Rs.getString("department");

            Employee employee = new Employee(id, name, age, salary, email, department);
			employees.add(employee);
            
        }
        return employees;
    }
}