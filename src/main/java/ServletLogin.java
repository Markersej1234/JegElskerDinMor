import DomæneObjekter.Konto;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.Map;

@WebServlet(name = "ServletLogin", value = "/ServletLogin")
public class ServletLogin extends HttpServlet
{
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {

        String navn = request.getParameter("navn");
        String kode = request.getParameter("kode");

        Map<String , Konto> kontoMap = (Map<String, Konto>) getServletContext().getAttribute("Konti");

        Konto konto = kontoMap.getOrDefault(navn, null);

        if(konto == null){

            request.setAttribute("fejl", "Konti findes ikke! ");
            request.getRequestDispatcher("index.jsp").forward(request , response);
        }
        if(!konto.getKode().equals(kode)) {
            request.setAttribute("fejl", "koden passer ikke! ");
            request.getRequestDispatcher("index.jsp").forward(request , response);
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {

    }
}
