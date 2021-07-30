package com.prac.www.dao;

import com.prac.www.vo.UserVo;

public interface UserDao {
	//회원가입
	public void userJoin(UserVo vo) throws Exception;
}
