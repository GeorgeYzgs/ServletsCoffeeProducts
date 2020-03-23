/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package services;

import entities.Product;
import java.util.List;

/**
 *
 * @author George.Giazitzis
 */
public interface IProductService {

    Product findByID(Integer id);

    List<Product> findAllProducts();

    void saveProduct(Product p);

    void updateProduct(Product p);

    void deleteProductById(Integer id);
}
