/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.47
 * Generated at: 2022-05-16 20:25:09 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private org.apache.jasper.runtime.TagHandlerPool _005fjspx_005ftagPool_005fc_005fforEach_0026_005fvar_005fitems_005fend_005fbegin;

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _005fjspx_005ftagPool_005fc_005fforEach_0026_005fvar_005fitems_005fend_005fbegin = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
  }

  public void _jspDestroy() {
    _005fjspx_005ftagPool_005fc_005fforEach_0026_005fvar_005fitems_005fend_005fbegin.release();
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write('\r');
      out.write('\n');
      out.write("\r\n");
      out.write("\r\n");
      out.write("<html lang=\"zh-CN\">\r\n");
      out.write("<head>\r\n");
      out.write("    <meta charset=\"UTF-8\">\r\n");
      out.write("    <title>叮当电影 - 搜罗全网好电影</title>\r\n");
      out.write("    <link rel=\"shortcut icon\" type=\"image/x-icon\" href=\"favicon.ico\">\r\n");
      out.write("    <link rel=\"stylesheet\" type=\"text/css\" href=\"./css/index.css\">\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("<header class=\"header\">\r\n");
      out.write("    <div class=\"container\">\r\n");
      out.write("        <!--logo-->\r\n");
      out.write("        <a href=\"index.jsp\" class=\"logo\"></a>\r\n");
      out.write("        <!--导航标签-->\r\n");
      out.write("        <div class=\"nav\">\r\n");
      out.write("            <ul class=\"navbar\">\r\n");
      out.write("                <li><a href=\"index.jsp\" class=\"active\">首页</a></li>\r\n");
      out.write("                <li><a href=\"movie.jsp\">购票</a></li>\r\n");
      out.write("                <li><a href=\"javascript:;\">影院</a></li>\r\n");
      out.write("                <li><a href=\"javascript:;\">社区</a></li>\r\n");
      out.write("            </ul>\r\n");
      out.write("        </div>\r\n");
      out.write("        <!--购物车-->\r\n");
      out.write("        <div class=\"headcart\">\r\n");
      out.write("            <i class=\"cart-icon\"></i>\r\n");
      out.write("            <b class=\"card-num\"></b>\r\n");
      out.write("            <div class=\"card-tip\"></div>\r\n");
      out.write("        </div>\r\n");
      out.write("        <!--用户登陆注册-->\r\n");
      out.write("        <div class=\"user\">\r\n");
      out.write("            <div class=\"userout\">\r\n");
      out.write("                <a href=\"login.jsp\" class=\"login cur\">登录</a>\r\n");
      out.write("                <a href=\"register.jsp\" class=\"register cur\">注册</a>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"userin\">\r\n");
      out.write("                <a href=\"javascript:;\" class=\"menu-item-user\">\r\n");
      out.write("                    <img class=\"user-face\" src=\"./imgs/userface.jpg\" alt=\"userface\">\r\n");
      out.write("                    <span class=\"user-name\"></span>\r\n");
      out.write("                </a>\r\n");
      out.write("                <span class=\"caret\"></span>\r\n");
      out.write("                <ul class=\"dropdown-menu\">\r\n");
      out.write("                    <li><a href=\"javascript:;\">个人中心</a></li>\r\n");
      out.write("                    <li><a href=\"javascript:;\">退出登录</a></li>\r\n");
      out.write("                </ul>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("        <!--搜索栏-->\r\n");
      out.write("        <div class=\"search\">\r\n");
      out.write("            <form class=\"form-search\" action=\"\" method=\"\">\r\n");
      out.write("                <input type=\"text\" id=\"search-input\" class=\"form-search-input\" placeholder=\"搜电影、影院\" autocomplete=\"off\"/>\r\n");
      out.write("                <a class=\"form-search-icon\" href=\"javascript:;\" onclick=\"searchBtnClick(this,event)\"></a>\r\n");
      out.write("            </form>\r\n");
      out.write("        </div>\r\n");
      out.write("\r\n");
      out.write("        <!--APP下载-->\r\n");
      out.write("        <div class=\"app-download\">\r\n");
      out.write("            <span class=\"phone-icon\"></span>\r\n");
      out.write("            <span class=\"app-text\">下载APP</span>\r\n");
      out.write("            <span class=\"caret\"></span>\r\n");
      out.write("            <div class=\"qrcode-tip\">\r\n");
      out.write("                <img class=\"qrcode-img\" src=\"imgs/dingdang-qrcode.png\" alt=\"扫描二维码下载APP\"/>\r\n");
      out.write("                <p class=\"qrcode-tip-title\">扫码下载客户端</p>\r\n");
      out.write("                <p class=\"qrcode-tip-content\">手机购票 方便实惠</p>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("</header>\r\n");
      out.write("\r\n");
      out.write("<div class=\"container\">\r\n");
      out.write("    <div class=\"slidey\">\r\n");
      out.write("        <ul id=\"slidey-content\" style=\"display: none\">\r\n");
      out.write("            <li>\r\n");
      out.write("                <img src=\"imgs/slideposter/Frozen2.jpg\" alt=\"\">\r\n");
      out.write("                <p class=\"title\">冰雪奇缘2</p>\r\n");
      out.write("                <p class=\"description\">为什么艾莎一出生就带着控制冰雪的能力？这个答案一致困扰着她，也威胁着王国的安全。 她将和安娜、克斯托夫、雪宝和驯鹿斯文展开一场危险但非凡的旅程…</p>\r\n");
      out.write("            </li>\r\n");
      out.write("            <li>\r\n");
      out.write("                <img src=\"imgs/slideposter/ifseawave.jpg\" alt=\"\">\r\n");
      out.write("                <p class=\"title\">若能与你共乘海浪之上</p>\r\n");
      out.write("                <p class=\"description\">青年消防员雏罂粟港和爱好冲浪的向水日菜子相遇并迅速展开热恋。看似命中注定的这对恋人，\r\n");
      out.write("                    却不幸遭遇生死别离。无法接受港已经离世的雏子，某天突然发现，只要唱起属于两个人的那首歌，港就会从水中出现…</p>\r\n");
      out.write("            </li>\r\n");
      out.write("            <li>\r\n");
      out.write("                <img src=\"imgs/slideposter/skyfire.jpg\" alt=\"\">\r\n");
      out.write("                <p class=\"title\">天·火</p>\r\n");
      out.write("                <p class=\"description\">火山喷发了，这些人的命运纠结在一起。为了看见明天的太阳，他们必须与过去和解， 合力为自己也为众生在绝境中寻找一条生路。\r\n");
      out.write("                    这是一个关于爱与勇气、选择与放弃、自救与他救的中国式英雄的故事…</p>\r\n");
      out.write("            </li>\r\n");
      out.write("            <li>\r\n");
      out.write("                <img src=\"imgs/slideposter/yewen4.jpg\" alt=\"\">\r\n");
      out.write("                <p class=\"title\">叶问4</p>\r\n");
      out.write("                <p class=\"description\">因故来到美国唐人街的叶问，意外卷入一场当地军方势力与华人武馆的纠纷，面对日益猖狂的\r\n");
      out.write("                    民族歧视与压迫，叶问挺身而出，在美国海军陆战队军营拼死一战，以正宗咏春，向世界证明了中国功夫…</p>\r\n");
      out.write("            </li>\r\n");
      out.write("        </ul>\r\n");
      out.write("        <div class=\"slidey-main\">\r\n");
      out.write("            <a href=\"movie.jsp\" class=\"slidey-main-link\"></a>\r\n");
      out.write("            <div class=\"slidey-overlay\">\r\n");
      out.write("                <p class=\"slidey-overlay-title\"></p>\r\n");
      out.write("                <p class=\"slidey-overlay-description\"></p>\r\n");
      out.write("                <span class=\"slidey-progress\"></span>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"slidey-ctrls slidey-ctrls-pre\"></div>\r\n");
      out.write("            <div class=\"slidey-ctrls slidey-ctrls-next\"></div>\r\n");
      out.write("        </div>\r\n");
      out.write("        <div class=\"slidey-list\">\r\n");
      out.write("            <ul>\r\n");
      out.write("                <li>\r\n");
      out.write("                    <table class=\"slidey-list-table\">\r\n");
      out.write("                        <tr>\r\n");
      out.write("                            <td rowspan=\"2\" class=\"slidey-list-img\">\r\n");
      out.write("                                <div></div>\r\n");
      out.write("                            </td>\r\n");
      out.write("                            <td class=\"slidey-list-title\"></td>\r\n");
      out.write("                        </tr>\r\n");
      out.write("                        <tr>\r\n");
      out.write("                            <td class=\"slidey-list-description\"></td>\r\n");
      out.write("                        </tr>\r\n");
      out.write("                    </table>\r\n");
      out.write("                </li>\r\n");
      out.write("                <li>\r\n");
      out.write("                    <table class=\"slidey-list-table\">\r\n");
      out.write("                        <tr>\r\n");
      out.write("                            <td rowspan=\"2\" class=\"slidey-list-img\">\r\n");
      out.write("                                <div></div>\r\n");
      out.write("                            </td>\r\n");
      out.write("                            <td class=\"slidey-list-title\"></td>\r\n");
      out.write("                        </tr>\r\n");
      out.write("                        <tr>\r\n");
      out.write("                            <td class=\"slidey-list-description\"></td>\r\n");
      out.write("                        </tr>\r\n");
      out.write("                    </table>\r\n");
      out.write("                </li>\r\n");
      out.write("                <li>\r\n");
      out.write("                    <table class=\"slidey-list-table\">\r\n");
      out.write("                        <tr>\r\n");
      out.write("                            <td rowspan=\"2\" class=\"slidey-list-img\">\r\n");
      out.write("                                <div></div>\r\n");
      out.write("                            </td>\r\n");
      out.write("                            <td class=\"slidey-list-title\"></td>\r\n");
      out.write("                        </tr>\r\n");
      out.write("                        <tr>\r\n");
      out.write("                            <td class=\"slidey-list-description\"></td>\r\n");
      out.write("                        </tr>\r\n");
      out.write("                    </table>\r\n");
      out.write("                </li>\r\n");
      out.write("                <li>\r\n");
      out.write("                    <table class=\"slidey-list-table\">\r\n");
      out.write("                        <tr>\r\n");
      out.write("                            <td rowspan=\"2\" class=\"slidey-list-img\">\r\n");
      out.write("                                <div></div>\r\n");
      out.write("                            </td>\r\n");
      out.write("                            <td class=\"slidey-list-title\"></td>\r\n");
      out.write("                        </tr>\r\n");
      out.write("                        <tr>\r\n");
      out.write("                            <td class=\"slidey-list-description\"></td>\r\n");
      out.write("                        </tr>\r\n");
      out.write("                    </table>\r\n");
      out.write("                </li>\r\n");
      out.write("            </ul>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("\r\n");
      out.write("    <div class=\"movie-grid\">\r\n");
      out.write("        <div class=\"panel\">\r\n");
      out.write("            <div class=\"main\">\r\n");
      out.write("                <div class=\"panel-header\">\r\n");
      out.write("                    <span class=\"panel-title\">正在热映（<span>20</span>部）</span>\r\n");
      out.write("                    <a href=\"javascript:;\" class=\"panel-more\">更多</a>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"movie-list\">\r\n");
      out.write("                    <ul>\r\n");
      out.write("                        <!--\r\n");
      out.write("                        <li>\r\n");
      out.write("                            <a href=\"movie.jsp\" class=\"movie-poster\">\r\n");
      out.write("                                <img src=\"./imgs/poster/bingxueqiyuan2.jpg\" alt=\"\" class=\"poster\">\r\n");
      out.write("                                <span class=\"movie-score\">8.0</span>\r\n");
      out.write("                            </a>\r\n");
      out.write("                            <span class=\"movie-title\">冰雪奇缘2</span>\r\n");
      out.write("                            <a href=\"movie.jsp\" class=\"movie-ticket-buy\">选座购票</a>\r\n");
      out.write("                        </li>\r\n");
      out.write("                        -->\r\n");
      out.write("                        ");
      if (_jspx_meth_c_005fforEach_005f0(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("                    </ul>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"aside\">\r\n");
      out.write("                <div class=\"panel-header\">\r\n");
      out.write("                    <span class=\"panel-title\">今日票房</span>\r\n");
      out.write("                    <a href=\"javascript:;\" class=\"panel-more\">更多</a>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"movie-rank\">\r\n");
      out.write("                    <ul>\r\n");
      out.write("                        <li class=\"movie-rank-top1\">\r\n");
      out.write("                            <a href=\"javascript:;\">\r\n");
      out.write("                                <span class=\"movie-rank-num movie-rank-top3\">1</span>\r\n");
      out.write("                                <img src=\"./imgs/poster/haishanggangqinshi.jpg\" alt=\"\">\r\n");
      out.write("                                <div>\r\n");
      out.write("                                    <p class=\"movie-rank-name\">海上钢琴师</p>\r\n");
      out.write("                                    <span class=\"box-office\">1500万</span>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </a>\r\n");
      out.write("                        </li>\r\n");
      out.write("                        <li>\r\n");
      out.write("                            <a href=\"javascript:;\">\r\n");
      out.write("                                <span class=\"movie-rank-num movie-rank-top3\">2</span>\r\n");
      out.write("                                <p class=\"movie-rank-name\">叶问4</p>\r\n");
      out.write("                                <span class=\"box-office\">1400万</span>\r\n");
      out.write("                            </a>\r\n");
      out.write("                        </li>\r\n");
      out.write("                        <li>\r\n");
      out.write("                            <a href=\"javascript:;\">\r\n");
      out.write("                                <span class=\"movie-rank-num movie-rank-top3\">3</span>\r\n");
      out.write("                                <p class=\"movie-rank-name\">若能与你共乘海浪之上</p>\r\n");
      out.write("                                <span class=\"box-office\">1000万</span>\r\n");
      out.write("                            </a>\r\n");
      out.write("                        </li>\r\n");
      out.write("                        <li>\r\n");
      out.write("                            <a href=\"javascript:;\">\r\n");
      out.write("                                <span class=\"movie-rank-num\">4</span>\r\n");
      out.write("                                <p class=\"movie-rank-name\">吹哨人</p>\r\n");
      out.write("                                <span class=\"box-office\">900万</span>\r\n");
      out.write("                            </a>\r\n");
      out.write("                        </li>\r\n");
      out.write("                        <li>\r\n");
      out.write("                            <a href=\"javascript:;\">\r\n");
      out.write("                                <span class=\"movie-rank-num\">5</span>\r\n");
      out.write("                                <p class=\"movie-rank-name\">大约在冬季</p>\r\n");
      out.write("                                <span class=\"box-office\">800万</span>\r\n");
      out.write("                            </a>\r\n");
      out.write("                        </li>\r\n");
      out.write("                        <li>\r\n");
      out.write("                            <a href=\"javascript:;\">\r\n");
      out.write("                                <span class=\"movie-rank-num\">6</span>\r\n");
      out.write("                                <p class=\"movie-rank-name\">吹哨人</p>\r\n");
      out.write("                                <span class=\"box-office\">700万</span>\r\n");
      out.write("                            </a>\r\n");
      out.write("                        </li>\r\n");
      out.write("                        <li>\r\n");
      out.write("                            <a href=\"javascript:;\">\r\n");
      out.write("                                <span class=\"movie-rank-num\">7</span>\r\n");
      out.write("                                <p class=\"movie-rank-name\">天·火</p>\r\n");
      out.write("                                <span class=\"box-office\">600万</span>\r\n");
      out.write("                            </a>\r\n");
      out.write("                        </li>\r\n");
      out.write("                        <li>\r\n");
      out.write("                            <a href=\"javascript:;\">\r\n");
      out.write("                                <span class=\"movie-rank-num\">8</span>\r\n");
      out.write("                                <p class=\"movie-rank-name\">一生有你</p>\r\n");
      out.write("                                <span class=\"box-office\">550万</span>\r\n");
      out.write("                            </a>\r\n");
      out.write("                        </li>\r\n");
      out.write("                        <li>\r\n");
      out.write("                            <a href=\"javascript:;\">\r\n");
      out.write("                                <span class=\"movie-rank-num\">9</span>\r\n");
      out.write("                                <p class=\"movie-rank-name\">冰雪奇缘2</p>\r\n");
      out.write("                                <span class=\"box-office\">450万</span>\r\n");
      out.write("                            </a>\r\n");
      out.write("                        </li>\r\n");
      out.write("                    </ul>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("        <div class=\"panel\">\r\n");
      out.write("            <div class=\"main\">\r\n");
      out.write("                <div class=\"panel-header\">\r\n");
      out.write("                    <span class=\"panel-title\">即将上映（<span>30</span>部）</span>\r\n");
      out.write("                    <a href=\"javascript:;\" class=\"panel-more\">更多</a>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"movie-list\">\r\n");
      out.write("                    <ul>\r\n");
      out.write("                        <li>\r\n");
      out.write("                            <a href=\"javascript:;\" class=\"movie-poster\">\r\n");
      out.write("                                <img src=\"./imgs/poster/bingxueqiyuan2.jpg\" alt=\"\" class=\"poster\">\r\n");
      out.write("                                <span class=\"movie-score\">12月25日上映</span>\r\n");
      out.write("                            </a>\r\n");
      out.write("                            <span class=\"movie-title\">冰雪奇缘2</span>\r\n");
      out.write("                            <a href=\"javascript:;\" class=\"movie-ticket-buy\">预售</a>\r\n");
      out.write("                        </li>\r\n");
      out.write("                        <li>\r\n");
      out.write("                            <a href=\"javascript:;\" class=\"movie-poster\">\r\n");
      out.write("                                <img src=\"./imgs/poster/chuixiaoren.jpg\" alt=\"\" class=\"poster\">\r\n");
      out.write("                                <span class=\"movie-score\">12月25日上映</span>\r\n");
      out.write("                            </a>\r\n");
      out.write("                            <span class=\"movie-title\">吹哨人</span>\r\n");
      out.write("                            <a href=\"javascript:;\" class=\"movie-ticket-buy\">预售</a>\r\n");
      out.write("                        </li>\r\n");
      out.write("                        <li>\r\n");
      out.write("                            <a href=\"javascript:;\" class=\"movie-poster\">\r\n");
      out.write("                                <img src=\"./imgs/poster/dayuezaidongji.jpg\" alt=\"\" class=\"poster\">\r\n");
      out.write("                                <span class=\"movie-score\">12月26日上映</span>\r\n");
      out.write("                            </a>\r\n");
      out.write("                            <span class=\"movie-title\">大约在冬季</span>\r\n");
      out.write("                            <a href=\"javascript:;\" class=\"movie-ticket-buy\">预售</a>\r\n");
      out.write("                        </li>\r\n");
      out.write("                        <li>\r\n");
      out.write("                            <a href=\"javascript:;\" class=\"movie-poster\">\r\n");
      out.write("                                <img src=\"./imgs/poster/haishanggangqinshi.jpg\" alt=\"\" class=\"poster\">\r\n");
      out.write("                                <span class=\"movie-score\">12月26日上映</span>\r\n");
      out.write("                            </a>\r\n");
      out.write("                            <span class=\"movie-title\">海上钢琴师</span>\r\n");
      out.write("                            <a href=\"javascript:;\" class=\"movie-ticket-buy\">预售</a>\r\n");
      out.write("                        </li>\r\n");
      out.write("                        <li>\r\n");
      out.write("                            <a href=\"javascript:;\" class=\"movie-poster\">\r\n");
      out.write("                                <img src=\"./imgs/poster/ruonengyuni.jpg\" alt=\"\" class=\"poster\">\r\n");
      out.write("                                <span class=\"movie-score\">12月26日上映</span>\r\n");
      out.write("                            </a>\r\n");
      out.write("                            <span class=\"movie-title\">若能与你共乘海浪之上</span>\r\n");
      out.write("                            <a href=\"javascript:;\" class=\"movie-ticket-buy\">预售</a>\r\n");
      out.write("                        </li>\r\n");
      out.write("                        <li>\r\n");
      out.write("                            <a href=\"javascript:;\" class=\"movie-poster\">\r\n");
      out.write("                                <img src=\"./imgs/poster/tianhuo.jpg\" alt=\"\" class=\"poster\">\r\n");
      out.write("                                <span class=\"movie-score\">12月27日上映</span>\r\n");
      out.write("                            </a>\r\n");
      out.write("                            <span class=\"movie-title\">天·火</span>\r\n");
      out.write("                            <a href=\"javascript:;\" class=\"movie-ticket-buy\">预售</a>\r\n");
      out.write("                        </li>\r\n");
      out.write("                        <li>\r\n");
      out.write("                            <a href=\"javascript:;\" class=\"movie-poster\">\r\n");
      out.write("                                <img src=\"./imgs/poster/yewen4.jpg\" alt=\"\" class=\"poster\">\r\n");
      out.write("                                <span class=\"movie-score\">12月28日上映</span>\r\n");
      out.write("                            </a>\r\n");
      out.write("                            <span class=\"movie-title\">叶问4</span>\r\n");
      out.write("                            <a href=\"javascript:;\" class=\"movie-ticket-buy\">预售</a>\r\n");
      out.write("                        </li>\r\n");
      out.write("                        <li>\r\n");
      out.write("                            <a href=\"javascript:;\" class=\"movie-poster\">\r\n");
      out.write("                                <img src=\"./imgs/poster/yishengyouni.jpg\" alt=\"\" class=\"poster\">\r\n");
      out.write("                                <span class=\"movie-score\">12月28日上映</span>\r\n");
      out.write("                            </a>\r\n");
      out.write("                            <span class=\"movie-title\">一生有你</span>\r\n");
      out.write("                            <a href=\"javascript:;\" class=\"movie-ticket-buy\">预售</a>\r\n");
      out.write("                        </li>\r\n");
      out.write("                    </ul>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"aside\">\r\n");
      out.write("                <div class=\"panel-header\">\r\n");
      out.write("                    <span class=\"panel-title\">备受期待</span>\r\n");
      out.write("                    <a href=\"javascript:;\" class=\"panel-more\">更多</a>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"movie-rank\">\r\n");
      out.write("                    <ul>\r\n");
      out.write("                        <li class=\"movie-rank-top1\">\r\n");
      out.write("                            <a href=\"javascript:;\">\r\n");
      out.write("                                <span class=\"movie-rank-num movie-rank-top3\">1</span>\r\n");
      out.write("                                <img src=\"./imgs/poster/haishanggangqinshi.jpg\" alt=\"\">\r\n");
      out.write("                                <div>\r\n");
      out.write("                                    <p class=\"movie-rank-name\">海上钢琴师</p>\r\n");
      out.write("                                    <span class=\"box-office\">1500人想看</span>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </a>\r\n");
      out.write("                        </li>\r\n");
      out.write("                        <li>\r\n");
      out.write("                            <a href=\"javascript:;\">\r\n");
      out.write("                                <span class=\"movie-rank-num movie-rank-top3\">2</span>\r\n");
      out.write("                                <p class=\"movie-rank-name\">叶问4</p>\r\n");
      out.write("                                <span class=\"box-office\">1400人想看</span>\r\n");
      out.write("                            </a>\r\n");
      out.write("                        </li>\r\n");
      out.write("                        <li>\r\n");
      out.write("                            <a href=\"javascript:;\">\r\n");
      out.write("                                <span class=\"movie-rank-num movie-rank-top3\">3</span>\r\n");
      out.write("                                <p class=\"movie-rank-name\">若能与你共乘海浪之上</p>\r\n");
      out.write("                                <span class=\"box-office\">1000人想看</span>\r\n");
      out.write("                            </a>\r\n");
      out.write("                        </li>\r\n");
      out.write("                        <li>\r\n");
      out.write("                            <a href=\"javascript:;\">\r\n");
      out.write("                                <span class=\"movie-rank-num\">4</span>\r\n");
      out.write("                                <p class=\"movie-rank-name\">吹哨人</p>\r\n");
      out.write("                                <span class=\"box-office\">900人想看</span>\r\n");
      out.write("                            </a>\r\n");
      out.write("                        </li>\r\n");
      out.write("                        <li>\r\n");
      out.write("                            <a href=\"javascript:;\">\r\n");
      out.write("                                <span class=\"movie-rank-num\">5</span>\r\n");
      out.write("                                <p class=\"movie-rank-name\">大约在冬季</p>\r\n");
      out.write("                                <span class=\"box-office\">800人想看</span>\r\n");
      out.write("                            </a>\r\n");
      out.write("                        </li>\r\n");
      out.write("                        <li>\r\n");
      out.write("                            <a href=\"javascript:;\">\r\n");
      out.write("                                <span class=\"movie-rank-num\">6</span>\r\n");
      out.write("                                <p class=\"movie-rank-name\">吹哨人</p>\r\n");
      out.write("                                <span class=\"box-office\">700人想看</span>\r\n");
      out.write("                            </a>\r\n");
      out.write("                        </li>\r\n");
      out.write("                        <li>\r\n");
      out.write("                            <a href=\"javascript:;\">\r\n");
      out.write("                                <span class=\"movie-rank-num\">7</span>\r\n");
      out.write("                                <p class=\"movie-rank-name\">天·火</p>\r\n");
      out.write("                                <span class=\"box-office\">600人想看</span>\r\n");
      out.write("                            </a>\r\n");
      out.write("                        </li>\r\n");
      out.write("                        <li>\r\n");
      out.write("                            <a href=\"javascript:;\">\r\n");
      out.write("                                <span class=\"movie-rank-num\">8</span>\r\n");
      out.write("                                <p class=\"movie-rank-name\">一生有你</p>\r\n");
      out.write("                                <span class=\"box-office\">550人想看</span>\r\n");
      out.write("                            </a>\r\n");
      out.write("                        </li>\r\n");
      out.write("                        <li>\r\n");
      out.write("                            <a href=\"javascript:;\">\r\n");
      out.write("                                <span class=\"movie-rank-num\">9</span>\r\n");
      out.write("                                <p class=\"movie-rank-name\">冰雪奇缘2</p>\r\n");
      out.write("                                <span class=\"box-office\">450人想看</span>\r\n");
      out.write("                            </a>\r\n");
      out.write("                        </li>\r\n");
      out.write("                    </ul>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("<footer class=\"footer\">\r\n");
      out.write("    <div class=\"container\">\r\n");
      out.write("        <div class=\"link-nav\">\r\n");
      out.write("            <ul>\r\n");
      out.write("                <li><a href=\"javascript:;\">关于叮当</a></li>\r\n");
      out.write("                <li><a href=\"javascript:;\">加入我们</a></li>\r\n");
      out.write("                <li><a href=\"javascript:;\">联系我们</a></li>\r\n");
      out.write("                <li><a href=\"javascript:;\">隐私政策</a></li>\r\n");
      out.write("                <li><a href=\"javascript:;\">问题反馈</a></li>\r\n");
      out.write("            </ul>\r\n");
      out.write("            <div class=\"copyright\">Copyright © 2019 叮当电影</div>\r\n");
      out.write("        </div>\r\n");
      out.write("        <div class=\"sns\">\r\n");
      out.write("            <a href=\"javascript:;\" class=\"sina-icon icon\"></a>\r\n");
      out.write("            <a href=\"javascript:;\" class=\"wechat-icon icon\"></a>\r\n");
      out.write("            <a href=\"javascript:;\" class=\"rss-icon icon\"></a>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("</footer>\r\n");
      out.write("<div id=\"toTop\"></div>\r\n");
      out.write("\r\n");
      out.write("<script type=\"text/javascript\" src=\"/js/main.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"/js/slidey.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("    window.onload = function () {\r\n");
      out.write("        setPage(\"index.jsp\");\r\n");
      out.write("        initPublic();\r\n");
      out.write("        initScrollToTop();\r\n");
      out.write("        new initSlidey();\r\n");
      out.write("    };\r\n");
      out.write("</script>\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try { out.clearBuffer(); } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }

  private boolean _jspx_meth_c_005fforEach_005f0(javax.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    javax.servlet.jsp.PageContext pageContext = _jspx_page_context;
    javax.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_005fforEach_005f0 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _005fjspx_005ftagPool_005fc_005fforEach_0026_005fvar_005fitems_005fend_005fbegin.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_005fforEach_005f0.setPageContext(_jspx_page_context);
    _jspx_th_c_005fforEach_005f0.setParent(null);
    // /index.jsp(191,24) name = items type = javax.el.ValueExpression reqTime = true required = false fragment = false deferredValue = true expectedTypeName = java.lang.Object deferredMethod = false methodSignature = null
    _jspx_th_c_005fforEach_005f0.setItems(new org.apache.jasper.el.JspValueExpression("/index.jsp(191,24) '${filmList}'",_el_expressionfactory.createValueExpression(_jspx_page_context.getELContext(),"${filmList}",java.lang.Object.class)).getValue(_jspx_page_context.getELContext()));
    // /index.jsp(191,24) name = var type = java.lang.String reqTime = false required = false fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
    _jspx_th_c_005fforEach_005f0.setVar("film");
    // /index.jsp(191,24) name = begin type = int reqTime = true required = false fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
    _jspx_th_c_005fforEach_005f0.setBegin(0);
    // /index.jsp(191,24) name = end type = int reqTime = true required = false fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
    _jspx_th_c_005fforEach_005f0.setEnd(7);
    int[] _jspx_push_body_count_c_005fforEach_005f0 = new int[] { 0 };
    try {
      int _jspx_eval_c_005fforEach_005f0 = _jspx_th_c_005fforEach_005f0.doStartTag();
      if (_jspx_eval_c_005fforEach_005f0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\r\n");
          out.write("                            <li>\r\n");
          out.write("                                <a href=\"movie.jsp\" class=\"movie-poster\">\r\n");
          out.write("                                    <img src=\"");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${film.poster}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
          out.write("\" alt=\"\" class=\"poster\">\r\n");
          out.write("                                    <span class=\"movie-score\">8.5</span>\r\n");
          out.write("                                </a>\r\n");
          out.write("                                <span class=\"movie-title\">");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${film.filmName}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
          out.write("</span>\r\n");
          out.write("                                <a href=\"movie.jsp\" class=\"movie-ticket-buy\">选座购票</a>\r\n");
          out.write("                            </li>\r\n");
          out.write("                        ");
          int evalDoAfterBody = _jspx_th_c_005fforEach_005f0.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_005fforEach_005f0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (java.lang.Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_005fforEach_005f0[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_005fforEach_005f0.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_005fforEach_005f0.doFinally();
      _005fjspx_005ftagPool_005fc_005fforEach_0026_005fvar_005fitems_005fend_005fbegin.reuse(_jspx_th_c_005fforEach_005f0);
    }
    return false;
  }
}
