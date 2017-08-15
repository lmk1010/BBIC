package com.bbic.test;

import java.util.ArrayList;

import org.junit.Test;

import com.bbic.domain.UserPer;
import com.bbic.utils.PoiExcel;

public class testread {

	@Test
	public void test33(){
		ArrayList<UserPer> us = new ArrayList<UserPer>();
		int i = 2;
		while (i >= 2) {
			UserPer u = new UserPer();
			u = PoiExcel.readexcel("h://邮政测试.xls", i);
			if (u != null) {
				us.add(u);
			} else {
				break;
			}
			i++;

		}
		
		for (UserPer u : us){
			System.err.println(u);
			System.err.println(us.size());
		}
	}
}
