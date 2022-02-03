import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;


@WebServlet(name = "CountServlet", urlPatterns = "/count")
public class CountServlet extends HttpServlet {
    static int counter = 0;
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException {
        res.setContentType("text/html");
        PrintWriter out = res.getWriter();
//        out.printf("<h1>The page has been viewed %d times!</h1>", counter++);

        String reset = req.getParameter("reset");
        if(reset == null){
            out.printf("<h1>The page has been viewed %d times!</h1>", counter++);
        } else{
            counter = 0;
            out.printf("<h1>The page has been reset! The new count is %d</h1>", counter);
        }
    }
}
