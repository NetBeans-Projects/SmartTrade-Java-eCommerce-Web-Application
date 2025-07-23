package hibernate;

import java.io.InputStream;
import java.util.Properties;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class HibernateUtil {

    private static final SessionFactory sessionFactory;

    static {

        try {

            // Comment this part
            Properties props = new Properties();
            InputStream input = HibernateUtil.class.getClassLoader().getResourceAsStream("hibernate.properties");
            if (input == null) {
                throw new RuntimeException("hibernate.properties not found in classpath");
            }
            props.load(input);
            // Comment this part

            Configuration configure = new Configuration().configure();

            // Comment this part
            configure.setProperty("hibernate.connection.password", props.getProperty("db.password"));
            configure.addProperties(props);
            // Comment this part
            
            sessionFactory = configure.buildSessionFactory();

        } catch (Throwable ex) {

            System.err.println("Initial SessionFactory creation failed." + ex);
            throw new ExceptionInInitializerError(ex);

        }

    }

    public static SessionFactory getSessionFactory() {
        return sessionFactory;
    }

    public static void shutdown() {
        getSessionFactory().close();
    }

}
