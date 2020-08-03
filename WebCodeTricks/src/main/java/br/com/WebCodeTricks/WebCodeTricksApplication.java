package br.com.WebCodeTricks;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@SpringBootApplication
@EnableAutoConfiguration
@ComponentScan(basePackages={"br.com.WebCodeTricks"})
@EnableJpaRepositories(basePackages="br.com.WebCodeTricks.repository")
@EnableTransactionManagement
@EntityScan(basePackages="br.com.WebCodeTricks.model")
public class WebCodeTricksApplication {

	public static void main(String[] args) {
		SpringApplication.run(WebCodeTricksApplication.class, args);
	}

}
