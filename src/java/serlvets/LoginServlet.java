package serlvets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import services.AccountService;

public class LoginServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession();

        String logout = request.getParameter("logout");
        request.setAttribute("logout", logout);

        if (logout != null) {
            session.invalidate();
            request.setAttribute("logoutMess", true);
            return;
        }
        getServletContext().getRequestDispatcher("/WEB-INF/login.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession();
        AccountService account = new AccountService();

        String user = request.getParameter("user");
        String password = request.getParameter("password");

        request.setAttribute("user", user);
        request.setAttribute("password", password);

        if (user == null || user.equals("") || password == null || password.equals("")) {
            request.setAttribute("nullMess", true);
            return;
        }
        if (account.login(user, password) != null) {
            session.setAttribute("user", user);
            response.sendRedirect("home");
        } else {
            request.setAttribute("invalidMess", true);
            return;
        }

        getServletContext().getRequestDispatcher("/WEB-INF/login.jsp").forward(request, response);
    }

}
