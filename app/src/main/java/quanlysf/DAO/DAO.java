/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package quanlysf.DAO;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import quanlysf.DAO.*;

/**
 *
 * @author dinhd
 */
public interface DAO<T> {
    List<T>get(int i) throws SQLException, FileNotFoundException, IOException;

    List<T> getALL() throws SQLException, FileNotFoundException, IOException;

    int save(T t) throws SQLException;

    int insert(T t) throws SQLException, FileNotFoundException;
    
    int update (T t) throws SQLException;

    int delete (int i) throws SQLException;
    
}


