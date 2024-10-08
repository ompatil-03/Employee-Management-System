package com.jsp.bean;

public class Employee {
	private int id;
	private String name;
	private String city;
	private String phone;
	
	public Employee(int id, String name, String city, String phone) {
		super();
		this.id = id;
		this.name = name;
		this.city = city;
		this.phone = phone;
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
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	@Override
	public String toString() {
		return "Employee [id=" + id + ", name=" + name + ", city=" + city + ", phone=" + phone + "]";
	}
	public Employee() {
		super();
	}
}
