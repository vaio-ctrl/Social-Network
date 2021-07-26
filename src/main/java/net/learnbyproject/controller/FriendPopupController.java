package net.learnbyproject.controller;

import com.google.gson.Gson;
import java.io.IOException;
import java.sql.SQLException;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import net.learnbyproject.model.User;
import net.learnbyproject.service.PostService;
import net.learnbyproject.service.UserService;

@WebServlet(urlPatterns = {"/friend-popup"})
public class FriendPopupController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException {
        try {
            String emailOrMobile = request.getParameter("emailOrMobile");
            User user = UserService.getUser(emailOrMobile);
            int totalPosts = PostService.countUserPosts(user.getId());
            int totalComments = PostService.countUserComments(user.getId());
            // convert array of bytes to base 64
            String imgData = "data:image/jpeg;base64," + user.getAvatar();
            Map<String,String> options = new LinkedHashMap<>();
            options.put("imageString", imgData);
            options.put("totalPosts", String.valueOf(totalPosts));
            options.put("totalComments", String.valueOf(totalComments));
            options.put("fullName", String.format("%s %s", 
                            user.getFirstName(), user.getLastName()));
            String json = new Gson().toJson(options);
            response.setContentType("application/json");
            response.setCharacterEncoding("UTF-8");
            response.getWriter().write(json);
        } catch (SQLException | IOException ex) {
            Logger.getLogger(FriendPopupController.class.getName()).log(Level.SEVERE, null, ex);
        }
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
