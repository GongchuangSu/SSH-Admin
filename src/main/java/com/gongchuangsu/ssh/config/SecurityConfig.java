package com.gongchuangsu.ssh.config;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

/**
 * ����������
 * ˵����������һ�����������һ��ע��@EnableWebSecurity���Ϳ��Դ���һ����Ϊ springSecurityFilterChain ��Filter
 */
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter{
	@Autowired
	private DataSource dataSource;
	
	protected void configure(HttpSecurity http) throws Exception{
		http
			.authorizeRequests()
				.antMatchers("/static/**", "/register", "/weixin").permitAll()   // ������ʾ�̬��Դ
				.antMatchers("/tables").hasRole("ADMIN") // ֻ��ӵ��ROLE_ADMINȨ�޵��û����ܷ���/admin����
				.antMatchers("/**").authenticated()      // �û�ֻ��ͨ����֤���ܷ�������
				.and()	
			.formLogin()
				.usernameParameter("username")           // Ĭ��Ϊusername
				.passwordParameter("password")           // Ĭ��Ϊpassword
				.loginPage("/login")                     // ָ����½�����λ�ã�����ΪĬ�ϵ�¼ҳ
				.defaultSuccessUrl("/")                  // Ĭ��Ϊ��¼���棨/login��
				.failureUrl("/login?error=true")         // ���õ�½ʧ�ܽ���
				.permitAll()                             // ���������û������Է��ʵ�½����
				.and()
			.rememberMe()
				.tokenValiditySeconds(2419200)           // ����token����Ч�ڣ�Ĭ��Ϊ����
				.key("loginKey")                         // ����˽Կ�����ƣ�Ĭ��ΪSpringSecurity
				.and()
			.logout()                                    // �û��˳�Ӧ�ã����е�remember-me token���ᱻ�����
				.logoutUrl("/logout")
				.logoutSuccessUrl("/login")              // ָ���˳�����
				.and()
			.csrf().disable();                           // ����CSRF		
	}
	
	protected void configure(AuthenticationManagerBuilder auth) throws Exception{
		auth			
			.jdbcAuthentication()
				.dataSource(dataSource)
				// ��֤��ѯ
				.usersByUsernameQuery(
						"select username, password, enabled " +
						"from user_info where username = ?")
				// Ȩ�޲�ѯ
				.authoritiesByUsernameQuery(
						"select username, role " + 
						"from user_roles where username = ?");		 
	}
}