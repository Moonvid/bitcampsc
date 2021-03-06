package com.bitcamp.op;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.bitcamp.op.member.model.MemberInfo;
import com.bitcamp.op.member.service.MemberRegService;

@Controller
@RequestMapping("/member/memberReg")
public class MemberRegController {

	@Autowired
	private MemberRegService regService;

	@RequestMapping(method=RequestMethod.GET)
	public ModelAndView getLoginForm() {
		
		ModelAndView modelAndView = new ModelAndView();
		
		modelAndView.setViewName("member/memberRegForm");
					//   /WEB-INF/                    .jsp  
		
		return modelAndView;
	}
	
	/*@RequestMapping(method=RequestMethod.POST)
	public ModelAndView memberReg(MemberInfo member) {
		
		System.out.println(member);
		
		ModelAndView modelAndView = new ModelAndView();
		
		modelAndView.addObject("member", member);
		
		modelAndView.setViewName("/member/regok");
		
		return modelAndView;
		
	}*/
	
	@RequestMapping(method=RequestMethod.POST)
	public ModelAndView memberReg(MemberInfo member, HttpServletRequest request) {
		
		/*
		String userId = request.getParameter("userId");
		System.out.println(" userId : " + userId);
		System.out.println(member);
		*/
		
		ModelAndView modelAndView = new ModelAndView();
		
		modelAndView.setViewName("member/regok");
		
		try {
			int resultCnt = regService.memberReg(member, request);
			
			if(resultCnt < 1) {
				modelAndView.setViewName("member/regFail");
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
			modelAndView.setViewName("member/regFail");
		} catch (IllegalStateException e) {
			e.printStackTrace();
			modelAndView.setViewName("member/regFail");
		} catch (IOException e) {
			e.printStackTrace();
			modelAndView.setViewName("member/regFail");
		}
		
		return modelAndView;
		
	}

}
