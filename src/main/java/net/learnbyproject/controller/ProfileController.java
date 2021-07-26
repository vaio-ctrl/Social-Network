package net.learnbyproject.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import net.learnbyproject.helper.Keys;
import net.learnbyproject.helper.Validator;
import net.learnbyproject.model.User;
import net.learnbyproject.service.UserService;

@WebServlet(urlPatterns = {"/profile"})
public class ProfileController extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession sess = request.getSession();
        sess.setAttribute(Keys.ERROR, "");
        sess.setAttribute(Keys.SUCCESS, "");
        
        String action = request.getParameter("action");
        if (action != null && action.equals("update-profile")) {
            try {
                String firstName = request.getParameter("first-name").trim();
                String lastName = request.getParameter("last-name").trim();
                String newEmailOrMobile = request.getParameter("mobile-or-email").trim();
                String userPass = request.getParameter("user-password").trim();
                String day = request.getParameter("day").trim();
                String month = request.getParameter("month").trim();
                String year = request.getParameter("year").trim();
                String sex = request.getParameter("sex").trim();
                String birthday = String.format("%s-%s-%s", day, month, year);
                
                String currentEmailOrMobile = ((User) sess.getAttribute("user")).getEmailOrMobile();

                if (UserService.updateUser(firstName, lastName, newEmailOrMobile,
                            userPass, birthday, sex, currentEmailOrMobile) == Validator.SUCCESS) {
                    // update session
                    User user = UserService.getUser(newEmailOrMobile);
                    sess.setAttribute(Keys.USER, user); 
                    sess.setAttribute(Keys.SUCCESS, "Data has been saved!");
                    
                } else {
                    sess.setAttribute(Keys.ERROR, "Something wrong! Please, try again!");
                }
            } catch (SQLException ex) {
                Logger.getLogger(ProfileController.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
       
        RequestDispatcher dis = request.getRequestDispatcher("WEB-INF/profile.jsp");
        dis.forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
}
