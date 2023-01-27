/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/10.1.4
 * Generated at: 2023-01-27 09:43:17 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.views.include;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.jsp.*;

public final class footer_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\n");
      out.write("\n");
      out.write("  <!DOCTYPE html>\n");
      out.write("  <html>\n");
      out.write("\n");
      out.write("  <head>\n");
      out.write("    <meta charset=\"UTF-8\">\n");
      out.write("\n");
      out.write("    <title>Footer</title>\n");
      out.write("  </head>\n");
      out.write("\n");
      out.write("  <body>\n");
      out.write("\n");
      out.write("    <!-- Footer -->\n");
      out.write("    <footer id=\"footer\" class=\"clearfix\">\n");
      out.write("      <div class=\"themesflat-container\">\n");
      out.write("        <div class=\"row\">\n");
      out.write("          <div class=\"col-lg-3 col-md-12 col-12\">\n");
      out.write("            <div class=\"widget widget-logo\">\n");
      out.write("              <div class=\"logo-footer\" style=\"margin-top: -40px\">\n");
      out.write("                <img id=\"logo_footer\" src=\"../assets/images/logo/logo02.png\" alt=\"nft-gaming\" width=\"220\"\n");
      out.write("                  height=\"120\"  />\n");
      out.write("                <p class=\"sub-widget-logo\">\n");
      out.write("                  (주)HowStudy<br />\n");
      out.write("                  서울특별시 강남구 선릉로 112길 34\n");
      out.write("                </p>\n");
      out.write("              </div>\n");
      out.write("            </div>\n");
      out.write("          </div>\n");
      out.write("          <div class=\"col-lg-2 col-md-4 col-sm-5 col-5\">\n");
      out.write("            <div class=\"widget widget-menu style-1\">\n");
      out.write("              <h5 class=\"title-widget\">캠 스터디</h5>\n");
      out.write("              <ul>\n");
      out.write("                <li><a href=\"../board/noticesangse?nNUM=1006\">이용가이드</a></li>\n");
      out.write("              </ul>\n");
      out.write("            </div>\n");
      out.write("          </div>\n");
      out.write("          <div class=\"col-lg-2 col-md-4 col-sm-7 col-7\">\n");
      out.write("            <div class=\"widget widget-menu style-2\">\n");
      out.write("              <h5 class=\"title-widget\">커뮤니티</h5>\n");
      out.write("              <ul>\n");
      out.write("                <li><a href=\"help-center.html\">인스타그램</a></li>\n");
      out.write("                <li><a href=\"auctions.html\">페이스북</a></li>\n");
      out.write("                <li><a href=\"item-details.html\">유튜브</a></li>\n");
      out.write("              </ul>\n");
      out.write("            </div>\n");
      out.write("          </div>\n");
      out.write("          <div class=\"col-lg-2 col-md-4 col-sm-5 col-5\">\n");
      out.write("            <div class=\"widget widget-menu fl-st-3\">\n");
      out.write("              <h5 class=\"title-widget\">오프라인</h5>\n");
      out.write("              <ul>\n");
      out.write("                <li><a href=\"explore-1.html\">안내</a></li>\n");
      out.write("              </ul>\n");
      out.write("            </div>\n");
      out.write("          </div>\n");
      out.write("          <div class=\"col-lg-3 col-md-6 col-sm-7 col-12\">\n");
      out.write("            <div class=\"widget widget-subcribe\">\n");
      out.write("              <h5 class=\"title-widget\">언어</h5>\n");
      out.write("              <div id=\"google_translate_element\" style=\"display:none;\"></div>\n");
      out.write("              <!-- \"새 번역 링크 UI\" -->\n");
      out.write("              <div class=\"language\">\n");
      out.write("                <ul class=\"translation-links\">\n");
      out.write("                  <li><a href=\"javascript:void(0)\" class=\"Korean\" data-lang=\"ko\"><span class=\"flag ko\">한국어</span></a>\n");
      out.write("                  </li>\n");
      out.write("                  <li><a href=\"javascript:void(0)\" class=\"english\" data-lang=\"en\"><span class=\"flag en\">영어</span></a>\n");
      out.write("                  </li>\n");
      out.write("                  <li><a href=\"javascript:void(0)\" class=\"spanish\" data-lang=\"zh-CN\"><span\n");
      out.write("                        class=\"flag zh-CN\">중국어</span></a></li>\n");
      out.write("                  <li><a href=\"javascript:void(0)\" class=\"japanese\" data-lang=\"ja\"><span class=\"flag ja\">일본어</span></a>\n");
      out.write("                  </li>\n");
      out.write("                </ul>\n");
      out.write("              </div>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("          </div>\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("      </div>\n");
      out.write("    </footer>\n");
      out.write("    <!-- /#footer -->\n");
      out.write("\n");
      out.write("    <!-- script -->\n");
      out.write("    <script src=\"../assets/js/jquery.min.js\"></script>\n");
      out.write("    <script src=\"../assets/js/jquery.easing.js\"></script>\n");
      out.write("    <script src=\"../assets/js/bootstrap.min.js\"></script>\n");
      out.write("    <script src=\"../assets/js/bootstrap.bundle.min.js\"></script>\n");
      out.write("    <script src=\"../assets/js/count-down.js\"></script>\n");
      out.write("    <script src=\"../assets/js/mystudyroom.js\"></script>\n");
      out.write("    <script src=\"../assets/js/moralis.js\"></script>\n");
      out.write("    <script src=\"../assets/js/main.js\"></script>\n");
      out.write("    <script src=\"../assets/js/nft.js\"></script>\n");
      out.write("    <script src=\"../assets/js/plugin.js\"></script>\n");
      out.write("    <script src=\"../assets/js/price-ranger.js\"></script>\n");
      out.write("    <script src=\"../assets/js/shortcodes.js\"></script>\n");
      out.write("    <script src=\"../assets/js/swiper-bundle.min.js\"></script>\n");
      out.write("    <script src=\"../assets/js/swiper.js\"></script>\n");
      out.write("\n");
      out.write("    <script src=\"../assets/js/wow.min.js\"></script>\n");
      out.write("    <script src=\"../assets/js/web3.min.js\"></script>\n");
      out.write("    <script src=\"https://cdn.jsdelivr.net/npm/sweetalert2@11.4.10/dist/sweetalert2.min.js\"></script>\n");
      out.write("  \n");
      out.write("    <!--번역관련 스크립트-->\n");
      out.write("    <script src=\"https://translate.google.com/translate_a/element.js?cb=googleTranslateElementInit\"></script>\n");
      out.write("    <script src=\"../assets/js/translate.js\"></script>\n");
      out.write("    <script type=\"text/javascript\">\n");
      out.write("      function googleTranslateElementInit() { new google.translate.TranslateElement({ pageLanguage: 'ko', autoDisplay: true }, 'google_translate_element'); }\n");
      out.write("    </script>\n");
      out.write("  </body>\n");
      out.write("  \n");
      out.write("\n");
      out.write("  </html>");
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
