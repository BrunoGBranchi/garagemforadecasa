package br.com.estacionamento.config;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

@EnableWebSecurity
public class SecurityWebConfig extends WebSecurityConfigurerAdapter {

	private static final String USUARIO_POR_LOGIN = "SELECT user, senha, ativo, nome FROM Usuario"
            + " WHERE user = ?";
   
  private static final String PERMISSOES_POR_USUARIO = "SELECT u.user, p.nome FROM usuario_permissao up"
            + " JOIN usuario u ON u.codigo = up.usuarios_codigo"
            + " JOIN permissao p ON p.codigo = up.permissoes_codigo"
            + " WHERE u.user = ?";
   
  private static final String PERMISSOES_POR_GRUPO = "SELECT g.codigo, g.nome, p.nome FROM grupo_permissao gp"
            + " JOIN grupo g ON g.codigo = gp.grupos_codigo"
            + " JOIN permissao p ON p.codigo = gp.permissoes_codigo"
            + " JOIN usuario_grupo ug ON ug.grupos_codigo = g.codigo"
            + " JOIN usuario u ON u.codigo = ug.usuarios_codigo"
            + " WHERE u.user = ?";
	
	
	
	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http.authorizeRequests()
				// Para qualquer requisição (anyRequest) é preciso estar
				// autenticado (authenticated).
				.anyRequest().authenticated().and().httpBasic();
	}
	
	@Autowired
	  private DataSource dataSource;
	   
	  @Override
	  protected void configure(AuthenticationManagerBuilder builder) throws Exception {
	    builder
	        .jdbcAuthentication()
	        .dataSource(dataSource)
	        .passwordEncoder(new BCryptPasswordEncoder())
	        .usersByUsernameQuery(USUARIO_POR_LOGIN)
	        .authoritiesByUsernameQuery(PERMISSOES_POR_USUARIO)
	        .groupAuthoritiesByUsername(PERMISSOES_POR_GRUPO)
	        .rolePrefix("ROLE_");
	  }

}