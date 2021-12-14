package com.example.demo.result;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/result/**")
public class ResultController {

	@GetMapping("0")
	public String basicBook() {
		return "result/0";
	}
	
	@GetMapping("1")
	public String basiclec() {
		return "result/1";
	}
	
	@GetMapping("2")
	public String hcbook1() {
		return "result/2";
	}
	
	@GetMapping("3")
	public String hclec1() {
		return "result/3";
	}
	
	@GetMapping("4")
	public String hcbook2() {
		return "result/4";
	}
	
	@GetMapping("5")
	public String hclec2() {
		return "result/5";
	}
	
	@GetMapping("6")
	public String jsbook1() {
		return "result/6";
	}
	
	@GetMapping("7")
	public String jslec1() {
		return "result/7";
	}
	
	@GetMapping("8")
	public String jsbook2() {
		return "result/8";
	}
	
	@GetMapping("9")
	public String jslec2() {
		return "result/9";
	}
	
	@GetMapping("10")
	public String javabook1() {
		return "result/10";
	}
	
	@GetMapping("11")
	public String javalec1() {
		return "result/11";
	}
	
	@GetMapping("12")
	public String javabook2() {
		return "result/12";
	}
	
	@GetMapping("13")
	public String javalec2() {
		return "result/13";
	}
}
