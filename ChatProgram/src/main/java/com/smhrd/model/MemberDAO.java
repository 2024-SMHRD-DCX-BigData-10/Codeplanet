package com.smhrd.model;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.mybatis.SqlSessionManager;

public class MemberDAO {

	
	static SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();

	//회원가입
	public int join(MemberDTO dto) {
		SqlSession session=	sqlSessionFactory.openSession(true);
		int row= session.insert("join",dto);
		session.close();
		
		
		return row;
	}
	
	//아이디 중복체크
	public boolean idCheck(String email) {
		SqlSession session =sqlSessionFactory.openSession(true);
		String name =session.selectOne("idCheck", email);
		session.close();
		
		if(name != null) return true;
		else return false;
	}

	//로그인
	//sql : select * from web_member where id=? and pw=?
	public MemberDTO login(MemberDTO dto) {
		SqlSession session = sqlSessionFactory.openSession(true);
		MemberDTO  user_info= session.selectOne("login", dto); //login 기능을 mapper에서 정의해줌.
		System.out.println("멤버DAO의"+user_info);
		session.close();
		return user_info;
	}

	
	public int update(MemberDTO dto) {
		SqlSession session =sqlSessionFactory.openSession(true);
		
		int row= session.update("update",dto);//(Mapper의 id값=update,넘겨줄값 = dto)
		session.close();
		
		return row;
	}
	
	public static ArrayList<MemberDTO> selectMember(){
		SqlSession session = sqlSessionFactory.openSession(true);
		ArrayList<MemberDTO> memList= (ArrayList)session.selectList("selectMember");
		session.close();
		System.out.println(memList.size());
		
		return memList;
	}
	
	public int delete(String email) {
		SqlSession session=sqlSessionFactory.openSession(true);
		int row=session.delete("delete",email);
		return row;
	}


}

