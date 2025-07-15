
package controller;

import com.google.gson.Gson;
import com.google.gson.JsonObject;
import hibernate.HibernateUtil;
import hibernate.User;
import java.io.IOException;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Mail;
import model.Util;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

@WebServlet(name = "SignUp", urlPatterns = {"/SignUp"})
public class SignUp extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        Gson gson = new Gson();
        
        // Type 1 - JsonObject
        JsonObject user = gson.fromJson(request.getReader(), JsonObject.class);  // JsonObject
        
        String firstName = user.get("firstName").getAsString();  // get values from JsonObject
        String lastName = user.get("lastName").getAsString();
        final String email = user.get("email").getAsString();
        String password = user.get("password").getAsString();
        

 //       Type 2 - Hibernate Entity User Object
//        User user = gson.fromJson(request.getReader(), User.class);  // User class (this is hibernate package class)
//        
//        String firstName = user.getFirst_name();  // get values from User class (this is hibernate package class)
//        String lastName = user.getLast_name();
//        String email = user.getEmail();
//        String password = user.getPassword();


//        Type 3 - Data Transfer Object 
//        dto.User user = gson.fromJson(request.getReader(), dto.User.class);  // User class (this is hibernate package class)
//        
//        String firstName = user.getFirstName(); // get values from User class (this is hibernate package class)
//        String lastName = user.getLastName();
//        String email = user.getEmail();
//        String password = user.getPassword();
        
//        System.out.println(firstName);
//        System.out.println(lastName);
//        System.out.println(email);
//        System.out.println(password);

        //save
        SessionFactory sf = HibernateUtil.getSessionFactory();
        Session s = sf.openSession();
        
        User u = new User();
        u.setFirst_name(firstName);
        u.setLast_name(lastName);
        u.setEmail(email);
        u.setPassword(password);
        
        // generate verification code
        final String verificationCode = Util.generateCode();
        u.setVerification(verificationCode);
        
        u.setCreated_at(new Date());
        
        s.save(u);
        s.beginTransaction().commit();
        // hibernate save
         
        // send email
        new Thread(new Runnable() {
            @Override
            public void run() {
                Mail.sendMail(email, "SmartTrade - Verification", "<h1>" + verificationCode + "</h1>");
            }
        }).start();
        // send email
        
    }

}
