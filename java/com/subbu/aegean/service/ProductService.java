package com.subbu.aegean.service;

import java.util.List;

import com.subbu.aegean.model.Product;


public interface ProductService {
	
	  List<Product> list();

	    Product get (String id);

	    void saveOrUpdate(Product product);



}
