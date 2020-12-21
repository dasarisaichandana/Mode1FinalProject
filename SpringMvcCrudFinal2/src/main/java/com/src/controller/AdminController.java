package com.src.controller;

import java.util.ArrayList;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.src.model.Admin;
import com.src.model.AdminCredential;
import com.src.service.AdminService;








@Controller
public class AdminController {

	@Autowired
	private AdminService adminService;

	public AdminService getAdminService() {
		return adminService;
	}

	public void setAdminService(AdminService adminService) {
		this.adminService = adminService;
	}

//	@RequestMapping(value = "/", method = RequestMethod.GET)
//	public String homePage() {
//		return "home";
//	}

	@RequestMapping(value = "/login1", method = RequestMethod.GET)
	public String loginPage(Model model) {
		model.addAttribute("adminCredential", new AdminCredential());
		return "admin";
	}

	@RequestMapping(value = "/register1", method = RequestMethod.GET)
	public String registerPage(Model model) {
		model.addAttribute("admin", new Admin());
		return "adminRegister";
	}

	@RequestMapping(value = "/registerSuccess1", method = RequestMethod.POST)
	public ModelAndView registerSuccess(@Valid @ModelAttribute("admin") Admin admin, BindingResult bindingResult) {
		if (bindingResult.hasErrors()) {
			return new ModelAndView("adminRegister");
		}
		getAdminService().registerAdmin(admin);
		ModelAndView modelAndView = new ModelAndView("welcome");
		modelAndView.addObject("admin", admin);
		return modelAndView;
	}

	@RequestMapping(value = "/loginSuccess1", method = RequestMethod.POST)
	public ModelAndView loginSuccess(@Valid @ModelAttribute("adminCredential") AdminCredential adminCredential,
			BindingResult bindingResult) {
		if (bindingResult.hasErrors()) {
			return new ModelAndView("login");
		}

		ModelAndView modelAndView = new ModelAndView("welcome");
		Admin admin = getAdminService().validateAdminCredential(adminCredential.getEmail(),
				adminCredential.getPassword());
		if (admin != null) {
			modelAndView.addObject("admin", admin);
			return modelAndView;
		} else {
			modelAndView = new ModelAndView("notFound");
		}
		return modelAndView;
	}
	@RequestMapping(value = "/questions", method = RequestMethod.GET)
	public String questionEnterPage() {
		return "question";
	}
	


	@ModelAttribute
	public void headerMessage(Model model) {
		model.addAttribute("headerMessage", "Welcome to site...!");

//		List<String> techList = new ArrayList<>();
//		techList.add("Hibernate");
//		techList.add("Spring");
//		techList.add("JSP");
//		techList.add("Servlet");
//		techList.add("Struts");

		List<String> citesList = new ArrayList<>();
		citesList.add("Banglore");
		citesList.add("Chennai");
		citesList.add("Delhi");
		citesList.add("Other");

//		model.addAttribute("technologyList", techList);
		model.addAttribute("citesList", citesList);
	}
}
