/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/10.1.4
 * Generated at: 2023-01-30 06:47:39 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.views;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports,
                 org.apache.jasper.runtime.JspSourceDirectives {

  private static final jakarta.servlet.jsp.JspFactory _jspxFactory =
          jakarta.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

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
      out.write("\r\n");
      out.write("\r\n");
      out.write("<head>\r\n");
      out.write("  ");
 String pjName = "/howStudy"; 
      out.write("\r\n");
      out.write("    <!-- Basic Page Needs -->\r\n");
      out.write("    <meta charset=\"utf-8\">\r\n");
      out.write("    <!--[if IE]><meta http-equiv='X-UA-Compatible' content='IE=edge,chrome=1'><![endif]-->\r\n");
      out.write("    <title>HOWSTUDY</title>\r\n");
      out.write("\r\n");
      out.write("    <meta name=\"author\" content=\"themesflat.com\">\r\n");
      out.write("\r\n");
      out.write("    <!-- Mobile Specific Metas -->\r\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, maximum-scale=1\">\r\n");
      out.write("\r\n");
      out.write("    <!-- Theme Style -->\r\n");
      out.write("    <link rel=\"stylesheet\" type=\"text/css\" href=\"assets/css/style.css\">\r\n");
      out.write("\r\n");
      out.write("    <!-- Favicon and Touch Icons  -->\r\n");
      out.write("    <link rel=\"shortcut icon\" href=\"assets/icon/Favicon.png\">\r\n");
      out.write("    <link rel=\"apple-touch-icon-precomposed\" href=\"assets/icon/Favicon.png\">\r\n");
      out.write("\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("<body class=\"body bg-section-style3 header-fixed is_dark\">\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("    <div id=\"wrapper\">\r\n");
      out.write("        <div id=\"page\" class=\"clearfix\">\r\n");
      out.write("           \r\n");
      out.write("             \r\n");
      out.write("            <!-- title page -->\r\n");
      out.write("            <section class=\"flat-title-page home5\">\r\n");
      out.write("                <div class=\"overlay\"></div>\r\n");
      out.write("                <div class=\"themesflat-container\">\r\n");
      out.write("                    <div class=\"wrap-heading flat-slider d-flex align-items-center\">\r\n");
      out.write("                        <div class=\"content\">\r\n");
      out.write("                            <h4 class=\"mg-bt-11\"><span class=\"fill\">NFT MARKETPLACE</span></h4>\r\n");
      out.write("                            <h1 class=\"heading\">Discover, find and sell extraordinary monster NFTs                                                                                      \r\n");
      out.write("                            </h1>	\r\n");
      out.write("                            <p class=\"sub-heading mg-t-7 mg-bt-39\">Marketplace for monster character cllections non fungible token NFTs\r\n");
      out.write("                            </p>\r\n");
      out.write("                            <div class=\"flat-bt-slider style2 flex\">\r\n");
      out.write("                                <a href=\"studyRoom/study\" class=\"sc-button header-slider style style-1 rocket fl-button pri-1\"><span>????????????\r\n");
      out.write("                                </span></a>\r\n");
      out.write("                                <a href=\"board/noticesangse?nNUM=1006\" class=\"sc-button header-slider style style-1 note fl-button pri-1\"><span>???????????????\r\n");
      out.write("                                </span></a>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        \r\n");
      out.write("                        <div class=\"swiper-container swiper mySwiper swiper-h\">\r\n");
      out.write("                            <div class=\"swiper-wrapper\">\r\n");
      out.write("                              \r\n");
      out.write("                              <div class=\"swiper-slide\">\r\n");
      out.write("                                <div class=\"swiper mySwiper1 swiper-v\">\r\n");
      out.write("                                  <div class=\"swiper-wrapper\">\r\n");
      out.write("                                    <div class=\"swiper-slide\"><img src=\"../assets/images/indexImage/1.jpg\" alt=\"Image\" style=\"height: 400px; width: auto;\"></div>\r\n");
      out.write("                                    <div class=\"swiper-slide\"><img src=\"../assets/images/indexImage/2.jpg\" alt=\"Image\" style=\"height: 400px; width: auto;\"></div>\r\n");
      out.write("                                    <div class=\"swiper-slide\"><img src=\"../assets/images/indexImage/5.jpg\" alt=\"Image\" style=\"height: 400px; width: auto;\"></div>\r\n");
      out.write("                                    <div class=\"swiper-slide\"><img src=\"../assets/images/indexImage/4.jpg\" alt=\"Image\" style=\"height: 400px; width: auto;\"></div>\r\n");
      out.write("                                  </div>\r\n");
      out.write("                                </div>\r\n");
      out.write("                              </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <div class=\"swiper-container swiper mySwiper swiper-h\">\r\n");
      out.write("                            <div class=\"swiper-wrapper\">\r\n");
      out.write("                              \r\n");
      out.write("                              <div class=\"swiper-slide\">\r\n");
      out.write("                                <div class=\"swiper mySwiper2 swiper-v\">\r\n");
      out.write("                                  <div class=\"swiper-wrapper\">\r\n");
      out.write("                                    <div class=\"swiper-slide\"><img src=\"../assets/images/indexImage/3.jpg\" alt=\"Image\" style=\"height: 400px; width: auto;\"></div>\r\n");
      out.write("                                    <div class=\"swiper-slide\"><img src=\"assets/images/box-item/item-h5.2.png\" alt=\"Image\"></div>\r\n");
      out.write("                                    <div class=\"swiper-slide\"><img src=\"assets/images/box-item/item-h5.3.png\" alt=\"Image\"></div>\r\n");
      out.write("                                    <div class=\"swiper-slide\"><img src=\"assets/images/box-item/item-h5.1.png\" alt=\"Image\"></div>\r\n");
      out.write("                                  </div>\r\n");
      out.write("                                  <div class=\"swiper-pagination\"></div>\r\n");
      out.write("                                </div>\r\n");
      out.write("                              </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <div class=\"swiper-container swiper mySwiper swiper-h\">\r\n");
      out.write("                            <div class=\"swiper-wrapper\">\r\n");
      out.write("                              \r\n");
      out.write("                              <div class=\"swiper-slide\">\r\n");
      out.write("                                <div class=\"swiper mySwiper1 swiper-v\">\r\n");
      out.write("                                  <div class=\"swiper-wrapper\">\r\n");
      out.write("                                    <div class=\"swiper-slide\"><img src=\"assets/images/box-item/item-h5.2.png\" alt=\"Image\"></div>\r\n");
      out.write("                                    <div class=\"swiper-slide\"><img src=\"assets/images/box-item/item-h5.1.png\" alt=\"Image\"></div>\r\n");
      out.write("                                    <div class=\"swiper-slide\"><img src=\"assets/images/box-item/item-h5.3.png\" alt=\"Image\"></div>\r\n");
      out.write("                                    <div class=\"swiper-slide\"><img src=\"assets/images/box-item/item-h5.1.png\" alt=\"Image\"></div>\r\n");
      out.write("                                  </div>\r\n");
      out.write("                                  <div class=\"swiper-pagination\"></div>\r\n");
      out.write("                                </div>\r\n");
      out.write("                              </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <div class=\"swiper-container swiper mySwiper swiper-h end\">\r\n");
      out.write("                            <div class=\"swiper-wrapper\">\r\n");
      out.write("                              \r\n");
      out.write("                              <div class=\"swiper-slide\">\r\n");
      out.write("                                <div class=\"swiper mySwiper2 swiper-v\">\r\n");
      out.write("                                  <div class=\"swiper-wrapper\">\r\n");
      out.write("                                    <div class=\"swiper-slide\"><img src=\"assets/images/box-item/item-h5.1.png\" alt=\"Image\"></div>\r\n");
      out.write("                                    <div class=\"swiper-slide\"><img src=\"assets/images/box-item/item-h5.2.png\" alt=\"Image\"></div>\r\n");
      out.write("                                    <div class=\"swiper-slide\"><img src=\"assets/images/box-item/item-h5.3.png\" alt=\"Image\"></div>\r\n");
      out.write("                                    <div class=\"swiper-slide\"><img src=\"assets/images/box-item/item-h5.2.png\" alt=\"Image\"></div>\r\n");
      out.write("                                  </div>\r\n");
      out.write("                                  <div class=\"swiper-pagination\"></div>\r\n");
      out.write("                                </div>\r\n");
      out.write("                              </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        \r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>                           \r\n");
      out.write("            </section>\r\n");
      out.write("            <!-- Footer ??????-->\r\n");
      out.write("            ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "include/footer.jsp", out, false);
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
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
