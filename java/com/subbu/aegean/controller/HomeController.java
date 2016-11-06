package com.subbu.aegean.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.subbu.aegean.dao.CategoryDAO;
import com.subbu.aegean.dao.ProductDAO;
import com.subbu.aegean.dao.SupplierDAO;
import com.subbu.aegean.dao.UserDAO;
import com.subbu.aegean.model.Category;
import com.subbu.aegean.model.Product;
import com.subbu.aegean.model.Supplier;
import com.subbu.aegean.model.User;
import com.subbu.aegean.service.ProductService;

@Controller
public class HomeController {

	@Autowired
	User user;

	@Autowired
	UserDAO userDAO;

	@Autowired
	Product product;

	@Autowired
	ProductDAO productDAO;

	@Autowired
	Category category;

	@Autowired
	CategoryDAO categoryDAO;
	
	@Autowired
	Supplier supplier;

	@Autowired
	SupplierDAO supplierDAO;

	@Autowired
	ProductService productservice;

	/*
	 * @RequestMapping(value = "/google") public ModelAndView
	 * submitUserdetails() {
	 * System.out.println("login controller google is called"); ModelAndView mv
	 * = new ModelAndView("index");
	 * 
	 * return mv; }
	 */

	/*
	 * @RequestMapping(value = "/category", method = RequestMethod.GET) public
	 * String listCategories(Model model) { model.addAttribute("category", new
	 * Product()); model.addAttribute("categoryList", this.productDAO.list());
	 * return "category";
	 * 
	 * }
	 */

	/*
	 * @RequestMapping(value = "/", method = RequestMethod.GET) public String
	 * homepage(Model model) { model.addAttribute("category", new Category());
	 * model.addAttribute("categoryList", this.categoryDAO.list());
	 * 
	 * return "index";
	 * 
	 * }
	 */

	@RequestMapping("/")
	public ModelAndView onLoad(HttpSession session) {

		ModelAndView mv = new ModelAndView("index");
		session.setAttribute("category", category);
		session.setAttribute("categoryList", categoryDAO.list());

		return mv;
	}

	/*
	 * @RequestMapping("/index") public ModelAndView home(HttpSession session) {
	 * 
	 * ModelAndView mv = new ModelAndView("index");
	 * session.setAttribute("category", category);
	 * session.setAttribute("categoryList", categoryDAO.list());
	 * 
	 * return mv; }
	 */

	@RequestMapping("/index")
	public ModelAndView homeforall(HttpSession session) {

		ModelAndView mv = new ModelAndView("index");
		session.setAttribute("category", category);
		session.setAttribute("categoryList", categoryDAO.list());

		return mv;
	}
	
	@RequestMapping("/home")
	public ModelAndView phome(HttpSession session) {

		ModelAndView mv = new ModelAndView("redirect:/index");
		session.setAttribute("category", category);
		session.setAttribute("categoryList", categoryDAO.list());

		return mv;
	}
	
	@RequestMapping("/*")
	public void home(HttpSession session){
		
		session.setAttribute("category", category);
		session.setAttribute("categoryList", categoryDAO.list());


	}
	
	@RequestMapping(value = "/admin", method = RequestMethod.GET)
	public String admin(Model model, HttpSession session) {
		session.setAttribute("category", category);
		session.setAttribute("categoryList", categoryDAO.list());
		session.setAttribute("supplier", supplier);
		session.setAttribute("supplierList", supplierDAO.list());
		session.setAttribute("user", user);
		session.setAttribute("userList", userDAO.list());
		session.setAttribute("product", product);
		session.setAttribute("productList", productDAO.list());

		return "adminpage";

	}
	@RequestMapping(value = "/managecategory", method= RequestMethod.GET)
	public String managecategory( Model model , HttpSession session){
		session.setAttribute("category", category);
		session.setAttribute("categoryList", categoryDAO.list());
		return "managecategory";
		
	}
	
