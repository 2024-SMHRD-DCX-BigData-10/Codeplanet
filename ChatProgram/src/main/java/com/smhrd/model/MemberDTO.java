package com.smhrd.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

//전체생성자
@AllArgsConstructor

//기본생성자
@NoArgsConstructor

@Getter

@RequiredArgsConstructor

public class MemberDTO {
	
	@NonNull private String id;
	@NonNull private String pw;
	private String name;
	private String phone;
	private String address;
	private String nick;
	private String birth;
	private String gender;
	private String type;
	private String join;
	
	
	
	

}
