package net.learnbyproject.controller;
import java.io.IOException;
import java.io.InputStream;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
import net.learnbyproject.helper.Keys;
import net.learnbyproject.helper.Validator;
import net.learnbyproject.model.User;
import net.learnbyproject.service.UserService;

@MultipartConfig(maxFileSize = 16177215) // upload file's size up to 16MB
@WebServlet(urlPatterns = {"/upload-image"})
public class UploadImageController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        session.setAttribute(Keys.ERROR, "");
        InputStream inputStream = null;

        // obtains the upload file part in this multipart request
        Part filePart = request.getPart("userCoverPhoto");
        if (filePart != null) {
            // get input stream of the uploaded file
            inputStream = filePart.getInputStream();
            try {
                String emailOrMobile = ((User) session.getAttribute(Keys.USER)).getEmailOrMobile();
                if (UserService.updateUserAvatar(inputStream, emailOrMobile) == Validator.SUCCESS) {
                    User user = UserService.getUser(emailOrMobile);
                    session.setAttribute(Keys.USER, user);

                } else {
                    session.setAttribute(Keys.ERROR, "Cannot upload your avatar. Try again later!");
                }
            } catch (SQLException ex) {
                Logger.getLogger(UploadImageController.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        response.sendRedirect("profile");
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
