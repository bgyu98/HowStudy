/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/10.1.4
 * Generated at: 2023-01-27 09:21:28 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.views.board;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.jsp.*;

public final class notice_jsp extends org.apache.jasper.runtime.HttpJspBase
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

  private org.apache.jasper.runtime.TagHandlerPool _005fjspx_005ftagPool_005fc_005fforEach_0026_005fvar_005fitems;

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
    _005fjspx_005ftagPool_005fc_005fforEach_0026_005fvar_005fitems = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _005fjspx_005ftagPool_005fc_005fforEach_0026_005fvar_005fitems.release();
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
      out.write("<!--[if IE 8]><html class=\"ie\" xmlns=\"http://www.w3.org/1999/xhtml\" xml:lang=\"en-US\" lang=\"en-US\"> <![endif]-->\r\n");
      out.write("<!--[if (gte IE 9)|!(IE)]><!-->\r\n");
      out.write("<html xmlns=\"http://www.w3.org/1999/xhtml\" xml:lang=\"en-US\" lang=\"en-US\">\r\n");
      out.write("  <!--<![endif]-->\r\n");
      out.write("   \r\n");
      out.write("  <head>\r\n");
      out.write("    <!-- Basic Page Needs -->\r\n");
      out.write("    <meta charset=\"utf-8\" />\r\n");
      out.write("    <!--[if IE]><meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge,chrome=1\" /><![endif]-->\r\n");
      out.write("    <title>HOWSTUDY</title>\r\n");
      out.write("\r\n");
      out.write("    <meta name=\"author\" content=\"themesflat.com\" />\r\n");
      out.write("\r\n");
      out.write("    <!-- Mobile Specific Metas -->\r\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, maximum-scale=1\" />\r\n");
      out.write("\r\n");
      out.write("    <!-- Theme Style -->\r\n");
      out.write("    <link rel=\"stylesheet\" type=\"text/css\" href=\"../assets/css/style.css\" />\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"../assets/css/flags.css\" />\r\n");
      out.write("    <link rel=\"stylesheet\" type=\"text/css\" href=\"../assets/css/likeTag.css\">\r\n");
      out.write("    <link rel=\"stylesheet\" type=\"text/css\" href=\"../assets/css/slack.css\">\r\n");
      out.write("\r\n");
      out.write("    <!-- Favicon and Touch Icons  -->\r\n");
      out.write("    <link rel=\"shortcut icon\" href=\"../assets/icon/Favicon.png\" />\r\n");
      out.write("    <link rel=\"apple-touch-icon-precomposed\" href=\"../assets/icon/Favicon.png\" />\r\n");
      out.write("    <link\r\n");
      out.write("      rel=\"stylesheet\"\r\n");
      out.write("      href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css\"\r\n");
      out.write("    />\r\n");
      out.write("    <script src=\"http://code.jquery.com/jquery-3.3.1.min.js\"></script>\r\n");
      out.write("  </head>\r\n");
      out.write("\r\n");
      out.write("  <body class=\"body header-fixed is_dark connect-wal\">\r\n");
      out.write("    <div id=\"wrapper\">\r\n");
      out.write("      <div id=\"page\" class=\"clearfix\">\r\n");
      out.write("        <!-- header ?????? -->\r\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "../include/header.jsp", out, false);
      out.write("\r\n");
      out.write("\r\n");
      out.write("        <!-- title page -->\r\n");
      out.write("        <section class=\"flat-title-page inner\">\r\n");
      out.write("          <div class=\"overlay\"></div>\r\n");
      out.write("          <div class=\"themesflat-container\">\r\n");
      out.write("            <div class=\"row\">\r\n");
      out.write("              <div class=\"col-md-12\">\r\n");
      out.write("                <div class=\"page-title-heading mg-bt-12\">\r\n");
      out.write("                  <h1 class=\"heading text-center\">????????????</h1>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"breadcrumbs\">\r\n");
      out.write("                  <ul>\r\n");
      out.write("                    <li><a href=\"\">?????????</a></li>    \r\n");
      out.write("                    <li>????????????</li>\r\n");
      out.write("                  </ul>\r\n");
      out.write("                </div>\r\n");
      out.write("              </div>\r\n");
      out.write("            </div>\r\n");
      out.write("          </div>\r\n");
      out.write("        </section>\r\n");
      out.write("\r\n");
      out.write("        <div class=\"tf-section sc-card-blog dark-style2\">\r\n");
      out.write("          <div class=\"themesflat-container\">\r\n");
      out.write("            <div class=\"row\">\r\n");
      out.write("              ");
      if (_jspx_meth_c_005fforEach_005f0(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("              <div class=\"col-md-12 wrap-inner load-more text-center mg-t-10\">\r\n");
      out.write("                <a href=\"blog.html\" id=\"loadmore\" class=\"sc-button loadmore fl-button pri-3\"\r\n");
      out.write("                  ><span>?????????</span></a\r\n");
      out.write("                >\r\n");
      out.write("              </div>\r\n");
      out.write("            </div>\r\n");
      out.write("          </div>\r\n");
      out.write("        </div>\r\n");
      out.write("\r\n");
      out.write("<!-- ???????????? ?????? ??????-->\r\n");
      out.write("<form action=\"updatelikeTag\" id=\"updatelikeTag\" >\r\n");
      out.write("  <div class=\"modal fade popup\" id=\"popup_bid3\" tabindex=\"-1\" role=\"dialog\" aria-hidden=\"true\">\r\n");
      out.write("    <div class=\"modal-dialog modal-dialog-centered\" role=\"document\">\r\n");
      out.write("        <div class=\"modal-content\">\r\n");
      out.write("            <button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-label=\"Close\">\r\n");
      out.write("                <span aria-hidden=\"true\">&times;</span>\r\n");
      out.write("            </button>\r\n");
      out.write("            <div class=\"modal-body pd-40\" id=\"likeTagMargin\">\r\n");
      out.write("                <h3 style=\"margin-bottom: 30px;\">?????? ?????? ??????</h3>\r\n");
      out.write("                <input id=\"mId\" type=\"hidden\" name=\"mId\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${sessionScope.loginId}", java.lang.String.class, (jakarta.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("\">\r\n");
      out.write("\r\n");
      out.write("                \r\n");
      out.write("                <label class=\"box-check-input\"><input type=\"checkbox\" class=\"likeTag\" name=\"mTag\" value=\"??????\"><span><img src=\"../assets/images/likeTag/??????.png\">??????</span></label>\r\n");
      out.write("                <label class=\"box-check-input\"><input type=\"checkbox\" class=\"likeTag\" name=\"mTag\" value=\"??????\"><span><img src=\"../assets/images/likeTag/??????.png\">??????</span></label>\r\n");
      out.write("                <label class=\"box-check-input\"><input type=\"checkbox\" class=\"likeTag\" name=\"mTag\" value=\"??????\" ><span><img src=\"../assets/images/likeTag/??????.png\">??????</span></label>\r\n");
      out.write("                <label class=\"box-check-input\"><input type=\"checkbox\" class=\"likeTag\" name=\"mTag\" value=\"??????\"><span><img src=\"../assets/images/likeTag/??????.png\">??????</span></label>\r\n");
      out.write("                <label class=\"box-check-input\"><input type=\"checkbox\" class=\"likeTag\" name=\"mTag\" value=\"?????????\"><span><img src=\"../assets/images/likeTag/?????????.png\">?????????</span></label>\r\n");
      out.write("                <label class=\"box-check-input\"><input type=\"checkbox\" class=\"likeTag\" name=\"mTag\" value=\"????????????\"><span><img src=\"../assets/images/likeTag/????????????.png\">????????????</span></label>\r\n");
      out.write("                <label class=\"box-check-input\"><input type=\"checkbox\" class=\"likeTag\" name=\"mTag\" value=\"?????????\"><span><img src=\"../assets/images/likeTag/?????????.png\">?????????</span></label>\r\n");
      out.write("                <label class=\"box-check-input\"><input type=\"checkbox\" class=\"likeTag\" name=\"mTag\" value=\"????????????\"><span><img src=\"../assets/images/likeTag/????????????.png\">????????????</span></label>\r\n");
      out.write("                <label class=\"box-check-input\"><input type=\"checkbox\" class=\"likeTag\" name=\"mTag\" value=\"??????\" ><span><img src=\"../assets/images/likeTag/??????.png\">??????</span></label>\r\n");
      out.write("                <label class=\"box-check-input\"><input type=\"checkbox\" class=\"likeTag\" name=\"mTag\" value=\"??????\"><span><img src=\"../assets/images/likeTag/??????.png\">??????</span></label>\r\n");
      out.write("                <label class=\"box-check-input\"><input type=\"checkbox\" class=\"likeTag\" name=\"mTag\" value=\"??????\"><span><img src=\"../assets/images/likeTag/??????.png\">??????</span></label>\r\n");
      out.write("                <label class=\"box-check-input\"><input type=\"checkbox\" class=\"likeTag\" name=\"mTag\" value=\"????????????\"><span><img src=\"../assets/images/likeTag/????????????.png\">????????????</span></label>\r\n");
      out.write("                \r\n");
      out.write("                <button id=\"likeTag\" style=\"margin-left: 136px; margin-top: 15px;\">?????? ??????</button>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("</div>\r\n");
      out.write("</form>\r\n");
      out.write("<!--???????????? ?????? ???-->\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("        <!-- Footer ??????-->\r\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "../include/footer.jsp", out, false);
      out.write("\r\n");
      out.write("        <!-- Bottom -->\r\n");
      out.write("      </div>\r\n");
      out.write("      <!-- /#page -->\r\n");
      out.write("    </div>\r\n");
      out.write("    <!-- /#wrapper -->\r\n");
      out.write(" <!--????????? ??????-->\r\n");
      out.write(" <div class=\"quickmenu\">\r\n");
      out.write("\r\n");
      out.write("  <ul style=\"text-decoration: none\">\r\n");
      out.write("    <a href=\"https://app.slack.com/client/T04K98KG26R/C04K5JX8NDU\" onclick=\"window.open(this.href, '_blank', 'width=400, height=800'); return false;\"><img src=\"/assets/images/icon/slack.png\"></img></a>\r\n");
      out.write("    \r\n");
      out.write("  </ul>\r\n");
      out.write("</div>\r\n");
      out.write("    <a id=\"scroll-top\"></a>\r\n");
      out.write("    <script src=\"../assets/js/likeTag.js\"></script>\r\n");
      out.write("    <script src=\"../assets/js/slack.js\"></script>\r\n");
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

  private boolean _jspx_meth_c_005fforEach_005f0(jakarta.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    jakarta.servlet.jsp.PageContext pageContext = _jspx_page_context;
    jakarta.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_005fforEach_005f0 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _005fjspx_005ftagPool_005fc_005fforEach_0026_005fvar_005fitems.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    boolean _jspx_th_c_005fforEach_005f0_reused = false;
    try {
      _jspx_th_c_005fforEach_005f0.setPageContext(_jspx_page_context);
      _jspx_th_c_005fforEach_005f0.setParent(null);
      // /WEB-INF/views/board/notice.jsp(64,14) name = items type = jakarta.el.ValueExpression reqTime = true required = false fragment = false deferredValue = true expectedTypeName = java.lang.Object deferredMethod = false methodSignature = null
      _jspx_th_c_005fforEach_005f0.setItems(new org.apache.jasper.el.JspValueExpression("/WEB-INF/views/board/notice.jsp(64,14) '${noticeContent}'",_jsp_getExpressionFactory().createValueExpression(_jspx_page_context.getELContext(),"${noticeContent}",java.lang.Object.class)).getValue(_jspx_page_context.getELContext()));
      // /WEB-INF/views/board/notice.jsp(64,14) name = var type = java.lang.String reqTime = false required = false fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
      _jspx_th_c_005fforEach_005f0.setVar("noticevo");
      int[] _jspx_push_body_count_c_005fforEach_005f0 = new int[] { 0 };
      try {
        int _jspx_eval_c_005fforEach_005f0 = _jspx_th_c_005fforEach_005f0.doStartTag();
        if (_jspx_eval_c_005fforEach_005f0 != jakarta.servlet.jsp.tagext.Tag.SKIP_BODY) {
          do {
            out.write("\r\n");
            out.write("                <div class=\"fl-blog fl-item2 col-lg-4 col-md-6\">\r\n");
            out.write("                  <article class=\"sc-card-article\">\r\n");
            out.write("                    <div class=\"card-media\" style=\"text-align: center\">\r\n");
            out.write("                      <img src=\"../assets/images/noticeimage/");
            out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${noticevo.nREALNAME}", java.lang.String.class, (jakarta.servlet.jsp.PageContext)_jspx_page_context, null));
            out.write("\" height=\"20%\" />\r\n");
            out.write("                    </div>\r\n");
            out.write("                    <div class=\"text-article\">\r\n");
            out.write("                      <h3>");
            out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${noticevo.nTITLE}", java.lang.String.class, (jakarta.servlet.jsp.PageContext)_jspx_page_context, null));
            out.write("</h3>\r\n");
            out.write("                      <p>");
            out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${noticevo.nSUBTITLE}", java.lang.String.class, (jakarta.servlet.jsp.PageContext)_jspx_page_context, null));
            out.write("</p>\r\n");
            out.write("                    </div>\r\n");
            out.write("                    <a\r\n");
            out.write("                      href=\"../board/noticesangse?nNUM=");
            out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${noticevo.nNUM}", java.lang.String.class, (jakarta.servlet.jsp.PageContext)_jspx_page_context, null));
            out.write("\"\r\n");
            out.write("                      class=\"sc-button fl-button pri-3\"\r\n");
            out.write("                      ><span>Read More</span></a\r\n");
            out.write("                    >\r\n");
            out.write("                    <div class=\"meta-info\" style=\"float: right; margin-right: 6px\">\r\n");
            out.write("                      <div class=\"date\">");
            out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${noticevo.nDATE}", java.lang.String.class, (jakarta.servlet.jsp.PageContext)_jspx_page_context, null));
            out.write("</div>\r\n");
            out.write("                    </div>\r\n");
            out.write("                  </article>\r\n");
            out.write("                </div>\r\n");
            out.write("              ");
            int evalDoAfterBody = _jspx_th_c_005fforEach_005f0.doAfterBody();
            if (evalDoAfterBody != jakarta.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
              break;
          } while (true);
        }
        if (_jspx_th_c_005fforEach_005f0.doEndTag() == jakarta.servlet.jsp.tagext.Tag.SKIP_PAGE) {
          return true;
        }
      } catch (java.lang.Throwable _jspx_exception) {
        while (_jspx_push_body_count_c_005fforEach_005f0[0]-- > 0)
          out = _jspx_page_context.popBody();
        _jspx_th_c_005fforEach_005f0.doCatch(_jspx_exception);
      } finally {
        _jspx_th_c_005fforEach_005f0.doFinally();
      }
      _005fjspx_005ftagPool_005fc_005fforEach_0026_005fvar_005fitems.reuse(_jspx_th_c_005fforEach_005f0);
      _jspx_th_c_005fforEach_005f0_reused = true;
    } finally {
      org.apache.jasper.runtime.JspRuntimeLibrary.releaseTag(_jspx_th_c_005fforEach_005f0, _jsp_getInstanceManager(), _jspx_th_c_005fforEach_005f0_reused);
    }
    return false;
  }
}
