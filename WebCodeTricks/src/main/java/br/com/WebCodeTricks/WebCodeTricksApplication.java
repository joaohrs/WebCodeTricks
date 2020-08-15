package br.com.WebCodeTricks;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.boot.autoconfigure.web.servlet.WebMvcAutoConfiguration;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.web.servlet.config.annotation.DefaultServletHandlerConfigurer;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

@SpringBootApplication
@EnableAutoConfiguration
@ComponentScan(basePackages={"br.com.WebCodeTricks"})
@EnableJpaRepositories(basePackages="br.com.WebCodeTricks.repository")
@EnableTransactionManagement
@EntityScan(basePackages="br.com.WebCodeTricks.model")
@EnableWebMvc


public class WebCodeTricksApplication   {

	public static void main(String[] args) {
		SpringApplication.run(WebCodeTricksApplication.class, args);
	}


}


	