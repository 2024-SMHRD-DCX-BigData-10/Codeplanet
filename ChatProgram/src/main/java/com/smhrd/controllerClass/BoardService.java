package com.smhrd.controllerClass;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.smhrd.frontcontroller.Command;
import com.smhrd.model.BoardDAO;
import com.smhrd.model.BoardVO;

public class BoardService implements Command {
	
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
String savePath = request.getServletContext().getRealPath("./file");
		
		System.out.println("savePath : "+ savePath);
		
		//3. 파일 최대크기지원(int)
		int maxSize= 1024*10;
		
		//4. 인코딩 방식(String)
		String encoding="UTF-8";
		
		//5. 파일 이름 중복제거
		DefaultFileRenamePolicy rename = new DefaultFileRenamePolicy();
	
		//파일 업로드 객체- > multipart
		MultipartRequest multi;
		
	try {
		multi= new MultipartRequest(request,savePath,maxSize,encoding,rename);
		// 요청 데이터 받아오기
		String title =multi.getParameter("title");
		String writer =multi.getParameter("writer");
		String filename =multi.getFilesystemName("filename");
		String content =multi.getParameter("content");
	
		System.out.println(title);
		System.out.println(writer);
		System.out.println(filename);
		System.out.println(content);
		if (filename == null) {
            filename = "";
        }
		BoardVO vo = new BoardVO(title,writer,filename,content);
		System.out.println(vo.toString());
		
		//DB에 넣어주기
		int cnt=new BoardDAO().writeBoard(vo);
		
		if(cnt>0) {
			System.out.println("게시글 작성 성공");
		}else {
			System.out.println("게시글 작성 실패");
		}
		
	}catch(IOException e) {
		e.printStackTrace();
	}
		return "BoardMain.jsp";
	}

}
