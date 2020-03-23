/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package services;

import entities.Product;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

/**
 *
 * @author George.Giazitzis
 */
public class ProductService implements IProductService {
    
    EntityManagerFactory emf = Persistence.createEntityManagerFactory("CoffeeOnlinePU");
    EntityManager em = emf.createEntityManager();
    
    @Override
    public Product findByID(Integer id) {
        return em.find(Product.class, id);
    }
    
    @Override
    public List<Product> findAllProducts() {
        Query q = em.createNamedQuery("Product.findAll");
        List<Product> supportersList = q.getResultList();
        return supportersList;
    }
    
    @Override
    public void saveProduct(Product p) {
        em.getTransaction().begin();
        em.persist(p);
        em.getTransaction().commit();
    }
    
    @Override
    public void updateProduct(Product p) {
        em.getTransaction().begin();
        Product p1 = em.find(Product.class, p.getId());
        p1.setTitle(p.getTitle());
        p1.setPrice(p.getPrice());
        p1.setDescription(p.getDescription());
        em.getTransaction().commit();
    }
    
    @Override
    public void deleteProductById(Integer id) {
        em.getTransaction().begin();
        Query q = em.createNamedQuery("Product.findById");
        Product pr = (Product) q.setParameter("id", id).getSingleResult();
//        Product pr = em.find(Product.class, id);
        em.remove(pr);
        em.getTransaction().commit();
    }
    
}
