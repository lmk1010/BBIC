package com.bbic.web.model;

public class MapModel {

	
	String name;
	int value;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getValue() {
		return value;
	}
	public void setValue(int value) {
		this.value = value;
	}
	@Override
	public String toString() {
		return "MapModel [name=" + name + ", value=" + value + "]";
	}
	public MapModel(String name, int value) {
		super();
		this.name = name;
		this.value = value;
	}
	public MapModel() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
	
}
