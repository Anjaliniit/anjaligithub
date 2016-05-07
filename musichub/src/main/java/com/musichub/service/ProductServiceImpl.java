package com.musichub.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.musichub.dao.ProductDAO;
import com.musichub.model.Product;



@Service
public class ProductServiceImpl implements ProductService {

	private ProductDAO productDAO;
	 
    public void setProductDAO(ProductDAO productDAO) {
        this.productDAO = productDAO;
    }
	@Transactional
	public Product selectProduct(int productId) {
		return productDAO.selectProduct(productId);
	}
	@Transactional
	public void insertProduct(Product p) {
		productDAO.insertProduct(p);
		
	}
	@Transactional
	public void deleteProduct(int productId) {
		productDAO.deleteProduct(productId);
		
	}
	@Transactional
	public void updateProduct(Product p) {
		productDAO.updateProduct(p);
		
	}
	@Transactional
	public List<Product> getAllProduct() {
		
		return productDAO.getAllProduct();
	}
	/*@Autowired
	ProductDAOImpl data;
	
    ProductService()
	{
		data=new ProductDAOImpl();
	}
	public boolean mapRow(String name,String brand,String description,double price,String category)
	{
    data.addProduct(name,brand,description,price,category);
    return true;
	}
	
    public List<Product> getAllProducts() {
    	return data.getAllProduct();
		
	}*/
}
