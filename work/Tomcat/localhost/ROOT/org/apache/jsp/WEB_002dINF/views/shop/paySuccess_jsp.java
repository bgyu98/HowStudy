/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/10.1.4
 * Generated at: 2023-01-30 01:53:27 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.views.shop;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.jsp.*;

public final class paySuccess_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports,
                 org.apache.jasper.runtime.JspSourceDirectives {

  private static final jakarta.servlet.jsp.JspFactory _jspxFactory =
          jakarta.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(2);
    _jspx_dependants.put("file:/C:/Users/kosmo/.m2/repository/org/glassfish/web/jakarta.servlet.jsp.jstl/2.0.0/jakarta.servlet.jsp.jstl-2.0.0.jar", Long.valueOf(1672711192494L));
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
      out.write("<html xmlns=\"http://www.w3.org/1999/xhtml\" xml:lang=\"en-US\" lang=\"en-US\">\r\n");
      out.write("  <!-- 한글 깨짐 방지-->\r\n");
      out.write("  \r\n");
      out.write("  \r\n");
      out.write("\r\n");
      out.write("  <head>\r\n");
      out.write("    <meta charset=\"utf-8\" />\r\n");
      out.write("    <title>HOWSTUDY - 구매 완료 페이지</title>\r\n");
      out.write("\r\n");
      out.write("    <meta name=\"author\" content=\"themesflat.com\" />\r\n");
      out.write("\r\n");
      out.write("    <!-- Mobile Specific Metas -->\r\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, maximum-scale=1\" />\r\n");
      out.write("\r\n");
      out.write("    <!-- Theme Style -->\r\n");
      out.write("    <link rel=\"stylesheet\" type=\"text/css\" href=\"../assets/css/style.css\" />\r\n");
      out.write("\r\n");
      out.write("    <!-- Favicon and Touch Icons  -->\r\n");
      out.write("    <link rel=\"shortcut icon\" href=\"assets/icon/Favicon.png\" />\r\n");
      out.write("    <link rel=\"apple-touch-icon-precomposed\" href=\"assets/icon/Favicon.png\" />\r\n");
      out.write("  </head>\r\n");
      out.write("\r\n");
      out.write("  \r\n");
      out.write("<body class=\"body header-fixed is_dark connect-wal\">\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("    <div id=\"wrapper\">\r\n");
      out.write("      <div id=\"page\" class=\"clearfix\">\r\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "../include/header.jsp", out, false);
      out.write(" <!-- header include -->\r\n");
      out.write("\r\n");
      out.write("        <!-- 메인 페이지 시작 -->\r\n");
      out.write("        \r\n");
      out.write("        <section class=\"flat-title-page inner\">\r\n");
      out.write("          <div class=\"overlay\"></div>\r\n");
      out.write("          <div class=\"themesflat-container\">\r\n");
      out.write("            <div class=\"row\">\r\n");
      out.write("              <div class=\"col-md-12\">\r\n");
      out.write("                <div class=\"page-title-heading mg-bt-12\">\r\n");
      out.write("                  <h1 class=\"heading text-center\">구매 성공!</h1>\r\n");
      out.write("                </div>\r\n");
      out.write("                \r\n");
      out.write("                <div class=\"breadcrumbs style2\">\r\n");
      out.write("                </div>\r\n");
      out.write("              </div>\r\n");
      out.write("            </div>\r\n");
      out.write("          </div>\r\n");
      out.write("        </section>\r\n");
      out.write("\r\n");
      out.write("        <!-- 주문완료 내용 시작 -->\r\n");
      out.write("	<section style=\"text-align:center;margin-bottom: 300px;position: relative;top: 100px;\">\r\n");
      out.write("        <br/>\r\n");
      out.write("        <h2>결제가 성공적으로 이루어졌습니다.</h2></br></br></br>\r\n");
      out.write("        <h3>구매해 주셔서 감사합니다.</h3></br></br></br></br>\r\n");
      out.write("        <h4>아래의 결제정보를 확인해 주세요.</br>회원가입시 입력한 이메일로 결제 내역이 전송됩니다.</h4></br></br>\r\n");
      out.write("\r\n");
      out.write("        <!-- 파라미터 넘긴거 받기 -->\r\n");
      out.write("        ");

            String selectName = request.getParameter("tClass");
            String selectPrice = request.getParameter("pAmount");
            String selectPay = request.getParameter("payWith");
        
      out.write("\r\n");
      out.write("        \r\n");
      out.write("        <!--구매제품 설명 시작-->\r\n");
      out.write("        <div class=\"sc-card-activity style1\" style=\"place-content: center;\">\r\n");
      out.write("          <div class=\"content\">\r\n");
      out.write("            <div class=\"infor\">\r\n");
      out.write("              <!-- 세션에 있는 id값 불러와서 출력 -->\r\n");
      out.write("              <hr><div class=\"status\">구매자 아이디 : <span class=\"author\">");
      out.print(session.getAttribute("loginId"));
      out.write("</span></div>\r\n");
      out.write("              <hr>\r\n");
      out.write("              <!-- 넘겨받은 파라미터 출력 -->\r\n");
      out.write("                          <div class=\"status\">이용권이름 : <span class=\"author\">");
      out.print( selectName );
      out.write("</span></div><hr>\r\n");
      out.write("                          <div class=\"status\">이용권가격 : <span class=\"author\">");
      out.print( selectPrice );
      out.write("원</span></div><hr>\r\n");
      out.write("                          <div class=\"status\">구매수단 : <span class=\"author\">");
      out.print( selectPay );
      out.write("</span></div><hr>\r\n");
      out.write("                      </div>\r\n");
      out.write("                  </div>\r\n");
      out.write("              </div>\r\n");
      out.write("              \r\n");
      out.write("              <div class=\"btn-activity mg-t-40 center\">\r\n");
      out.write("                  <a href=\"goHome\" class=\"sc-button loadmore fl-button pri-3\"><span>메인 화면으로</span></a>\r\n");
      out.write("              </div>\r\n");
      out.write("            <!-- 구매제품 설명 끝 -->\r\n");
      out.write("    </section>\r\n");
      out.write("        \r\n");
      out.write("        <!-- 주문완료 끝 -->\r\n");
      out.write("        \r\n");
      out.write("\r\n");
      out.write("                </div>\r\n");
      out.write("              </div>\r\n");
      out.write("            </div>\r\n");
      out.write("          </div>\r\n");
      out.write("          </div>\r\n");
      out.write("        </section>\r\n");
      out.write("\r\n");
      out.write("        <!-- 메인 페이지 끝-->\r\n");
      out.write("        <!-- footer 삽입 -->\r\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "../include/footer.jsp", out, false);
      out.write(" \r\n");
      out.write("      <!-- /#page -->\r\n");
      out.write("    <!-- /#wrapper -->\r\n");
      out.write("    \r\n");
      out.write("    <a id=\"scroll-top\"></a>\r\n");
      out.write("  </body>\r\n");
      out.write("</html>\r\n");
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