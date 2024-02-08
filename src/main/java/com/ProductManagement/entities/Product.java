package com.ProductManagement.entities;

import java.io.Serializable;

import javax.persistence.*;

import org.hibernate.annotations.Cache;
import org.hibernate.annotations.CacheConcurrencyStrategy;

@Entity
@Table(name = "products")
@Cacheable
@Cache(usage = CacheConcurrencyStrategy.READ_WRITE)
public class Product implements Serializable {
	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name="id")
	private int id;
	private String productName;
	private String productDesc;
	private long productPrice;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public String getProductDesc() {
		return productDesc;
	}

	public void setProductDesc(String productDesc) {
		this.productDesc = productDesc;
	}

	public long getProductPrice() {
		return productPrice;
	}

	public void setProductPrice(long productPrice) {
		this.productPrice = productPrice;
	}

	

	public Product(int id, String productName, String productDesc, long productPrice) {
		super();
		this.id = id;
		this.productName = productName;
		this.productDesc = productDesc;
		this.productPrice = productPrice;
	}
	
	public Product() {
		super();
		
	}

	@Override
	public String toString() {
		return "Product [id=" + id + ", productName=" + productName + ", productDesc=" + productDesc + ", productPrice="
				+ productPrice + "]";
	}

}
