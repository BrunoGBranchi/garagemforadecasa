package br.com.estacionamento.config;

import java.util.Properties;

import javax.persistence.EntityManagerFactory;
import javax.sql.DataSource;

import org.hibernate.jpa.HibernatePersistenceProvider;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.jpa.JpaTransactionManager;
import org.springframework.orm.jpa.LocalContainerEntityManagerFactoryBean;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@Configuration
@EnableTransactionManagement
@EnableJpaRepositories(basePackages = "br.com.estacionamento.dao", entityManagerFactoryRef = "entityManagerFactory", transactionManagerRef = "transactionManager")
public class PersistenceConfig {

	@Bean
	public DataSource datasource() {
		DriverManagerDataSource ds = new DriverManagerDataSource();
		ds.setDriverClassName("com.mysql.jdbc.Driver");
		ds.setUrl("jdbc:mysql://localhost:3306/estacionamento?serverTimezone=UTC");
		ds.setUsername("root");
		ds.setPassword("09021999");
		return ds;
	}

	@Bean(name = "entityManagerFactory")
	public LocalContainerEntityManagerFactoryBean entityManagerFactoryBean(DataSource ds) {
		LocalContainerEntityManagerFactoryBean emfb = new LocalContainerEntityManagerFactoryBean();
		emfb.setDataSource(ds);
		emfb.setPackagesToScan("br.com.estacionamento.model");
		emfb.setPersistenceProviderClass(HibernatePersistenceProvider.class);
		Properties jpaProterties = new Properties();
		jpaProterties.put("hibernate.dialect", "org.hibernate.dialect.MySQL57Dialect");
		jpaProterties.put("hibernate.format_sql", true);
		jpaProterties.put("hibernate.show_sql", true);
		jpaProterties.put("hibernate.hbm2ddl.auto", "update");
		emfb.setJpaProperties(jpaProterties);
		return emfb;
	}

	@Bean(name = "transactionManager")
	public JpaTransactionManager transactionmanager(EntityManagerFactory emf) {
		JpaTransactionManager transactionManager = new JpaTransactionManager();
		transactionManager.setEntityManagerFactory(emf);
		return transactionManager;
	}

}
