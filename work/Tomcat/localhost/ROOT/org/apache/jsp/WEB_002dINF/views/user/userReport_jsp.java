/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/10.1.4
 * Generated at: 2023-01-31 02:52:09 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.views.user;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.jsp.*;

public final class userReport_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!-- 한글 깨짐 방지-->\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<head>\r\n");
      out.write("    ");
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
      out.write("    <link rel=\"stylesheet\" type=\"text/css\" href=\"../assets/css/style.css\">\r\n");
      out.write("    <link rel=\"stylesheet\" type=\"text/css\" href=\"../assets/css/likeTag.css\">\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("    <!-- Favicon and Touch Icons  -->\r\n");
      out.write("    <link rel=\"shortcut icon\" href=\"../assets/icon/Favicon.png\">\r\n");
      out.write("    <link rel=\"apple-touch-icon-precomposed\" href=\"../assets/icon/Favicon.png\">\r\n");
      out.write("\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<body class=\"body header-fixed is_dark connect-wal\">\r\n");
      out.write("\r\n");
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
      out.write("                                <h1 class=\"heading text-center\">신고</h1>\r\n");
      out.write("                            </div>\r\n");
      out.write("                            <div class=\"breadcrumbs style2\">\r\n");
      out.write("                                <ul>\r\n");
      out.write("                                  <li><a href=\"\">마이페이지</a></li>\r\n");
      out.write("                                  <li>신고</li>\r\n");
      out.write("                                </ul>\r\n");
      out.write("                              </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>                    \r\n");
      out.write("            </section>\r\n");
      out.write("\r\n");
      out.write("            <div class=\"tf-create-item tf-section\">\r\n");
      out.write("                <div class=\"themesflat-container\">\r\n");
      out.write("                   \r\n");
      out.write("                         <div class=\"col-xl-12 col-lg-12 col-md-12 col-12\">\r\n");
      out.write("                             <div class=\"form-create-item\">\r\n");
      out.write("                                <div class=\"flat-tabs tab-create-item\">\r\n");
      out.write("                                    <div class=\"content-tab\">\r\n");
      out.write("                                        <div class=\"content-inner\">\r\n");
      out.write("                                                <form id=\"insertReport\" action=\"insertReport\" enctype=\"multipart/form-data\" method=\"post\">\r\n");
      out.write("                                                    <h2 class=\"title-create-item\">신고 접수하기</h2><br/><br/>\r\n");
      out.write("                                                        \r\n");
      out.write("                                                    <!-- <input type=\"hidden\" id=\"mId\" name=\"mId\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${sessionScope.loginId}", java.lang.String.class, (jakarta.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("\"> -->\r\n");
      out.write("                                                    <h4 class=\"title-create-item\">제목</h4>\r\n");
      out.write("                                                    <input type=\"text\" placeholder=\"제목을 입력 해 주세요\" name=\"rTitle\" id=\"rTitle\">\r\n");
      out.write("\r\n");
      out.write("                                                    <h4 class=\"title-create-item\">파일 첨부</h4>\r\n");
      out.write("                                                    <label class=\"uploadFile\">\r\n");
      out.write("                                                        <span class=\"filename\">PNG, JPG, GIF, WEBP 또는 MP4. 최대 50mb.</span>\r\n");
      out.write("                                                        <input type=\"file\" multiple=\"multiple\" class=\"inputfile\" name=\"file\" id=\"rFile\">\r\n");
      out.write("                                                    </label>\r\n");
      out.write("\r\n");
      out.write("                                                    \r\n");
      out.write("                                                    <div style=\"display : inline-block; text-align: left;\">\r\n");
      out.write("                                                    <h4 class=\"title-create-item\">분류</h4>\r\n");
      out.write("                                                        <div class=\"inner-row-form style-2\">\r\n");
      out.write("                                                            <div class=\"seclect-box\">\r\n");
      out.write("                                                                <div id=\"item-create\" class=\"dropdown\">\r\n");
      out.write("                                                                    <a href=\"#\" class=\"btn-selector nolink\" >선택</a>\r\n");
      out.write("                                                                    <input type=\"hidden\" name=\"rClass\" id=\"rClass\" value=\"\">\r\n");
      out.write("                                                                    <ul class=\"cate\">\r\n");
      out.write("                                                                        <li><span>비속어 사용</span></li>\r\n");
      out.write("                                                                        <li><span>음란 행위</span></li>\r\n");
      out.write("                                                                        <li><span>분위기 망침</span></li>\r\n");
      out.write("                                                                        <li><span>기타</span></li>\r\n");
      out.write("                                                                    </ul>\r\n");
      out.write("                                                                </div>\r\n");
      out.write("                                                            </div>\r\n");
      out.write("                                                        </div><br/><br/>\r\n");
      out.write("                                                    </div><!-- 올라가는거 막기 =>> --><div style=\"clear:both\"></div>\r\n");
      out.write("                                                    \r\n");
      out.write("                                                    \r\n");
      out.write("                                                        <div style=\"float: left; width: 48%;\">\r\n");
      out.write("                                                            <h4 class=\"title-create-item\">작성자 아이디</h4>\r\n");
      out.write("                                                            <input type=\"text\" name=\"mId\" id=\"mId\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${sessionScope.loginId}", java.lang.String.class, (jakarta.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("\" readonly>\r\n");
      out.write("                                                        </div>\r\n");
      out.write("                                                        <div style=\"float: right; width: 48%;\">\r\n");
      out.write("                                                            <h4 class=\"title-create-item\">신고할 아이디</h4>\r\n");
      out.write("                                                            <input type=\"text\" name=\"rOpponent\" id=\"rOpponent\">\r\n");
      out.write("                                                        </div><div style=\"clear:both\"></div>\r\n");
      out.write("                                                    \r\n");
      out.write("\r\n");
      out.write("                                                    <div><h4 class=\"title-create-item\">신고 내용</h4>\r\n");
      out.write("                                                    <textarea placeholder=\"신고 내용을 적어주세요!\" name=\"rReason\" style=\"height: 240px;\" id=\"rReason\"></textarea></div>\r\n");
      out.write("                                                    \r\n");
      out.write("                                                    \r\n");
      out.write("                                                    <button class=\"tf-button-submit mg-t-15 insertReport\" type=\"button\" >\r\n");
      out.write("                                                        신고 등록\r\n");
      out.write("                                                    </button>  <div style=\"clear:both\">\r\n");
      out.write("                                                      \r\n");
      out.write("                                                    </div>\r\n");
      out.write("                                                </form>\r\n");
      out.write("                                                \r\n");
      out.write("                                        </div>\r\n");
      out.write("                                        \r\n");
      out.write("                                        \r\n");
      out.write("                                    </div>\r\n");
      out.write("                                </div>\r\n");
      out.write("                             </div>\r\n");
      out.write("                         </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("\r\n");
      out.write("<!-- 선호태그 모달 시작-->\r\n");
      out.write("<form action=\"updatelikeTag\" id=\"updatelikeTag\" >\r\n");
      out.write("    <div class=\"modal fade popup\" id=\"popup_bid3\" tabindex=\"-1\" role=\"dialog\" aria-hidden=\"true\">\r\n");
      out.write("      <div class=\"modal-dialog modal-dialog-centered\" role=\"document\">\r\n");
      out.write("          <div class=\"modal-content\">\r\n");
      out.write("              <button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-label=\"Close\">\r\n");
      out.write("                  <span aria-hidden=\"true\">&times;</span>\r\n");
      out.write("              </button>\r\n");
      out.write("              <div class=\"modal-body pd-40\" id=\"likeTagMargin\">\r\n");
      out.write("                  <h3 style=\"margin-bottom: 30px;\">나의 관심 주제</h3>\r\n");
      out.write("                  <input id=\"mId\" type=\"hidden\" name=\"mId\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${sessionScope.loginId}", java.lang.String.class, (jakarta.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("\">\r\n");
      out.write("  \r\n");
      out.write("                  \r\n");
      out.write("                  <label class=\"box-check-input\"><input type=\"checkbox\" class=\"likeTag\" name=\"mTag\" value=\"취업\"><span><img src=\"../assets/images/likeTag/취업.png\">취업</span></label>\r\n");
      out.write("                  <label class=\"box-check-input\"><input type=\"checkbox\" class=\"likeTag\" name=\"mTag\" value=\"독서\"><span><img src=\"../assets/images/likeTag/독서.png\">독서</span></label>\r\n");
      out.write("                  <label class=\"box-check-input\"><input type=\"checkbox\" class=\"likeTag\" name=\"mTag\" value=\"어학\" ><span><img src=\"../assets/images/likeTag/어학.png\">어학</span></label>\r\n");
      out.write("                  <label class=\"box-check-input\"><input type=\"checkbox\" class=\"likeTag\" name=\"mTag\" value=\"임용\"><span><img src=\"../assets/images/likeTag/임용.png\">임용</span></label>\r\n");
      out.write("                  <label class=\"box-check-input\"><input type=\"checkbox\" class=\"likeTag\" name=\"mTag\" value=\"공무원\"><span><img src=\"../assets/images/likeTag/공무원.png\">공무원</span></label>\r\n");
      out.write("                  <label class=\"box-check-input\"><input type=\"checkbox\" class=\"likeTag\" name=\"mTag\" value=\"대학수능\"><span><img src=\"../assets/images/likeTag/대학수능.png\">대학수능</span></label>\r\n");
      out.write("                  <label class=\"box-check-input\"><input type=\"checkbox\" class=\"likeTag\" name=\"mTag\" value=\"자격증\"><span><img src=\"../assets/images/likeTag/자격증.png\">자격증</span></label>\r\n");
      out.write("                  <label class=\"box-check-input\"><input type=\"checkbox\" class=\"likeTag\" name=\"mTag\" value=\"학교공부\"><span><img src=\"../assets/images/likeTag/학교공부.png\">학교공부</span></label>\r\n");
      out.write("                  <label class=\"box-check-input\"><input type=\"checkbox\" class=\"likeTag\" name=\"mTag\" value=\"기타\" ><span><img src=\"../assets/images/likeTag/기타.png\">기타</span></label>\r\n");
      out.write("                  <label class=\"box-check-input\"><input type=\"checkbox\" class=\"likeTag\" name=\"mTag\" value=\"코딩\"><span><img src=\"../assets/images/likeTag/코딩.png\">코딩</span></label>\r\n");
      out.write("                  <label class=\"box-check-input\"><input type=\"checkbox\" class=\"likeTag\" name=\"mTag\" value=\"이직\"><span><img src=\"../assets/images/likeTag/이직.png\">이직</span></label>\r\n");
      out.write("                  <label class=\"box-check-input\"><input type=\"checkbox\" class=\"likeTag\" name=\"mTag\" value=\"자기계발\"><span><img src=\"../assets/images/likeTag/자기계발.png\">자기계발</span></label>\r\n");
      out.write("                  \r\n");
      out.write("                  <button id=\"likeTag\" style=\"margin-left: 136px; margin-top: 15px;\">선택 완료</button>\r\n");
      out.write("              </div>\r\n");
      out.write("          </div>\r\n");
      out.write("      </div>\r\n");
      out.write("  </div>\r\n");
      out.write("  </form>\r\n");
      out.write("  <!--선호태그 모달 끝-->\r\n");
      out.write("  \r\n");
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
      out.write("<!-- Footer 넣음-->\r\n");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "../include/footer.jsp", out, false);
      out.write("\r\n");
      out.write("        <!-- Bottom -->\r\n");
      out.write("        </div>\r\n");
      out.write("        <!-- /#page -->\r\n");
      out.write("         \r\n");
      out.write("    <!-- /#wrapper -->\r\n");
      out.write("\r\n");
      out.write("    <a id=\"scroll-top\"></a>\r\n");
      out.write("    <script src=\"../assets/js/likeTag.js\"></script>\r\n");
      out.write("\r\n");
      out.write("    <script>\r\n");
      out.write("        //분류 설정해주기\r\n");
      out.write("        $('.cate > li').click(function(){\r\n");
      out.write("            var is = $(this).text();\r\n");
      out.write("            $('#rClass').val(is);\r\n");
      out.write("\r\n");
      out.write("        });\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("        // 알럿창 스윗알럿\r\n");
      out.write("        $('.insertReport').click(function(){\r\n");
      out.write("            \r\n");
      out.write("            Swal.fire({\r\n");
      out.write("                icon: 'warning',\r\n");
      out.write("                title: '정말 신고하시겠습니까?',\r\n");
      out.write("                text: '신고하시면 취소가 불가하며, 허위 신고시 제재를 받을 수 있습니다.',\r\n");
      out.write("\r\n");
      out.write("                showCancelButton: true, // cancel버튼 보이기. 기본은 원래 없음\r\n");
      out.write("                confirmButtonColor: '#3085d6', // confrim 버튼 색깔 지정\r\n");
      out.write("                cancelButtonColor: '#d33', // cancel 버튼 색깔 지정\r\n");
      out.write("                confirmButtonText: '확인', // confirm 버튼 텍스트 지정\r\n");
      out.write("                cancelButtonText: '취소', // cancel 버튼 텍스트 지정\r\n");
      out.write("                \r\n");
      out.write("                reverseButtons: false, // 버튼 순서 거꾸로\r\n");
      out.write("\r\n");
      out.write("            }).then(result => {\r\n");
      out.write("                if(result.isConfirmed){\r\n");
      out.write("                    Swal.fire('신고가 완료되었습니다.', '', 'success')\r\n");
      out.write("                    $('.swal2-confirm').click(function(){\r\n");
      out.write("                        $('#insertReport').submit();\r\n");
      out.write("                    })\r\n");
      out.write("                }else if(result.isDismissed){\r\n");
      out.write("                    Swal.fire('취소하였습니다.', '', 'error')\r\n");
      out.write("                }\r\n");
      out.write("            })\r\n");
      out.write("            \r\n");
      out.write("        });\r\n");
      out.write("\r\n");
      out.write("    </script>\r\n");
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
