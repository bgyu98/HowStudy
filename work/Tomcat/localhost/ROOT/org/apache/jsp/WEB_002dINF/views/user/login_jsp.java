/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/10.1.4
 * Generated at: 2023-01-30 02:50:41 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.views.user;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.jsp.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports,
                 org.apache.jasper.runtime.JspSourceDirectives {

  private static final jakarta.servlet.jsp.JspFactory _jspxFactory =
          jakarta.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(2);
    _jspx_dependants.put("file:/C:/Users/kosmo/.m2/repository/org/glassfish/web/jakarta.servlet.jsp.jstl/2.0.0/jakarta.servlet.jsp.jstl-2.0.0.jar", Long.valueOf(1672710897650L));
    _jspx_dependants.put("jar:file:/C:/Users/kosmo/.m2/repository/org/glassfish/web/jakarta.servlet.jsp.jstl/2.0.0/jakarta.servlet.jsp.jstl-2.0.0.jar!/META-INF/c.tld", Long.valueOf(1602841572000L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("jakarta.servlet");
    _jspx_imports_packages.add("jakarta.servlet.http");
    _jspx_imports_packages.add("jakarta.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile jakarta.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public boolean getErrorOnELNotFound() {
    return false;
  }

  public jakarta.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final jakarta.servlet.http.HttpServletRequest request, final jakarta.servlet.http.HttpServletResponse response)
      throws java.io.IOException, jakarta.servlet.ServletException {

    if (!jakarta.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      final java.lang.String _jspx_method = request.getMethod();
      if ("OPTIONS".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        return;
      }
      if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET, POST or HEAD. Jasper also permits OPTIONS");
        return;
      }
    }

    final jakarta.servlet.jsp.PageContext pageContext;
    jakarta.servlet.http.HttpSession session = null;
    final jakarta.servlet.ServletContext application;
    final jakarta.servlet.ServletConfig config;
    jakarta.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    jakarta.servlet.jsp.JspWriter _jspx_out = null;
    jakarta.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("<!DOCTYPE html>\r\n");
      out.write("<!--[if IE 8 ]><html class=\"ie\" xmlns=\"http://www.w3.org/1999/xhtml\" xml:lang=\"en-US\" lang=\"en-US\"> <![endif]-->\r\n");
      out.write("<!--[if (gte IE 9)|!(IE)]><!-->\r\n");
      out.write("<html xmlns=\"http://www.w3.org/1999/xhtml\" xml:lang=\"en-US\" lang=\"en-US\">\r\n");
      out.write("<!--<![endif]-->\r\n");
      out.write("<!-- 한글 깨짐 방지-->\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<head>\r\n");
      out.write("    <!-- Basic Page Needs -->\r\n");
      out.write("    <meta charset=\"utf-8\">\r\n");
      out.write("    <!--[if IE]><meta http-equiv='X-UA-Compatible' content='IE=edge,chrome=1'><![endif]-->\r\n");
      out.write("    <title>Axies | NFT Marketplace HTML Template</title>\r\n");
      out.write("\r\n");
      out.write("    <meta name=\"author\" content=\"themesflat.com\">\r\n");
      out.write("\r\n");
      out.write("    <!-- Mobile Specific Metas -->\r\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, maximum-scale=1\">\r\n");
      out.write("\r\n");
      out.write("    <!-- Theme Style -->\r\n");
      out.write("    <link rel=\"stylesheet\" type=\"text/css\" href=\"../assets/css/style.css\">\r\n");
      out.write("\r\n");
      out.write("    <!-- Favicon and Touch Icons  -->\r\n");
      out.write("    <link rel=\"shortcut icon\" href=\"assets/icon/Favicon.png\">\r\n");
      out.write("    <link rel=\"apple-touch-icon-precomposed\" href=\"assets/icon/Favicon.png\">\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<body class=\"body header-fixed is_dark connect-wal\">\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("    <div id=\"wrapper\">\r\n");
      out.write("        <div id=\"page\" class=\"clearfix\">\r\n");
      out.write("            <!-- header 넣음 -->\r\n");
      out.write("          ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "../include/header.jsp", out, false);
      out.write(" \r\n");
      out.write("\r\n");
      out.write("            <!-- Header --> \r\n");
      out.write("                \r\n");
      out.write("            <!-- title page -->\r\n");
      out.write("            <section class=\"flat-title-page inner\">\r\n");
      out.write("                <div class=\"overlay\"></div>\r\n");
      out.write("                <div class=\"themesflat-container\">\r\n");
      out.write("                    <div class=\"row\">\r\n");
      out.write("                        <div class=\"col-md-12\">\r\n");
      out.write("                            <div class=\"page-title-heading mg-bt-12\">\r\n");
      out.write("                                <h1 class=\"heading text-center\">로그인</h1>\r\n");
      out.write("                            </div>\r\n");
      out.write("                            <div class=\"breadcrumbs style2\">\r\n");
      out.write("                                <ul>\r\n");
      out.write("                                    <li><a href=\"\">스터디룸</a></li>\r\n");
      out.write("                                    <li>로그인</li>\r\n");
      out.write("                                </ul>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>                    \r\n");
      out.write("            </section>\r\n");
      out.write("\r\n");
      out.write("            <section class=\"tf-login tf-section\">\r\n");
      out.write("                <div class=\"themesflat-container\">\r\n");
      out.write("                    <div class=\"row\">\r\n");
      out.write("                        <div class=\"col-12\">\r\n");
      out.write("                          \r\n");
      out.write("\r\n");
      out.write("                            <div class=\"flat-form box-login-social\">\r\n");
      out.write("                                <div class=\"box-title-login\">\r\n");
      out.write("                                    <h5>Login with social</h5>\r\n");
      out.write("                                </div>\r\n");
      out.write("                                <ul>\r\n");
      out.write("                                   \r\n");
      out.write("                                   <a href=\"https://kauth.kakao.com/oauth/authorize?client_id=60fba32f81035c06fdb413a6e0d5bf99&redirect_uri=http://localhost:8888/user/kakaoLogin&response_type=code\" style=\"margin: auto;\">\r\n");
      out.write("                                    <img src=\"../assets/images/icon/kakao_logink.png\">  \r\n");
      out.write("                                        </a>\r\n");
      out.write("                                   \r\n");
      out.write("                                  \r\n");
      out.write("                                </ul>\r\n");
      out.write("                            </div>\r\n");
      out.write("\r\n");
      out.write("                            <div class=\"flat-form box-login-email\">\r\n");
      out.write("                                <div class=\"box-title-login\">\r\n");
      out.write("                                    <h5>H O W S T U D Y</h5>\r\n");
      out.write("                                </div>\r\n");
      out.write("\r\n");
      out.write("                                <div class=\"form-inner\">\r\n");
      out.write("                                    <form method=\"POST\" id=\"insert-customer\" action=\"loginCustomer\">\r\n");
      out.write("                                        <input id=\"mId\" name=\"mId\" tabindex=\"1\"  aria-required=\"true\" required type=\"text\" placeholder=\"아이디\" required>\r\n");
      out.write("                                        <input id=\"mPw\" name=\"mPw\" tabindex=\"3\"  aria-required=\"true\" type=\"password\" placeholder=\"비밀번호\" required>\r\n");
      out.write("                                         \r\n");
      out.write("                                        <div class=\"row-form style-1\">\r\n");
      out.write("                                            <a class=\"forgot-pass\" data-toggle=\"modal\" data-target=\"#forgot-id\" name=\"findid\"  id=\"findid\" style=\"margin: auto; font-size: 13px;\"  >아이디 찾기</a>\r\n");
      out.write("                                            <a class=\"forgot-pass\" data-toggle=\"modal\" data-target=\"#forgot-pass\" name=\"findpw\"  id=\"findpw\" style=\"margin: auto; font-size: 13px;\" >비밀번호 찾기</a>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                        <br> \r\n");
      out.write("                                        <div class=\"flat-form box-login-social\">\r\n");
      out.write("                                            <button class=\"submit\" type=\"submit\" name=\"submit\">로그인</button>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                        \r\n");
      out.write("                                        <br> <br> <br>\r\n");
      out.write("                                        <div class=\"box-title-login\">\r\n");
      out.write("                                            <h5>회원이 아니신가요?</h5>\r\n");
      out.write("                                        </div>\r\n");
      out.write("       \r\n");
      out.write("\r\n");
      out.write("                                     <!--  <button class=\"submit\">Login</button>-->\r\n");
      out.write("                                    </form>\r\n");
      out.write("                                    \r\n");
      out.write("                            \r\n");
      out.write("\r\n");
      out.write("                                    <div class=\"flat-form box-login-social\">\r\n");
      out.write("                                        <button onclick=\"location.replace('../user/signup');\" class=\"submit\" type=\"submit\" name=\"submit\">가입하기</button>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                \r\n");
      out.write("                                </div>\r\n");
      out.write("\r\n");
      out.write("                            </div>\r\n");
      out.write("                            <!-- 아이디찾기 모달 시작-->\r\n");
      out.write("\r\n");
      out.write("                            <div class=\"modal fade popup\" id=\"forgot-id\" tabindex=\"-1\" role=\"dialog\" aria-hidden=\"true\">\r\n");
      out.write("                                <div class=\"modal-dialog modal-dialog-centered\" role=\"document\">\r\n");
      out.write("                                    <div class=\"modal-content\">\r\n");
      out.write("                                        <button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-label=\"Close\" id=\"closeid\" name=\"closeid\">\r\n");
      out.write("                                            <span aria-hidden=\"true\">&times;</span>\r\n");
      out.write("                                        </button>\r\n");
      out.write("                                        <div class=\"modal-body space-y-20 pd-40\">\r\n");
      out.write("                                            <form class=\"form\" method=\"post\" id=\"idForm\">\r\n");
      out.write("                                            <h3>아이디 찾기</h3>\r\n");
      out.write("                                             <br> <br>\r\n");
      out.write("                                            <input id=\"mName\" name=\"mName\" tabindex=\"1\"  aria-required=\"true\" required type=\"text\" placeholder=\"이름\" required>\r\n");
      out.write("                                            <br>\r\n");
      out.write("                                            <input id=\"mPhone\" name=\"mPhone\" tabindex=\"1\"  aria-required=\"true\" required type=\"text\" placeholder=\"연락처 (ex.010-1234-5678)\" required>\r\n");
      out.write("                                            <br> <br>\r\n");
      out.write("                                            <p id=\"chkNotice7\"  name=\"chkNotice7\" size=\"2\" ></p>\r\n");
      out.write("                                            <br>\r\n");
      out.write("                                            <button type=\"button\" class=\"button\" id=\"findId\" style=\"margin-left: 150px;\">확인</button>\r\n");
      out.write("                                            \r\n");
      out.write("                                          </form>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("\r\n");
      out.write("                            <!-- 아이디찾기 모달 끝-->\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("                             <!-- 비번찾기 모달 시작-->\r\n");
      out.write("                           \r\n");
      out.write("\r\n");
      out.write("                            <div class=\"modal fade popup\" id=\"forgot-pass\" tabindex=\"-1\" role=\"dialog\" aria-hidden=\"true\">\r\n");
      out.write("                                <div class=\"modal-dialog modal-dialog-centered\" role=\"document\">\r\n");
      out.write("                                    <div class=\"modal-content\">\r\n");
      out.write("                                        <button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-label=\"Close\" id=\"closepw\" name=\"closepw\">\r\n");
      out.write("                                            <span aria-hidden=\"true\">&times;</span>\r\n");
      out.write("                                        </button>\r\n");
      out.write("                                        <div class=\"modal-body space-y-20 pd-40\">   \r\n");
      out.write("                                            <form class=\"form\" method=\"post\" id=\"pwForm\">\r\n");
      out.write("                                            <h3>비밀번호 찾기</h3>  \r\n");
      out.write("                                            <br> <br>\r\n");
      out.write("                                            <input id=\"mId\" name=\"mId\" class=\"bk\" tabindex=\"1\"  aria-required=\"true\" required type=\"text\" placeholder=\"아이디\" required>\r\n");
      out.write("                                            <br>\r\n");
      out.write("                                            <input id=\"mEmail\" name=\"mEmail\" tabindex=\"1\"  aria-required=\"true\" required type=\"text\" placeholder=\"이메일\" required>\r\n");
      out.write("                                            <br> <br>\r\n");
      out.write("                                            <p id=\"chkNotice8\"  name=\"chkNotice8\" size=\"2\" ></p>\r\n");
      out.write("                                            <br>\r\n");
      out.write("                                            <button class=\"button\" id=\"findPw\"  style=\"margin-left: 150px;\">확인</button>\r\n");
      out.write("                                        </form>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div> \r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("                             <!-- 비번찾기 모달 끝 -->\r\n");
      out.write("                          \r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </section>\r\n");
      out.write("            <!-- Footer 넣음-->\r\n");
      out.write("            ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "../include/footer.jsp", out, false);
      out.write("\r\n");
      out.write("        <!-- Bottom -->\r\n");
      out.write("        </div>\r\n");
      out.write("        <!-- /#page -->\r\n");
      out.write("    </div>\r\n");
      out.write("    <!-- /#wrapper -->\r\n");
      out.write("\r\n");
      out.write("    <a id=\"scroll-top\"></a>\r\n");
      out.write("\r\n");
      out.write("    <script src=\"../assets/js/login.js\"></script>\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof jakarta.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
