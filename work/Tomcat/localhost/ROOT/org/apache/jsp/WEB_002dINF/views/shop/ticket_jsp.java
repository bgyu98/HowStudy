/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/10.1.4
 * Generated at: 2023-01-31 07:08:16 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.views.shop;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.jsp.*;

public final class ticket_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports,
                 org.apache.jasper.runtime.JspSourceDirectives {

  private static final jakarta.servlet.jsp.JspFactory _jspxFactory =
          jakarta.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(2);
    _jspx_dependants.put("file:/C:/Users/kosmo/.m2/repository/org/glassfish/web/jakarta.servlet.jsp.jstl/2.0.0/jakarta.servlet.jsp.jstl-2.0.0.jar", Long.valueOf(1672711024185L));
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

  private org.apache.jasper.runtime.TagHandlerPool _005fjspx_005ftagPool_005fc_005fforEach_0026_005fvarStatus_005fvar_005fitems;

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
    _005fjspx_005ftagPool_005fc_005fforEach_0026_005fvarStatus_005fvar_005fitems = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _005fjspx_005ftagPool_005fc_005fforEach_0026_005fvarStatus_005fvar_005fitems.release();
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

      out.write("<!DOCTYPE html>\n");
      out.write("<html xmlns=\"http://www.w3.org/1999/xhtml\" xml:lang=\"en-US\" lang=\"en-US\">\n");
      out.write("  <!-- 한글 깨짐 방지-->\n");
      out.write("  \n");
      out.write("  \n");
      out.write("\n");
      out.write("  <head>\n");
      out.write("    <meta charset=\"utf-8\" />\n");
      out.write("    <title>HOWSTUDY</title>\n");
      out.write("    <link rel=\"stylesheet\" type=\"text/css\" href=\"../assets/css/likeTag.css\" />\n");
      out.write("    \n");
      out.write("\n");
      out.write("   \n");
      out.write("\n");
      out.write("    \n");
      out.write("  </head>\n");
      out.write("\n");
      out.write("  \n");
      out.write("<body class=\"body header-fixed is_dark connect-wal\">\n");
      out.write("\n");
      out.write("\n");
      out.write("    <div id=\"wrapper\">\n");
      out.write("      <div id=\"page\" class=\"clearfix\">\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "../include/header.jsp", out, false);
      out.write(" <!-- header include -->\n");
      out.write("\n");
      out.write("        <!-- 메인 페이지 시작 -->\n");
      out.write("        \n");
      out.write("        <section class=\"flat-title-page inner\">\n");
      out.write("          <div class=\"overlay\"></div>\n");
      out.write("          <div class=\"themesflat-container\">\n");
      out.write("            <div class=\"row\">\n");
      out.write("              <div class=\"col-md-12\">\n");
      out.write("                <div class=\"page-title-heading mg-bt-12\">\n");
      out.write("                  <h1 class=\"heading text-center\">이용권 구매</h1>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"breadcrumbs style2\">\n");
      out.write("                  <ul>\n");
      out.write("                    <li><a href=\"\">마이페이지</a></li>\n");
      out.write("                    <li>이용권 구매</li>\n");
      out.write("                  </ul>\n");
      out.write("                </div>\n");
      out.write("              </div>\n");
      out.write("            </div>\n");
      out.write("          </div>\n");
      out.write("        </section>\n");
      out.write("\n");
      out.write("        \n");
      out.write("\n");
      out.write("        <div class=\"tf-section post-details\">\n");
      out.write("          <div class=\"themesflat-container\">\n");
      out.write("            <div class=\"post\">\n");
      out.write("              <div class=\"inner-content\">\n");
      out.write("\n");
      out.write("                <!-- 주의사항 시작 -->\n");
      out.write("                <hr/>\n");
      out.write("                        <div>\n");
      out.write("                        <h2 style=\"text-align: center;\">교환 환불 불가 ❗❗</h2>\n");
      out.write("                        <br/>\n");
      out.write("                        <br/>\n");
      out.write("                        <h4 style=\"text-align: center;\"> '프리미엄 이용권' 은 교환 및 환불이 어려운 점 양해 부탁드립니다.</h4>\n");
      out.write("                        <br/>\n");
      out.write("                        <br/>\n");
      out.write("                        <h5 style=\"text-align: center;\"> 💎 프리미엄 이용권 혜택 💎 </h5>\n");
      out.write("                        <br/>\n");
      out.write("                        <h6 style=\"text-align: center;\"> 1️⃣ To-Do List</h6>\n");
      out.write("                        <br/>\n");
      out.write("                        <h6 style=\"text-align: center;\"> 2️⃣ NOTE</h6>\n");
      out.write("                        <br/>\n");
      out.write("                        <h6 style=\"text-align: center;\"> 3️⃣ RECORD</h6>\n");
      out.write("                        <br/>\n");
      out.write("                        <br/>\n");
      out.write("                        <h5 style=\"text-align: center;\"> 등과 같은 많은 서비스를 이용해 보세요.</h5>\n");
      out.write("                      </div>\n");
      out.write("                      <hr/>\n");
      out.write("                      <!-- 주의사항 끝 -->\n");
      out.write("                <div class=\"swiper-container show-shadow carousel2 pad-t-20 button-arow-style\">\n");
      out.write("                  <div class=\"swiper-wrapper\">\n");
      out.write("                    <!--여기부터 한 블럭 forEach-->\n");
      out.write("                    ");
      if (_jspx_meth_c_005fforEach_005f0(_jspx_page_context))
        return;
      out.write("\n");
      out.write("                          <!--여까지 한 블럭-->\n");
      out.write("                            \n");
      out.write("                            </div>\n");
      out.write("                          </div>\n");
      out.write("                        </div>\n");
      out.write("                        \n");
      out.write("\n");
      out.write("                      </div>\n");
      out.write("          </div>\n");
      out.write("      </div>\n");
      out.write("                  <!-- <div class=\"swiper-button-next btn-slide-next\"></div>\n");
      out.write("                  <div class=\"swiper-button-prev btn-slide-prev\"></div> // 양쪽 방향 버튼 // 이 페이지에서는 버튼 필요 없어서 껐습니다. -->\n");
      out.write("                </div>\n");
      out.write("              </div>\n");
      out.write("            </div>\n");
      out.write("          </div>\n");
      out.write("          </div>\n");
      out.write("        </section>\n");
      out.write("\n");
      out.write("        <!-- 메인 페이지 끝-->\n");
      out.write("        <!-- 모달 창 시작 -->\n");
      out.write("        <div class=\"modal fade popup\" id=\"popup_bid\" tabindex=\"-1\" role=\"dialog\" aria-hidden=\"true\">\n");
      out.write("          <div class=\"modal-dialog modal-dialog-centered\" role=\"document\">\n");
      out.write("              <div class=\"modal-content\">\n");
      out.write("                  <button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-label=\"Close\">\n");
      out.write("                      <span aria-hidden=\"true\">&times;</span>\n");
      out.write("                  </button>\n");
      out.write("                  <div class=\"modal-body space-y-20 pd-40\">\n");
      out.write("                      <h3>구매하시겠습니까?</h3>\n");
      out.write("                      <p class=\"text-center\"><span class=\"price color-popup\">선택하신 상품</span></p>\n");
      out.write("                      <input id=\"selectName\" type=\"text\" class=\"\" value=\"\" readonly>\n");
      out.write("                      <p class=\"text-center\"><span class=\"price color-popup\">선택하신 상품의 가격</span></p>\n");
      out.write("                      <input id=\"selectPrice\" type=\"text\" class=\"\" value=\"\" readonly>\n");
      out.write("                      <div class=\"hr\"></div>\n");
      out.write("                      <a id=\"nextModal\" href=\"#\" class=\"btn btn-primary\" data-toggle=\"modal\" data-target=\"#pay_bid\" data-dismiss=\"modal\" aria-label=\"Close\">확인</a>\n");
      out.write("                  </div>\n");
      out.write("              </div>\n");
      out.write("          </div>\n");
      out.write("      </div> \n");
      out.write("      <!--모달 끝-->\n");
      out.write("      \n");
      out.write("      \n");
      out.write("      <!-- 결제 모달 창 시작 -->\n");
      out.write("      <form action=\"paySuccess\" id=\"paySuccess\" method=\"post\" >\n");
      out.write("      <div class=\"modal fade popup\" id=\"pay_bid\" tabindex=\"-1\" role=\"dialog\" aria-hidden=\"true\">\n");
      out.write("        <div class=\"modal-dialog modal-dialog-centered\" role=\"document\">\n");
      out.write("            <div class=\"modal-content\">\n");
      out.write("                <button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-label=\"Close\">\n");
      out.write("                    <span aria-hidden=\"true\">&times;</span>\n");
      out.write("                </button>\n");
      out.write("                <div class=\"modal-body space-y-20 pd-40\">\n");
      out.write("                    <h3>결제 방식을 선택해주세요</h3>\n");
      out.write("                    <input id=\"submitName\" type=\"hidden\" name=\"tClass\" value=\"\">\n");
      out.write("                    <input id=\"submitPrice\" type=\"hidden\" name=\"pAmount\" value=\"\">\n");
      out.write("                    <input id=\"submitPayment\" type=\"hidden\" name=\"payWith\" value=\"\">\n");
      out.write("                    <input id=\"submitId\" type=\"hidden\" name=\"mId\" value='");
      out.print(session.getAttribute("loginId"));
      out.write("'>\n");
      out.write("                    \n");
      out.write("                    <a href=\"#\" class=\"btn btn-primary\" data-toggle=\"modal\" data-target=\"#popup_bid_success\" data-dismiss=\"modal\" aria-label=\"Close\"><button class=\"sc-button style bag fl-button\" id=\"kakaoPay\" name=\"kakaoPay\" value=\"카카오페이\"><img src=\"../assets/images/pay/payment_icon_yellow_medium.png\"></button></a>\n");
      out.write("                    <a href=\"#\" class=\"btn btn-primary\" data-toggle=\"modal\" data-target=\"#popup_bid_success\" data-dismiss=\"modal\" aria-label=\"Close\"><button class=\"sc-button style bag fl-button\"  id=\"tossPay\" name=\"tossPay\" value=\"토스페이\"><img src=\"../assets/images/pay/tosspay.png\"></button></a>\n");
      out.write("                    <button id=\"testbtn\" type=\"submit\" name=\"testbtn\">테스트버튼</button>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("   </form>\n");
      out.write("    <!-- 결제 모달 끝-->\n");
      out.write("\n");
      out.write("    <!-- 메인 페이지 끝 -->\n");
      out.write("\n");
      out.write("<!-- 선호태그 모달 시작-->\n");
      out.write("<form action=\"updatelikeTag\" id=\"updatelikeTag\" >\n");
      out.write("  <div class=\"modal fade popup\" id=\"popup_bid3\" tabindex=\"-1\" role=\"dialog\" aria-hidden=\"true\">\n");
      out.write("    <div class=\"modal-dialog modal-dialog-centered\" role=\"document\">\n");
      out.write("        <div class=\"modal-content\">\n");
      out.write("            <button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-label=\"Close\">\n");
      out.write("                <span aria-hidden=\"true\">&times;</span>\n");
      out.write("            </button>\n");
      out.write("            <div class=\"modal-body pd-40\" id=\"likeTagMargin\">\n");
      out.write("                <h3 style=\"margin-bottom: 30px;\">나의 관심 주제</h3>\n");
      out.write("                <input id=\"mId\" type=\"hidden\" name=\"mId\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${sessionScope.loginId}", java.lang.String.class, (jakarta.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("\">\n");
      out.write("\n");
      out.write("                \n");
      out.write("                <label class=\"box-check-input\"><input type=\"checkbox\" class=\"likeTag\" name=\"mTag\" value=\"취업\"><span><img src=\"../assets/images/likeTag/취업.png\">취업</span></label>\n");
      out.write("                <label class=\"box-check-input\"><input type=\"checkbox\" class=\"likeTag\" name=\"mTag\" value=\"독서\"><span><img src=\"../assets/images/likeTag/독서.png\">독서</span></label>\n");
      out.write("                <label class=\"box-check-input\"><input type=\"checkbox\" class=\"likeTag\" name=\"mTag\" value=\"어학\" ><span><img src=\"../assets/images/likeTag/어학.png\">어학</span></label>\n");
      out.write("                <label class=\"box-check-input\"><input type=\"checkbox\" class=\"likeTag\" name=\"mTag\" value=\"임용\"><span><img src=\"../assets/images/likeTag/임용.png\">임용</span></label>\n");
      out.write("                <label class=\"box-check-input\"><input type=\"checkbox\" class=\"likeTag\" name=\"mTag\" value=\"공무원\"><span><img src=\"../assets/images/likeTag/공무원.png\">공무원</span></label>\n");
      out.write("                <label class=\"box-check-input\"><input type=\"checkbox\" class=\"likeTag\" name=\"mTag\" value=\"대학수능\"><span><img src=\"../assets/images/likeTag/대학수능.png\">대학수능</span></label>\n");
      out.write("                <label class=\"box-check-input\"><input type=\"checkbox\" class=\"likeTag\" name=\"mTag\" value=\"자격증\"><span><img src=\"../assets/images/likeTag/자격증.png\">자격증</span></label>\n");
      out.write("                <label class=\"box-check-input\"><input type=\"checkbox\" class=\"likeTag\" name=\"mTag\" value=\"학교공부\"><span><img src=\"../assets/images/likeTag/학교공부.png\">학교공부</span></label>\n");
      out.write("                <label class=\"box-check-input\"><input type=\"checkbox\" class=\"likeTag\" name=\"mTag\" value=\"기타\" ><span><img src=\"../assets/images/likeTag/기타.png\">기타</span></label>\n");
      out.write("                <label class=\"box-check-input\"><input type=\"checkbox\" class=\"likeTag\" name=\"mTag\" value=\"코딩\"><span><img src=\"../assets/images/likeTag/코딩.png\">코딩</span></label>\n");
      out.write("                <label class=\"box-check-input\"><input type=\"checkbox\" class=\"likeTag\" name=\"mTag\" value=\"이직\"><span><img src=\"../assets/images/likeTag/이직.png\">이직</span></label>\n");
      out.write("                <label class=\"box-check-input\"><input type=\"checkbox\" class=\"likeTag\" name=\"mTag\" value=\"자기계발\"><span><img src=\"../assets/images/likeTag/자기계발.png\">자기계발</span></label>\n");
      out.write("                \n");
      out.write("                <button id=\"likeTag\" style=\"margin-left: 136px; margin-top: 15px;\">선택 완료</button>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("</div>\n");
      out.write("</form>\n");
      out.write("<!--선호태그 모달 끝-->\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "../include/footer.jsp", out, false);
      out.write(" <!-- footer include -->\n");
      out.write("      <!-- /#page -->\n");
      out.write("    <!-- /#wrapper -->\n");
      out.write("    \n");
      out.write("    <a id=\"scroll-top\"></a>\n");
      out.write("\n");
      out.write("    <!-- 페이 api -->\n");
      out.write("    <script type=\"text/javascript\" src=\"https://cdn.iamport.kr/js/iamport.payment-1.2.0.js\"></script>\n");
      out.write("\n");
      out.write("    <!-- 여기 js -->\n");
      out.write("    <script src=\"../assets/js/ticket.js\"></script>\n");
      out.write("    <script src=\"../assets/js/likeTag.js\"></script>\n");
      out.write("    <!-- script end -->\n");
      out.write("  </body>\n");
      out.write("</html>\n");
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
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_005fforEach_005f0 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _005fjspx_005ftagPool_005fc_005fforEach_0026_005fvarStatus_005fvar_005fitems.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    boolean _jspx_th_c_005fforEach_005f0_reused = false;
    try {
      _jspx_th_c_005fforEach_005f0.setPageContext(_jspx_page_context);
      _jspx_th_c_005fforEach_005f0.setParent(null);
      // /WEB-INF/views/shop/ticket.jsp(79,20) name = var type = java.lang.String reqTime = false required = false fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
      _jspx_th_c_005fforEach_005f0.setVar("list");
      // /WEB-INF/views/shop/ticket.jsp(79,20) name = items type = jakarta.el.ValueExpression reqTime = true required = false fragment = false deferredValue = true expectedTypeName = java.lang.Object deferredMethod = false methodSignature = null
      _jspx_th_c_005fforEach_005f0.setItems(new org.apache.jasper.el.JspValueExpression("/WEB-INF/views/shop/ticket.jsp(79,20) '${list}'",_jsp_getExpressionFactory().createValueExpression(_jspx_page_context.getELContext(),"${list}",java.lang.Object.class)).getValue(_jspx_page_context.getELContext()));
      // /WEB-INF/views/shop/ticket.jsp(79,20) name = varStatus type = java.lang.String reqTime = false required = false fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
      _jspx_th_c_005fforEach_005f0.setVarStatus("status");
      int[] _jspx_push_body_count_c_005fforEach_005f0 = new int[] { 0 };
      try {
        int _jspx_eval_c_005fforEach_005f0 = _jspx_th_c_005fforEach_005f0.doStartTag();
        if (_jspx_eval_c_005fforEach_005f0 != jakarta.servlet.jsp.tagext.Tag.SKIP_BODY) {
          do {
            out.write("\n");
            out.write("                            <div class=\"swiper-slide\">\n");
            out.write("                              <div class=\"slider-item\">\n");
            out.write("                                <div class=\"sc-card-collection\">\n");
            out.write("                                    <div class=\"media-images-box\">\n");
            out.write("                                      <img src=\"../assets/images/box-item/");
            out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${list.tClass}", java.lang.String.class, (jakarta.servlet.jsp.PageContext)_jspx_page_context, null));
            out.write(".png\" alt=\"\" />\n");
            out.write("                                      <div class=\"bottom-media\">\n");
            out.write("                                      </div>\n");
            out.write("                                    </div>\n");
            out.write("                                  </a>\n");
            out.write("                                  <div class=\"card-bottom\">\n");
            out.write("                                    <div class=\"author\">\n");
            out.write("                                      <div class=\"sc-author-box style-2\">\n");
            out.write("                                        <div class=\"author-avatar\">\n");
            out.write("                                        </div>\n");
            out.write("                                      </div>\n");
            out.write("                                      <div class=\"content\" style=\"width: 205px;\">\n");
            out.write("                                        <h4 class=\"ticketName\">");
            out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${list.tClass}", java.lang.String.class, (jakarta.servlet.jsp.PageContext)_jspx_page_context, null));
            out.write("</h4>\n");
            out.write("                                        <br/>\n");
            out.write("                                       <div class=\"infor\">\n");
            out.write("                                          <span class=\"name\">");
            out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${list.tContext}", java.lang.String.class, (jakarta.servlet.jsp.PageContext)_jspx_page_context, null));
            out.write("</span>\n");
            out.write("                                        </div>\n");
            out.write("                                      </div>\n");
            out.write("                                    </div>\n");
            out.write("                                    <!-- <button class=\"sc-button style bag fl-button pri-3\" style=\"margin-top: auto;\">\n");
            out.write("                                      <span>구매하기</span>\n");
            out.write("                                    </button> -->\n");
            out.write("                                    <!-- 위에거 쓸라다가 다크모드 호환 안 돼서 바꿈-->\n");
            out.write("                                    <!-- style=\"position: relative;left: 44px;top: 15px;\" -->\n");
            out.write("                                    <div style=\"position: relative;left: 16px;top: 10px;\"><h3 class=\"ticketPrice\" style=\"display: inline;left: 45px;position: relative;\"> ");
            out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${list.tPrice}", java.lang.String.class, (jakarta.servlet.jsp.PageContext)_jspx_page_context, null));
            out.write("</h3><h3 style=\"display: inline;position: relative;left: 50px;\">원</h3>\n");
            out.write("                                    <a name=\"ticketBuy\" href=\"#\" data-toggle=\"modal\" data-target=\"#popup_bid\" class=\"sc-button style bag fl-button pri-3\" style=\"position: relative; top: 23px;left: 8px;\"><span>구매하기</span></a>\n");
            out.write("                                  </div>\n");
            out.write("                                </div>\n");
            out.write("                                </div>\n");
            out.write("                              </div>\n");
            out.write("                            </div>\n");
            out.write("                          ");
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
      _005fjspx_005ftagPool_005fc_005fforEach_0026_005fvarStatus_005fvar_005fitems.reuse(_jspx_th_c_005fforEach_005f0);
      _jspx_th_c_005fforEach_005f0_reused = true;
    } finally {
      org.apache.jasper.runtime.JspRuntimeLibrary.releaseTag(_jspx_th_c_005fforEach_005f0, _jsp_getInstanceManager(), _jspx_th_c_005fforEach_005f0_reused);
    }
    return false;
  }
}
