package com.bitcamp.op;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/member/login")
public class MemberLoginController {
	

	//@RequestMapping("/member/login")
	@RequestMapping(method=RequestMethod.GET)
	public ModelAndView getLoginForm() {
		
		return new ModelAndView("member/loginForm");
		
	}
	
	@RequestMapping(method=RequestMethod.POST)
	// 모델 이름을 스트링으로 반환
	public ModelAndView loginProcess(@RequestParam(value = "inputId", defaultValue="123") String userId,
									 @RequestParam(value = "inputPw", required=true) String password) {
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("/member/loginok");
		
		System.out.println(userId + " : " + password);
		
		modelAndView.addObject("userId", userId);
		modelAndView.addObject("pw", password);
		
		return modelAndView;
	}
	
}
