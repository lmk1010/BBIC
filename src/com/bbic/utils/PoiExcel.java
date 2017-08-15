package com.bbic.utils;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFRichTextString;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.junit.Test;


import com.bbic.domain.UserPer;

public class PoiExcel {

	public static ArrayList<Object> read(InputStream inputStream, int rowlocal)
			throws ClassNotFoundException, Exception {
		
		ArrayList<Object> a = new ArrayList<Object>();
		
		if (rowlocal > 0) {
			
			UserPer em = null;
			
			HSSFWorkbook workbook = new HSSFWorkbook(inputStream);
	
			for (int sheetIndex = 0; sheetIndex < workbook.getNumberOfSheets(); sheetIndex++) {
				HSSFSheet sheet = workbook.getSheetAt(sheetIndex);
				
				for (int rowIndex = rowlocal - 1; rowIndex < rowlocal; rowIndex++) {
					HSSFRow row = sheet.getRow(rowIndex);
					if (row == null) {
						return null;
					}
					
					for (int cellnum = 0; cellnum < row.getLastCellNum(); cellnum++) {
						HSSFCell cell = row.getCell(cellnum);
						Object num = null;
						if (cell == null) {
							continue;
						} else if (cell.getCellType() == HSSFCell.CELL_TYPE_BLANK) {
							continue;
						} else if (cell.getCellType() == HSSFCell.CELL_TYPE_STRING) {
							num = cell.getRichStringCellValue().getString();							
						} else if (cell.getCellType() == HSSFCell.CELL_TYPE_NUMERIC) {
							num = (double) cell.getNumericCellValue();
						} else if (cell.getCellType() == HSSFCell.CELL_TYPE_BOOLEAN) {
						} else if (cell.getCellType() == HSSFCell.CELL_TYPE_FORMULA) {
						}
						a.add(num);					 
					}
				}			
				return a;
			}				
			}else {
			System.out.println("-----");
			return null;
		}
		return null;
			

		} 
	
	public static UserPer readexcel(String source,int row) {

		InputStream inputStream = null;
		UserPer em = new UserPer();
		ArrayList<Object> a = new ArrayList<Object>();
		try {
			// ��ȡ�ļ���
			inputStream = new FileInputStream(new File(source));
			try {
				a = read(inputStream, row);		
				if (a!=null){				
					BeanUtils.populate(em, ListConvertMap.convert_list_to_map_with_java(a));		
					return em;
				}
				else{
					return null;
				}				
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} 
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			try {
				if (inputStream != null) {
					inputStream.close();
				}
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		return null;
	}
	
	
}
