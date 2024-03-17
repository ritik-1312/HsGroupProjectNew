package com.model;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Transient;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;

@Entity
public class Placements {
	
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE)
	private int id;
	private String name;
	private String typeWork;
	private String companyName;
	private double pakage;
	private String location;
	private String collegeName;
	private String branch;
	private String imgname;
	@Transient
	private String search;
	
	/*
	 * @Transient private CommonsMultipartFile image;
	 */
	
	
	
	
	public Placements(int id, String name, String typeWork, String companyName, double pakage, String location,
			String collegeName, String branch, String imgname, String search) {
		super();
		this.id = id;
		this.name = name;
		this.typeWork = typeWork;
		this.companyName = companyName;
		this.pakage = pakage;
		this.location = location;
		this.collegeName = collegeName;
		this.branch = branch;
		this.imgname = imgname;
		this.search = search;
	}
	public String getSearch() {
		return search;
	}
	public void setSearch(String search) {
		this.search = search;
	}
	public String getImgname() {
		return imgname;
	}
	public void setImgname(String imgname) {
		this.imgname = imgname;
	}
	
	public double getPakage() {
		return pakage;
	}
	public void setPakage(double pakage) {
		this.pakage = pakage;
	}

	/*
	 * public CommonsMultipartFile getImage() { return image; } public void
	 * setImage(CommonsMultipartFile image) { this.image = image; }
	 */
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
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
	public String getTypeWork() {
		return typeWork;
	}
	public void setTypeWork(String typeWork) {
		this.typeWork = typeWork;
	}
	public String getCompanyName() {
		return companyName;
	}
	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}
	public String getCollegeName() {
		return collegeName;
	}
	public void setCollegeName(String collegeName) {
		this.collegeName = collegeName;
	}
	public String getBranch() {
		return branch;
	}
	public void setBranch(String branch) {
		this.branch = branch;
	}
	
	public Placements() {
		super();
	}
}
