import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/ads")
public class ViewAdsServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse resp) throws ServletException, IOException {
        // Use the factory to get the dao object
        Ads adsDao = DaoFactory.getAdsDao();
        // Use a method on the dao to get all the products
        List<Ad> ads = adsDao.all();
        // Pass the data to the jsp
        request.setAttribute("Ads", ads);
        request.getRequestDispatcher("/ads/index.jsp").forward(request, resp);
    }
}
