/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package quanlysf.DAO;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author dinhd
 */
public interface DAO<T> {
    List<T>getlong(long i) throws SQLException;
    List<T>get(int i) throws SQLException, FileNotFoundException, IOException;
    List<T>getStr(String i) throws SQLException, FileNotFoundException, IOException;
    

    List<T> getALL() throws SQLException, FileNotFoundException, IOException;
    List<T> getAll_IDList() throws SQLException, FileNotFoundException, IOException;
    
    int save(T t) throws SQLException;


    int insert(T t) throws SQLException, FileNotFoundException;
    
    int update (T t) throws SQLException, FileNotFoundException;

    int delete (int i) throws SQLException;
    int deleteStr (String i) throws SQLException;
    long deletelong (Long i) throws SQLException;


    
}


