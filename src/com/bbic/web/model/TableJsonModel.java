package com.bbic.web.model;

import java.util.ArrayList;

import com.bbic.domain.UserPer;

public class TableJsonModel {

	long total;
	ArrayList<?> rows;
	public long getTotal() {
		return total;
	}
	public void setTotal(long total) {
		this.total = total;
	}
	public ArrayList<?> getRows() {
		return rows;
	}
	public void setRows(ArrayList<?> rows) {
		this.rows = rows;
	}
	@Override
	public String toString() {
		return "TableJsonModel [total=" + total + ", rows=" + rows + "]";
	}
	
	
	
}
