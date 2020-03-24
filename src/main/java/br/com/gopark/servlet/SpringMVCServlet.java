package br.com.gopark.servlet;

import br.com.gopark.conf.AppWebConfiguration;
import br.com.gopark.conf.JPAConfiguration;
import org.springframework.web.filter.CharacterEncodingFilter;
import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

import javax.servlet.Filter;

public class SpringMVCServlet extends AbstractAnnotationConfigDispatcherServletInitializer {

    @Override
    protected Class<?>[] getRootConfigClasses() {

        return new Class[0];

    }

    @Override
    protected Class<?>[] getServletConfigClasses() {

        return new Class[] {AppWebConfiguration.class, JPAConfiguration.class};

    }

    @Override
    protected String[] getServletMappings() {

        return new String[] {"/"};

    }

    @Override
    protected Filter[] getServletFilters() {

        CharacterEncodingFilter encodingFilter = new CharacterEncodingFilter();
        encodingFilter.setEncoding("UTF-8");

        return new Filter[] {encodingFilter};

    }

}
