package vn.iuh.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import vn.iuh.beans.TaiKhoan;

@Controller
public class DangNhapController {
	@RequestMapping(value = "dangnhapView")	
	public ModelAndView dangNhapView() {
		return new ModelAndView("dangnhapForm");
	}
	
	@RequestMapping(value = "dangnhap" , method = RequestMethod.POST)	
	public ModelAndView dangNhap(@ModelAttribute("tk") TaiKhoan tk) {
		return new ModelAndView("home");
	}
	
}
