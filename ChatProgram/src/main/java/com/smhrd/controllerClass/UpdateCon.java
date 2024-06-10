package com.smhrd.controllerClass;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.frontcontroller.Command;
import com.smhrd.model.MemberDAO;
import com.smhrd.model.MemberDTO;

public class UpdateCon implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//데이터 꺼내오기
		String id= request.getParameter("id");
		String pw= request.getParameter("pw");
		String name= request.getParameter("name");
		String phone= request.getParameter("phone");
		String address= request.getParameter("address");
		String nick= request.getParameter("nick");
		String birth= request.getParameter("birth");
		String type= request.getParameter("type");
		String join= request.getParameter("join");
		String gender= request.getParameter("gender");
				
		System.out.println("id : "+id);
		System.out.println("pw : "+pw);
		System.out.println("name : "+name);
		System.out.println("phone : "+phone);
		System.out.println("address : "+address);
		System.out.println("nick : "+nick);
		System.out.println("birth : "+birth);
		System.out.println("type : "+type);
		System.out.println("join : "+join);
		System.out.println("gender : "+gender);
				
				//DTO로 묶기
				MemberDTO dto= new MemberDTO(id, pw, name, phone,address,nick,birth,type,join,gender);
				
				//update메소드 호출
				int row =new MemberDAO().update(dto);
				
				//실행결과 확인
				if(row>0) {
					System.out.println("회원정보수정 성공");
					
					// session에 저장된 user_info 업데이트
					request.getSession().setAttribute("user_info", dto);
				}else {
					System.out.println("회원정보수정 실패");
					
			
					
				}	
			
				return "Main.jsp";
	}

}

