package chat;

public class ChatDTO {
	
	private int chat_idx;
	private int room_idx;
	private String chatter;
	private String chat;
	private String chatted_at;
	
	
	public int getChat_idx() {
		return chat_idx;
	}
	public void setChat_idx(int chat_idx) {
		this.chat_idx = chat_idx;
	}
	public int getRoom_idx() {
		return room_idx;
	}
	public void setRoom_idx(int room_idx) {
		this.room_idx = room_idx;
	}
	public String getChatter() {
		return chatter;
	}
	public void setChatter(String chatter) {
		this.chatter = chatter;
	}
	public String getChat() {
		return chat;
	}
	public void setChat(String chat) {
		this.chat = chat;
	}
	public String getChatted_at() {
		return chatted_at;
	}
	public void setChatted_at(String chatted_at) {
		this.chatted_at = chatted_at;
	}
	
	
	

}
