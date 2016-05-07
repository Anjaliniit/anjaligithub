package com.musichub.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
public class Product
{
@Id
@GeneratedValue
private int id;
private String name,brand,description,category;
double price;
public Product(){}

public int getId() {
	return id;
}

public double getPrice() {
	return price;
}

public void setPrice(double price) {
	this.price = price;
}

public void setId(int id) {
	this.id = id;
}

public String getName() {
	return name;
}

public void setName(String name) {
	this.name = name;
}

public String getBrand() {
	return brand;
}

public void setBrand(String brand) {
	this.brand = brand;
}

public String getDescription() {
	return description;
}

public void setDescription(String description) {
	this.description = description;
}

public String getCategory() {
	return category;
}

public void setCategory(String category) {
	this.category = category;
}







}