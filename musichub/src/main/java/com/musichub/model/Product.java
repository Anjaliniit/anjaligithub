package com.musichub.model;


public class Product
{
	
private int id;
private String name,brand,description,category;
public Product(){}

public Product(int id,String name,String brand,String description,String category)
{
this.id=id;
this.name=name;
this.brand=brand;
this.description=description;
this.category=category;
}

public int getId() {
	return id;
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