package com.iu.home.member;

import org.springframework.stereotype.Component;

import lombok.Data;

@Component
@Data
public class MemberVO {

	private String id;
	private String pw;
	private String name;
	private boolean enable;
}
