package com.bbic.web.controller;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import sun.tools.jar.resources.jar;

import com.bbic.service.services.MainService;
import com.bbic.service.services.UserInfoService;
import com.bbic.service.services.UserPerService;
import com.bbic.service.services.UserService;
import com.bbic.web.model.JsonSectorModel;
import com.bbic.web.model.MapModel;


@Controller
public class ChartController {
	
	@Resource(name = "userInfoService")
	private UserInfoService userInfoService;
	
	@Resource(name = "userPerService")
	private UserPerService userPerService;	
	
	@RequestMapping(value = "/map.do", method=RequestMethod.POST)
	public @ResponseBody ArrayList<MapModel> showbenbgmap(@RequestParam("maptag") int maptag){
		MapModel mapModel = null;
		ArrayList<MapModel> mm = new ArrayList<MapModel>();
		String[] name = {"胜利东路","前进","荆山","淮支","南岗"};
		int[] value = {255,54,122,12,44};
		for (int i = 0 ;i<5;i++){
			mapModel = new MapModel(name[i], value[i]);
			mm.add(mapModel);
		}
		return mm;
	}

	
}
