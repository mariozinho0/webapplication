package br.com.gopark.conf;

import org.springframework.context.annotation.Bean;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.jpa.JpaTransactionManager;
import org.springframework.orm.jpa.JpaVendorAdapter;
import org.springframework.orm.jpa.LocalContainerEntityManagerFactoryBean;
import org.springframework.orm.jpa.vendor.HibernateJpaVendorAdapter;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import javax.persistence.EntityManagerFactory;
import java.util.Properties;

@EnableTransactionManagement
public class JPAConfiguration {

    @Bean
    public LocalContainerEntityManagerFactoryBean entityManagerFactory() {

        LocalContainerEntityManagerFactoryBean factoryBean = new LocalContainerEntityManagerFactoryBean();

        JpaVendorAdapter jpaVendorAdapter = new HibernateJpaVendorAdapter();
        factoryBean.setJpaVendorAdapter(jpaVendorAdapter);

        DriverManagerDataSource dataSource = new DriverManagerDataSource();
        dataSource.setDriverClassName("oracle.jdbc.driver.OracleDriver");
        dataSource.setUrl("jdbc:oracle:thin:@oracle.fiap.com.br:1521:ORCL");
        dataSource.setUsername("RM81975");
        dataSource.setPassword("131100");
        factoryBean.setDataSource(dataSource);

        Properties properties = new Properties();
        properties.setProperty("hibernate.dialect", "org.hibernate.dialect.Oracle12cDialect");
        properties.setProperty("hibernate.show_sql", "true");
        properties.setProperty("hibernate.format_sql", "true");
        /*properties.setProperty("hibernate.hbm2ddl.auto", "update");*/
        factoryBean.setJpaProperties(properties);

        factoryBean.setPackagesToScan("br.com.gopark.entity");

        return factoryBean;

    }

    @Bean
    public JpaTransactionManager transactionManager(EntityManagerFactory entityManagerFactory) {

        return new JpaTransactionManager(entityManagerFactory);

    }

}
