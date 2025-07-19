package model;

import java.io.InputStream;
import java.util.Properties;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class Mail {

 //   // Uncomment this and Add YOUR EMAIL & APP PASSWORD 
//    private static final String APP_EMAIL = "YOUR EMAIL";
//    private static final String APP_PASSWORD = "YOUR APP PASSWORD";

    // Remove/Comment this part and Continue
    private static String APP_EMAIL;
    private static String APP_PASSWORD;

    static {
        try (InputStream input = Mail.class.getClassLoader().getResourceAsStream("model/mail.properties")) {
            Properties prop = new Properties();
            if (input == null) {
                throw new RuntimeException("mail.properties file not found");
            }
            prop.load(input);
            APP_EMAIL = prop.getProperty("app.email");
            APP_PASSWORD = prop.getProperty("app.password");
        } catch (Exception e) {
            throw new RuntimeException("Error loading mail config", e);
        }
    }
    // Remove/Comment this part and Continue 
    
    
    
    public static void sendMail(String email, String subject, String htmlContent) {

        Properties props = new Properties();
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.host", "smtp.gmail.com");   // gmail use  (any other change to hotmail, outlook, etc.)
        props.put("mail.smtp.port", "587");

        Session session = Session.getInstance(props,
                new javax.mail.Authenticator() {
            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(Mail.APP_EMAIL, Mail.APP_PASSWORD);
            }
        });

        try {
            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress(Mail.APP_EMAIL));
            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(email));
            message.setSubject(subject);
            message.setContent(htmlContent, "text/html");

            Transport.send(message);

            System.out.println("Email sent successfully!");

        } catch (MessagingException e) {
            throw new RuntimeException(e);
        }

    }

}
