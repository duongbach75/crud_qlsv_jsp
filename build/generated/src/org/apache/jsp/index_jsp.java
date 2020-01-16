package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.ArrayList;
import java.util.List;
import dbconnect.Student;
import dbconnect.StudentModel;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

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
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css\" integrity=\"sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T\" crossorigin=\"anonymous\">\n");
      out.write("    </head>\n");
      out.write("\n");
      out.write("    <body>\n");
      out.write("        <table class=\"table\">\n");
      out.write("  <thead class=\"thead-dark\">\n");
      out.write("    <tr>\n");
      out.write("      <th scope=\"col\">id</th>\n");
      out.write("      <th scope=\"col\">họ tên</th>\n");
      out.write("      <th scope=\"col\">Địa chỉ  </th>\n");
      out.write("      <th scope=\"col\">Email</th>\n");
      out.write("      <th scope=\"col\">Số điện thoại</th>\n");
      out.write("    </tr>\n");
      out.write("  </thead>\n");
      out.write("            \n");
      out.write("            ");

                try {
                    StudentModel sm = new StudentModel();
                    List<Student> listStudent = sm.getStudents();
                    for (Student st : listStudent) {
      out.write("\n");
      out.write("            <tr>                \n");
      out.write("                <td>\n");
      out.write("                    ");
      out.print( st.getId());
      out.write("  \n");
      out.write("                </td>\n");
      out.write("                <td>\n");
      out.write("                    ");
 out.print(st.getName()); 
      out.write("  \n");
      out.write("                </td>\n");
      out.write("                <td>\n");
      out.write("                    ");
 out.print(st.getMajor()); 
      out.write("  \n");
      out.write("                </td>\n");
      out.write("                <td>\n");
      out.write("                    ");
 out.print(st.getDob()); 
      out.write("  \n");
      out.write("                </td>\n");
      out.write("                <td>\n");
      out.write("                    <a href=\"update.jsp?command=update&id=");
      out.print(st.getId());
      out.write("\"> <input style=\"background-color: #0033ff\" type=\"submit\" value=\"update\"></a><a href=\"/control?command=delete&id=");
      out.print(st.getId());
      out.write("\"><input style=\"background-color: red\" type=\"submit\" value=\"xóa\"> </a>\n");
      out.write("                </td>\n");
      out.write("            </tr>\n");
      out.write("            ");

                    }
                } catch (Exception e) {
                }
            
      out.write("          \n");
      out.write("        </table>\n");
      out.write("        <a href=\"add.jsp?command=add\"><input style=\"background-color: #33ff33\" type=\"button\" value=\"thêm mới\"></a>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
