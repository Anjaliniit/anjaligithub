package com.musichub.service;

import java.util.List;

import com.musichub.model.Product;

public interface ProductService {
	Product selectProduct(int productId);
	void insertProduct(Product p);
	void deleteProduct(int productId);
	void updateProduct(Product p);
	List<Product> getAllProduct();
	
	
}
