package com.马祖宇323.interception;

import org.springframework.web.method.HandlerMethod;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @Author 皮皮马
 * @create 2020-5-30 10:28
 */
public class loginInterception implements HandlerInterceptor {
    public boolean preHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o) throws Exception {
        System.out.println("hell");
        Object user = httpServletRequest.getSession().getAttribute("user1");
        if(user==null){
            HandlerMethod method=(HandlerMethod)o;
           if (method.getMethod().getName().equals("userlogin")) {
                return true;
            }
            httpServletRequest.getRequestDispatcher("/jsp/login.jsp").forward(httpServletRequest,httpServletResponse);
            return false;
        }
        else {
            return true;
        }
    }

    public void postHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, ModelAndView modelAndView) throws Exception {
        System.out.println("post");
    }

    public void afterCompletion(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, Exception e) throws Exception {
        System.out.println("after");
    }
}
