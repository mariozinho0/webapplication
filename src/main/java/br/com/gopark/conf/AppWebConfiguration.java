package br.com.gopark.conf;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

@EnableWebMvc
/*Adicionar Controllers e DAO aqui*/
@ComponentScan(basePackages = {"br.com.gopark.controller", "br.com.gopark.dao"})
public class AppWebConfiguration {

    @Bean
    public InternalResourceViewResolver internalResourceViewResolver() {

        InternalResourceViewResolver internalResourceViewResolver = new InternalResourceViewResolver();
        internalResourceViewResolver.setPrefix("/WEB-INF/jsp/");
        internalResourceViewResolver.setSuffix(".jsp");

        return internalResourceViewResolver;

    }


}
