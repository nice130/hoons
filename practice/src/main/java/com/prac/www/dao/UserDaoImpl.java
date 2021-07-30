package com.prac.www.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.prac.www.vo.UserVo;

@Repository
public class UserDaoImpl implements UserDao{
	@Autowired
	private SqlSession sql;
	
	private static String namespace = "userMappers";
	//회원가입
	@Override
	public void userJoin(UserVo vo) throws Exception {
		sql.insert(namespace+".userJoin",vo);
	}

}
