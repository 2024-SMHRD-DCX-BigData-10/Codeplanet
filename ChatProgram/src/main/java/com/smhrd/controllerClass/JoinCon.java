package com.smhrd.controllerClass;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.frontcontroller.Command;
import com.smhrd.model.MemberDAO;
import com.smhrd.model.MemberDTO;

public class JoinCon implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		System.out.println("[JoinCon]");
		
		
		//2. 회원가입 데이터 꺼내오기
		String mem_id= request.getParameter("id");
		String mem_pw= request.getParameter("pw");
		String mem_name= request.getParameter("name");
		String mem_phone= request.getParameter("phone");
		String mem_addr= request.getParameter("address");
		String mem_nick= request.getParameter("nick");
		String mem_birthdate= request.getParameter("birth");
		String mem_type= request.getParameter("type");
		String joined_at= request.getParameter("join");
		String mem_gender= request.getParameter("gender");
		
		
		System.out.println("id : "+mem_id);
		System.out.println("pw : "+mem_pw);
		System.out.println("name : "+mem_name);
		System.out.println("phone : "+mem_phone);
		System.out.println("address : "+mem_addr);
		System.out.println("nick : "+mem_nick);
		System.out.println("birth : "+mem_birthdate);
		System.out.println("type : "+mem_type);
		System.out.println("join : "+joined_at);
		System.out.println("gender : "+mem_gender);
		
		//3. DTO로 묶기 -> DB에 한 사람에대한 것을 저장해야하기때문에 한 객체로 묶어서 저장한다.
		MemberDTO dto= new MemberDTO(mem_id, mem_pw, mem_name, mem_phone,mem_addr,mem_nick,mem_birthdate,mem_gender,mem_type,joined_at);
		
		//4. DB에 회원정보를 입력할 메소드 호출
		int row = new MemberDAO().join(dto);
		
		//5. 실행한 결과에 따라 페이지 이동
		String moveURL;
		if(row>0) {
			System.out.println("회원가입 성공");
			moveURL = "forward:/JoinSuccess.jsp";
			
			//request 객체에 email저장
			request.setAttribute("id", mem_id);
		}else {
			System.out.println("회원가입 실패");
			moveURL="Real_Main.jsp";
		}
		
		
		return moveURL;
	}

}
