package com.musichub.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.musichub.model.Product;


public interface ProductDAO {
List<Product> getAllProduct();
public void addProduct(int i,String s,String h,String k,String l);

}


