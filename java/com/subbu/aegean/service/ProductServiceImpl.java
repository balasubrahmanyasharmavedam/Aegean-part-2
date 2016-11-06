package com.subbu.aegean.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.subbu.aegean.dao.ProductDAO;
import com.subbu.aegean.model.Product;
@Service
public class ProductServiceImpl implements ProductService{
	@Autowired
	private ProductDAO productDAO;
	
	public Product get(String id){
		return productDAO.get(id);
		
	}
	
	
	
	public void saveOrUpdate(Product product){
		productDAO.saveOrUpdate(product);
	}



	@Override
	public List<Product> list() {
		
		return productDAO.list();
	}

}
	


