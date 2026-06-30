package lk.jiat.techmart.controller;

import jakarta.inject.Inject;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/test", loadOnStartup = 1)
public class Test extends HttpServlet {

    @Inject
    private MyApp myApp;

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        resp.setContentType("text/html");
        resp.getWriter().write("Ecomm Web module Test<br>");

        // Initializes session if not present to support @SessionScoped CDI beans
        req.getSession();

        myApp.doSomething();
    }
}