package com.musichub.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.musichub.model.Product;

public interface ProductDAO {
	
List<Product> getAllProduct();
int addProduct(String name,String brand,String description,double price,String category);

}


