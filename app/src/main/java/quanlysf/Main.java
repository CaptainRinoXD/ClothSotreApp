package quanlysf;

import quanlysf.function.*;
//import quanlysf.storedProcedures.*;
//import quanlysf.BLOB_CLOB.*;
//import quanlysf.feature.*;
import quanlysf.DAO.*;
import java.io.FileNotFoundException;
import quanlysf.ui.*;
import java.io.IOException;
import java.sql.SQLException;


public class Main {
    public static void main(String[] args) throws SQLException, IOException {
        //Insert obInsert = new Insert();
        //obInsert.insertMethod();
        
        //Update obUpdate = new Update();
        //obUpdate.updateMethod();

        //Delete obDelete = new Delete();
        //obDelete.deleteMethod();

        //increaseSalary obIncreaseSalary = new increaseSalary();
        //obIncreaseSalary.IncreaseSalaryMethod();

        //greeting obGreet = new greeting();
        //obGreet.greetingMethod();

        //countDeparment obCountDeparment = new countDeparment();
        //obCountDeparment.countMethod();

        //getDepartment obGetDepartment = new getDepartment();
        //obGetDepartment.getDepartmentMethod();

        //transsaction obTranssaction = new transsaction();
        //obTranssaction.transsactionMethod();

        //metaData obMetaData = new metaData();
        //obMetaData.metaDataMethod();

        //resultSetMD obResultSetMD = new resultSetMD();
        //obResultSetMD.rsMD();

        //resumeB obResume = new resumeB();
        //obResume.resumeMethod();

        //resumeReadC obReadC = new resumeReadC();
        //obReadC.resumeMethod();

        //resumeWriteC obWriteC = new resumeWriteC();
        //obWriteC.resumeMethod();

        //EmployeeDAO employeeDAO = new EmployeeDaoImp();
        //System.out.println(employeeDAO.get(1));


        //EmployeesSearch employeesSearch = new EmployeesSearch();
        //employeesSearch.setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        //employeesSearch.setVisible(true);

        //ProductDao productDao = new ProductDaoimp();
        //System.out.println(productDao.get(1));
        Product product = new Product(1, "AoBaL", "Áo ba lỗ pumma", 50, null, 100000, 1000000, null);
        ProductDao productDao = new ProductDaoimp();
        productDao.insert(product);
    }
}