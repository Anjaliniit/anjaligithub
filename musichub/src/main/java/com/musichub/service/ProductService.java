package com.musichub.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.musichub.dao.ProductDAOImpl;
import com.musichub.model.Product;


@Service("serv")
public class ProductService {
	@Autowired
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
		
	}
	
}
