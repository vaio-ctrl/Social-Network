<%@page import="java.util.Objects"%>
<%@page import="net.learnbyproject.helper.Keys"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <jsp:include page="/WEB-INF/head_tag.jsp">
        <jsp:param name="title" value="Login" />
    </jsp:include>

    <body>
        <nav class="container-fluid" id="main-nav-login">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        <a href="./news-feed.jsp" id="logo-large">Social Network</a>
                    </div>
                </div>
            </div>
        </nav>

        <section class="container-fluid" style="background-color: #190061; margin-top:-30px;">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <form action="login" method="post" id="body-login-form">
                            <label>Login to Alliance Social</label>
                            <div class="alert-danger">
                                <%--<%= Objects.toString(session.getAttribute(Keys.ERROR), "")  %>--%>
                                ${sessionScope[Keys.ERROR]}
                            </div>
                            <input type="text" name="user-login-id" placeholder="Email address or phone number" />
                            <input type="password" name="user-login-password" placeholder="Password" />
                            <button type="submit" id="btn-login">Login</button>
                            <a href="/">Contact Admin</a> <br>
                            <a href="./register.jsp">Signup for Social Network?</a>
                        </form>
                    </div>
                </div>
            </div>
        </section>

        <footer class="container">
            <ul id="lans">
                <li>English (UK)</li>
                             
                <li>
                    <a href="#">FranÃ§ais (France)</a>
                </li>
                <li>
                    <a href="#">PortuguÃªs (Brasil)</a>
                </li>
                <li>
                    <a href="#">Deutsch</a>
                </li>
                <li>
                    <a href="#">Italiano</a>
                </li>
                <li>+</li>
            </ul>
            <ul id="footer-tools">
                <li><a href="/">Sign Up</a></li>
                <li>
                    <a href="#">Log In</a>
                </li>
            </ul>
            Social Network &copy; 2021
        </footer>
    </body>

</html>
