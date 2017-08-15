package com.bbic.web.model;

public class JsonSectorModel {

	double value;
	String name;

	public JsonSectorModel() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public JsonSectorModel(double value, String name) {
		super();
		this.value = value;
		this.name = name;
	}
	
	public double getValue() {
		return value;
	}
	public void setValue(double value) {
		this.value = value;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	@Override
	public String toString() {
		return "JsonSectorModel [value=" + value + ", name=" + name
				+ ", getValue()=" + getValue() + ", getName()=" + getName()
				+ ", getClass()=" + getClass() + ", hashCode()=" + hashCode()
				+ ", toString()=" + super.toString() + "]";
	}
	
	
	
}
