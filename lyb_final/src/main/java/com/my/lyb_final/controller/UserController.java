package com.my.lyb_final.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.my.lyb_final.dao.UserDao;
import com.my.lyb_final.vo.User;

@Controller
public class UserController {
	
	@Resource(name="UserDao")
	private UserDao userDao;
	
	@RequestMapping(value="/addUser",method=RequestMethod.GET)
	public @ResponseBody String addUser(
			@RequestParam(value="id") String id, 
			@RequestParam(value="pw") String pw, 
			@RequestParam(value="nn") String nickname, 
			@RequestParam(value="gd") String gender,
			@RequestParam(value="it") String intro
			) {
		
		User newUser= new User();
		newUser.setId(id);
		newUser.setPw(pw);
		newUser.setGender(gender);
		newUser.setIntro(intro);
		newUser.setNickname(nickname);
		
		userDao.addUser(newUser);
		
		return "ok";
	}
}
