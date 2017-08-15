package com.bbic.utils;

import static org.junit.Assert.*;

import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;


import org.junit.Test;



import antlr.collections.List;

public class ListConvertMap {

	
	public static Map<String,Object> convert_list_to_map_with_java (ArrayList<Object> movies) {  
		
		String[] emp ={"usercode","username","date","catagory","price","score"};
		int i = 0;   
	    Map<String, Object> mappedMovies = new HashMap<String, Object>();  
	    for (Object obj : movies) {  
	        mappedMovies.put(emp[i], obj); 	 
	        i++;
	    }  
	    return mappedMovies;
	}  
}