	@RequestMapping(value = "/managesupplier", method= RequestMethod.GET)
	public String managesupplier( Model model , HttpSession session){
		session.setAttribute("supplier", supplier);
		session.setAttribute("supplierList", supplierDAO.list());
		return "managesupplier";
		
	}
	
	@RequestMapping(value = "/manageuser", method= RequestMethod.GET)
	public String manageuser( Model model , HttpSession session){
		session.setAttribute("user", user);
		session.setAttribute("userList", userDAO.list());
		return "manageuser";
		
	}
	
	@RequestMapping(value = "/manageadmin", method= RequestMethod.GET)
	public String manageadmin( Model model , HttpSession session){
		session.setAttribute("user", user);
		session.setAttribute("userList", userDAO.list());
		return "manageadmin";
		
	}
	

	@RequestMapping(value = "/products", method = RequestMethod.GET)
	public String products(Model model, HttpSession session) {
		model.addAttribute("product", new Product());
		model.addAttribute("productList", this.productDAO.list());

		return "products";

	}
	
	

	@RequestMapping("/register")
	public String register() {
		return "register";
	}
	
	

	@RequestMapping(value = "/submituserdetails")
	public ModelAndView submitUserdetails(@ModelAttribute("user1") User user1, HttpSession session) {
		userDAO.saveOrUpdate(user1);
		ModelAndView mv = new ModelAndView("index");
		mv.addObject("user", "u have successfully registered");
		mv.addObject("loggedin", "true");

		return mv;
	}

	@RequestMapping(value = "/login")
	public ModelAndView login(@ModelAttribute("user1") User user1, HttpSession session) {
		ModelAndView mv = null;
		String message = null;

		boolean isValidUser = userDAO.isValidUser(user1.getEmail(), user1.getPassword());
		boolean isAdmin = userDAO.isAdmin(user1.getEmail(), user1.getPassword());
		boolean isSupplier = userDAO.isSupplier(user1.getEmail(), user1.getPassword());
		

		if (isAdmin) {
			mv = new ModelAndView("adminhome");

			message = " welcome admin";
			mv.addObject("loggedin", "true");
			mv.addObject("isadmin", "true");
			
			

		} else if (isSupplier) {
			mv = new ModelAndView("adminhome");

			message = "welcome user";
			mv.addObject("loggedin", "true");
			mv.addObject("issupplier", "true");
		

		} else if (isValidUser) {
			mv = new ModelAndView("index");

			message = "welcome user";
			mv.addObject("loggedin", "true");
			mv.addObject("isuser", "true");
		

		} else {
			mv = new ModelAndView("register");
			mv.addObject("invaliduser", "true");
			message = "Invalid Credentials. Don't have an account? Register below.";
			mv.addObject("msg", message);
		}
		return mv;

	}

	@RequestMapping("/product/{id}")
	public String viewProduct(@PathVariable String id, Model model) {
		Product product = productservice.get(id);
		model.addAttribute("product", product);

		return "product";
	}
	
	@RequestMapping(value = "/logout")
	public ModelAndView logout(@ModelAttribute("user1") User user1, HttpSession session) {
		userDAO.saveOrUpdate(user1);
		ModelAndView mv = new ModelAndView("index");
		mv.addObject("logoutmsg", "You have successfully loggedout.");
		mv.addObject("loggedout", "true");

		return mv;
	}

	/*
	 * @RequestMapping(value = "/submituserdetails") public ModelAndView
	 * registerUser(@RequestParam(name = "username") String username,
	 * 
	 * @RequestParam(name = "password") String password, @RequestParam(name =
	 * "email") String email,
	 * 
	 * @RequestParam(name = "mobilenumber") String mobilenumber, HttpSession
	 * session) { userDAO.saveOrUpdate(user); ModelAndView mv = new
	 * ModelAndView("/index"); mv.addObject("successMessage",
	 * "You are successfully register"); session.setAttribute("loggedInUser",
	 * user.getEmail());
	 * 
	 * return mv; }
	 */

}
