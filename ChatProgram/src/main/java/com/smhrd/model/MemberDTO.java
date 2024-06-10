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
	
	@NonNull private String mem_id;
	@NonNull private String mem_pw;
	private String mem_name;
	private String mem_phone;
	private String mem_addr;
	private String mem_nick;
	private String mem_birthdate;
	private String mem_gender;
	private String mem_type;
	private String joined_at;
	
	
	
	

}
