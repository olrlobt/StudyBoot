package com.iu.home.member;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("/member/*")
public class MemberController {

	@Autowired
	private MemberService memberService;
	
	@GetMapping("login")
	public void getLogin() throws Exception{
		
		
		
	}
	
	
	@PostMapping("login")
	public String getLogin(MemberVO memberVO,HttpSession session) throws Exception{
		
		
		memberVO = memberService.getLogin(memberVO);
		
		if(memberVO != null) {
			
			log.info("==========login=============");
			session.setAttribute("member", memberVO);
			
		}
		
		
		return "redirect:/";
	}
	
	@GetMapping("join")
	public void getJoin() throws Exception{
		
		
		
	}
	
	
	@PostMapping("join")
	public String getJoin(MemberVO memberVO) throws Exception{
		
		int result = memberService.getJoin(memberVO);
		
		return "redirect:/";
	}
	
	@GetMapping("logout")
	public String getLogout(HttpSession session) throws Exception{
		
		session.invalidate();
		return "redirect:../";
	}
	
}
