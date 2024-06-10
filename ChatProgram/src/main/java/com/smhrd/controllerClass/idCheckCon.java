package com.smhrd.controllerClass;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.frontcontroller.Command;
import com.smhrd.model.MemberDAO;

public class idCheckCon implements Command {
	
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("[idCheckCon]");
		
		// email 받아오기
 		String email = request.getParameter("email");
 		System.out.println("email : "+email);
 		
 		//sql: select email from web_member where email =#{email}
 		
 		// IDCheck할 메소드 실행
 		boolean idCheck = new MemberDAO().idCheck(email);
 		
 		//true : 중복 O, false : 중복X
 		String result;
 		if(idCheck == true) {
 			result ="rest:/아이디가 중복됩니다.";
 		}else {
 			result="rest:/사용가능한 아이디입니다.";
 		}
 		response.setContentType("application/text; charset=utf-8");
 		
 		return result;
	}

		
		
}

