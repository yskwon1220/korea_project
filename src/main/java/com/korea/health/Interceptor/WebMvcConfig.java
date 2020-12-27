package com.korea.health.Interceptor;

import javax.annotation.Resource;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;


@Configuration
public class WebMvcConfig implements WebMvcConfigurer {  ///servlet-context.xml 역할 대신함
 
    @Resource
    UserChk userChk;   ///인터셉터할 bean 가져오기
    
    @Resource
     AdminChk adminChk;   ///인터셉터할 bean 가져오기
    
    /*addInterceptors 메소드 로  xml 작업을 대신함
     * 
     * <mvc:interceptors>     
        <mvc:interceptor>
            <mvc:mapping path="/interceptor/**"     />                         <!--mapping-->
            <mvc:exclude-mapping path="/interceptor/expire"    />      <!--mapping 에서  제외,  interceptor  하지 않음
                                                                                                  resources 와 비슷  -->
            <beans:ref bean="eventExpireChk"/>
        </mvc:interceptor>
    </mvc:interceptors>
     * 
     * */
    
    @Override
    public void addInterceptors(InterceptorRegistry registry) {  ///interceptor 할 경로 와 
                                                                //  제외시킬경로 설정
        
        ///addPathPatterns 나 excludePathPatterns 하나만 써서 
        /// 인터셉터를 포함 할 건지(인터셉터 포함한 것만 인터셉터 됨),   - addPathPatterns
                                            ///    여러번 실행하여 포함 시킬 경로 추가
        ///제외시킬건지(제외시키면 나머지는 전부 인터셉터됨) 선택가능      - excludePathPatterns("/model/**","/ttt/**");  
                                                       ////여러개일 경우 list 나 가변 매개변수 형태로 입력
        
        //// 1. 추가로 사용할 경우
        registry.addInterceptor(userChk)
                        //.addPathPatterns("/**") // 인터셉터 경로  --- 지금은 모든 경로
                        .addPathPatterns("/user_page_/usermember/**") // 인터셉터 경로 
                        .addPathPatterns("/user_page_/trainer/**") // 인터셉터 경로 추가  
                        .addPathPatterns("/user_page_/reservation/**") // 인터셉터 경로 추가   
        				 
        				.excludePathPatterns(
        				
        				"/user_page_/usermember/findId",
		        		"/user_page_/usermember/findMyAccount",
		        		"/user_page_/usermember/findPw",
		        		"/user_page_/usermember/join",
		        		"/user_page_/usermember/joinReg",
		        		"/user_page_/usermember/login",
		        		"/user_page_/usermember/loginReg"); 
        
        registry.addInterceptor(adminChk)
        .addPathPatterns("/admin_page_/**"); // 인터셉터 경로 추가  

        
        
        ///2. 예외로 사용할 경우
//        registry.addInterceptor(userChk)
//                .excludePathPatterns("/user_page_/usermember/findId",
//                		"/user_page_/usermember/findMyAccount",
//                		"/user_page_/usermember/findPw",
//                		"/user_page_/usermember/join",
//                		"/user_page_/usermember/joinReg",
//                		"/user_page_/usermember/login",
//                		"/user_page_/usermember/loginReg");  
              //제외시킬 경로 -- model, ttt , / 이하경로 제외  --- 여러개일 경우 list 나 가변 매개변수 형태로 입력
 
        
        
    }
    
    
}