package com.my.lyb_final.dao;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import com.my.lyb_final.vo.User;

public class UserDao extends SqlSessionDaoSupport{

	public int addUser(User user) {
		return this.getSqlSession().insert("user.addUser",user);
	}
	
	public User getUserByIdAndPw(User a) {
		return this.getSqlSession().selectOne("user.getUserByIdAndPw",a);
	}

	public List<User> getAllUsers(){
		return this.getSqlSession().selectList("user.getAll");
	}

	public User getUser(User user) {
		return this.getSqlSession().selectOne("user.getUser",user);
	}
	
	
}
