import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class MySQLAdsDao implements Ads{

    private List<Ad> ads = new ArrayList<>();
    private Connection connection;

//    Constructor-got rid of throws SQLException in method signature
    public MySQLAdsDao(Config config){
        try {
//            Config config = new Config();
//        DriverManager.registerDriver(new Driver());
            connection = DriverManager.getConnection(
                    config.getUrl(),
                    config.getUser(),
                    config.getPassword()
            );
        } catch (SQLException e){
            System.out.println(e);
        }
    }

//    Retrieve ads from database-got rid of throws SQLException in method signature
    @Override
    public List<Ad> all(){
        try {
            String selectQuery = "SELECT * FROM ads";

            Statement stmt = connection.createStatement();
            ResultSet rs = stmt.executeQuery(selectQuery);

            while (rs.next()) {
                ads.add(
                        new Ad(
                                rs.getLong("id"),
                                rs.getLong("user_id"),
                                rs.getString("title"),
                                rs.getString("description")
                        )
                );
            }
        } catch (SQLException e){
            System.out.println(e);
        }
        return ads;
    }

//    Insert ads from database-got rid of throws SQLException in method signature
    @Override
    public Long insert(Ad ad){

        Long newAdId = 0L;

        String insertQuery = String.format("INSERT INTO ads (user_id, title, description) VALUES('%s', '%s', '%s')", ad.getUserId(), ad.getTitle(), ad.getDescription());

        try {
            Statement stmt = connection.createStatement();
            stmt.executeUpdate(insertQuery, Statement.RETURN_GENERATED_KEYS);
            ResultSet rs = stmt.getGeneratedKeys();

            if (rs.next()) {
                System.out.println("Inserted a new record! New id: " + rs.getLong(1));
                newAdId = rs.getLong(1);
            }
        } catch (SQLException e){
            System.out.println(e);
        }
        return newAdId;
    }
}
