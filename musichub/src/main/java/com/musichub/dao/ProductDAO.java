package com.musichub.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.musichub.model.Product;

public interface ProductDAO {

Product selectProduct(int productId);
void insertProduct(Product p);
void deleteProduct(int productId);
void updateProduct(Product p);
List<Product> getAllProduct();


}


