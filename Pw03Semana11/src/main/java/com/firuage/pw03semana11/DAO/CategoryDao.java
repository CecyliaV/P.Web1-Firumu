/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.firuage.pw03semana11.DAO;

import com.firuage.pw03semana11.models.Category;
import com.firuage.pw03semana11.utils.DbConnection;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Alex Bazaldua
 */
public class CategoryDao {
//CREATE TABLE `pws03`.`category` (
//  `idcategory` INT NOT NULL AUTO_INCREMENT,
//  `name` VARCHAR(60) NULL,
//  `order` INT NULL,
//  `parent` INT NULL,
//  PRIMARY KEY (`idcategory`),
//  UNIQUE INDEX `idcategory_UNIQUE` (`idcategory` ASC) VISIBLE);

//ALTER TABLE `pws03`.`category` 
//ADD INDEX `fk__idx` (`parent` ASC) VISIBLE;
//;
//ALTER TABLE `pws03`.`category` 
//ADD CONSTRAINT `fk_`
//  FOREIGN KEY (`parent`)
//  REFERENCES `pws03`.`category` (`idcategory`)
//  ON DELETE NO ACTION
//  ON UPDATE NO ACTION;

//USE `pws03`;
//DROP procedure IF EXISTS `InsertCategory`;
//
//DELIMITER $$
//USE `pws03`$$
//CREATE PROCEDURE `InsertCategory` (
//IN `pName` varchar(60),
//IN `pOrder` int ,
//IN `pParent` int
//)
//BEGIN
//INSERT INTO `pws03`.`category`
//(`name`,
//`order`,
//`parent`)
//VALUES
//(pName,
//pOrder,
//pParent);
//END$$
//
//DELIMITER ;
    


 public static int insertCategory(Category category) throws SQLException {
      Connection con = null;
     try{
        con = DbConnection.getConnection();
         String sql ="CALL InsertCategory(?,?,?)";
         CallableStatement statement = con.prepareCall(sql);
         statement.setString(1,category.getName());
         statement.setInt(2,category.getOrder());
         statement.setInt(3,category.getParent());
         return statement.executeUpdate();
     }
     catch(SQLException ex) {
         System.out.println(ex.getMessage());
     }
     finally{
         if(con!=null){
             con.close();
         }
     }
     return 0;
 }
 
//USE `pws03`;
//DROP procedure IF EXISTS `GetCategories`;
//
//USE `pws03`;
//DROP procedure IF EXISTS `pws03`.`GetCategories`;
//;
//
//DELIMITER $$
//USE `pws03`$$
//CREATE DEFINER=`root`@`localhost` PROCEDURE `GetCategories`()
//BEGIN
//SELECT `category`.`idcategory`,
//    `category`.`name`,
//    `category`.`order`,
//    `category`.`parent`
//FROM `pws03`.`category`
//ORDER BY  `category`.`order`,`category`.`name`;
//
//END$$
//
//DELIMITER ;
//;


    public static List<Category> getCategories() throws SQLException{
        Connection con = null;
        List<Category> categories =new ArrayList();
        try{
        con = DbConnection.getConnection();
         String sql ="CALL GetCategories();";
         CallableStatement statement = con.prepareCall(sql);
         
         ResultSet result = statement.executeQuery();
         
         while(result.next()){
             int id = result.getInt(1);
             String name = result.getString(2);
             int order = result.getInt(3);
             int parent = result.getInt(4);
             categories.add(new Category(id, name, order, parent));
         }
         
         return categories;
     }
     catch(SQLException ex) {
         System.out.println(ex.getMessage());
     }
     finally{
         if(con!=null){
             con.close();
         } 
     }
        return null;
    }

    public static List<Category> GetCategories() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}
