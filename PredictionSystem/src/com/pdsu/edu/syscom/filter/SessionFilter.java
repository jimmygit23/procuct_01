package com.pdsu.edu.syscom.filter;

import java.io.IOException;
import java.net.URLEncoder;
import java.util.regex.Pattern;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang.StringUtils;

/**
 * ���ڼ���û��Ƿ��¼��ϵͳ�Ĺ�����<br>
 * �������ڣ�2012-01-09
 * @author <a href="mailto:hemingwang0902@126.com">������</a>
 */
public class SessionFilter implements Filter {

    /** Ҫ���� session ������ */
    private String sessionKey;
    
    /** ��Ҫ�ų��������أ���URL��������ʽ */
    private Pattern excepUrlPattern;
    
    /** ��鲻ͨ��ʱ��ת����URL */
    private String forwardUrl;

   
    public void init(FilterConfig cfg) throws ServletException {
        sessionKey = cfg.getInitParameter("sessionKey");

        String excepUrlRegex = cfg.getInitParameter("excepUrlRegex");
        if (!StringUtils.isBlank(excepUrlRegex)) {
            excepUrlPattern = Pattern.compile(excepUrlRegex);
        }

        forwardUrl = cfg.getInitParameter("forwardUrl");
    }

    
    public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain) throws IOException, ServletException {
        // ��� sessionKey Ϊ�գ���ֱ�ӷ���
        if (StringUtils.isBlank(sessionKey)) {
            chain.doFilter(req, res);
            return;
        }

//         * ���� http://127.0.0.1:8080/webApp/home.jsp?&a=1&b=2 ʱ
//          * request.getRequestURL()�� http://127.0.0.1:8080/webApp/home.jsp
//         * request.getContextPath()�� /webApp 
//         * request.getServletPath()��/home.jsp
//         * request.getRequestURI()�� /webApp/home.jsp
//         * request.getQueryString()��a=1&b=2
        HttpServletRequest request = (HttpServletRequest) req;
        HttpServletResponse response = (HttpServletResponse) res;
        String servletPath = request.getServletPath();

        // ��������·����forwardUrl��ͬ���������·�����ų���URLʱ����ֱ�ӷ���
        if (servletPath.equals(forwardUrl) || excepUrlPattern.matcher(servletPath).matches()) {
            chain.doFilter(req, res);
            return;
        }

        Object sessionObj = request.getSession().getAttribute(sessionKey);
        // ���SessionΪ�գ�����ת��ָ��ҳ��
        if (sessionObj == null) {
            String contextPath = request.getContextPath();
            String redirect = servletPath + "?" + StringUtils.defaultString(request.getQueryString());
            /*
             * login.jsp �� <form> ��������һ�����ر���
             * <input type="hidden" name="redirect" value="${param.redirect }">
             * 
             *  LoginServlet.java �� service �ķ������������´��룺
             *  String redirect = request.getParamter("redirect");
             *  if(loginSuccess){
             *      if(redirect == null || redirect.length() == 0){
             *          // ��ת����Ŀ��ҳ��home.jsp��
             *      }else{
             *          // ��ת����¼ǰ���ʵ�ҳ�棨java.net.URLDecoder.decode(s, "UTF-8")��
             *      }
             *  } 
             */
            response.sendRedirect(contextPath + StringUtils.defaultIfEmpty(forwardUrl, "/")
                            + "?redirect=" + URLEncoder.encode(redirect, "UTF-8"));
        } else {
            chain.doFilter(req, res);
        }
    }

   
    public void destroy() {
    }
}