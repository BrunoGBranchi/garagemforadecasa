package br.com.estacionamento.config;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

@Configuration
@EnableWebMvc
@ComponentScan(basePackages = { "br.com.estacionamento.controller" })
public class SpringMvcConfig extends WebMvcConfigurerAdapter {
	
	
	// implements WebMvcConfigurer 
	
}