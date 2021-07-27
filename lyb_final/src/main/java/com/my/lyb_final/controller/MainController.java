package com.my.lyb_final.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.my.lyb_final.dao.UserDao;
import com.my.lyb_final.vo.Header;
import com.my.lyb_final.vo.User;

@Controller
public class MainController {

	@Resource(name="UserDao")
	private UserDao userDao;
	
	@RequestMapping(value="/", method=RequestMethod.GET)
	public String home(Model model, HttpSession session) {
		User user = (User) session.getAttribute("loginUser");
		model.addAttribute("menu","home");
		model.addAttribute("loginUser",user);
		
		
		//회원리스트 가져오기
		List<User> userList = userDao.getAllUsers();
		
		model.addAttribute("userList",userList);
		
		return "home";
	}
	
	
	@RequestMapping(value="/detail",method=RequestMethod.GET)
	public String detail(
			Model model, 
			HttpSession session, 
			@RequestParam(value="user_idx") int user_idx) {
		User user = (User) session.getAttribute("loginUser");
		model.addAttribute("loginUser",user);
		model.addAttribute("menu","home");
		
		
		User u = new User();
		u.setUser_idx(user_idx);
		
		User one = userDao.getUser(u);
		model.addAttribute("one",one);
		
		//User one = ~ 대신 그냥 그거를 model.addA~ 의 one자리에 넣어도 됨. 
		
		
		
		return "detail";
	}
	
	
	@RequestMapping(value="/product",method=RequestMethod.GET)
	public String product(Model model, HttpSession session) {
		User user = (User) session.getAttribute("loginUser");
		model.addAttribute("menu","product");
		model.addAttribute("loginUser",user);
		return "product";
	}
	
	@RequestMapping(value="/review",method=RequestMethod.GET)
	public String review(Model model, HttpSession session) {
		User user = (User) session.getAttribute("loginUser");
		model.addAttribute("menu","review");
		model.addAttribute("loginUser",user);
		return "review";
	}
	
	@RequestMapping(value="/cs",method=RequestMethod.GET)
	public String cs(Model model, HttpSession session) {
		User user = (User) session.getAttribute("loginUser");
		model.addAttribute("menu","cs");
		model.addAttribute("loginUser",user);
		return "cs";
	}
	
	@RequestMapping(value="/login",method=RequestMethod.GET)
	public String login(Model model, HttpSession session) {
		
		return "login";
	}
	
	@RequestMapping(value="/register",method=RequestMethod.GET)
	public String register() {
		return "register";
	}
	
	@RequestMapping(value="/logout",method=RequestMethod.POST)
	public @ResponseBody String logout(HttpSession session) {
		session.invalidate();
		return Header.OK;
	}
	
	@RequestMapping(value="/login",method=RequestMethod.POST)
	public @ResponseBody User loginPost(
			@RequestParam(value="id") String id, 
			@RequestParam(value="pw") String pw,
			HttpSession session
			
			) {
		
		
		User user= new User();
		user.setId(id);
		user.setPw(pw);
		
		User resultUser = userDao.getUserByIdAndPw(user);
		
		if(resultUser != null) {
			session.setAttribute("loginUser", resultUser);
		}
		
		return resultUser;
	}
	
}
