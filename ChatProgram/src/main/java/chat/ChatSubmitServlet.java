package chat;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/ChatSubmitServlet")
public class ChatSubmitServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		
		int chat_idx = Integer.parseInt(request.getParameter("chat_idx"));
		int room_idx = Integer.parseInt(request.getParameter("room_idx"));
		String chatter = request.getParameter("chatter");
		String chat = request.getParameter("chat");
		String chatted_at = request.getParameter("chatted_at");
		
		

}
}
