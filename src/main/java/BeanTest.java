import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class BeanTest {
    public static void main(String[] args){
        Album tuPacAlbum = new Album(1, "2Pac", "All Eyes On Me", 1996, 5.88f, "Rap");

        Author kobe = new Author(1, "Kobe", "Bryant");
        Quote newQuote = new Quote(1, "Dedication makes the dream come true", kobe);

        Author kobeTwo = new Author(1, "Kobe", "Bryant");
        Quote newQuoteTwo = new Quote(1, "If you're afraid to fail, then you're probably going to fail.", kobeTwo);

//        System.out.println(newQuote.getContent() + " - " + newQuote.getAuthor().getFirstName() + " " + newQuote.getAuthor().getLastName());

        List<Quote> journalOfQuotes = new ArrayList<>();
        journalOfQuotes.add(newQuote);
        journalOfQuotes.add(newQuoteTwo);

//        for(Quote quote : journalOfQuotes){
//            System.out.println(Quote.getContent() + " - " + Quote.getAuthor().getFirstName() + " " + Quote.getAuthor().getLastName());
//        }
    }
}
