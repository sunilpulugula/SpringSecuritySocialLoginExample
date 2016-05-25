package database.demo;

import java.io.File;
import java.net.URL;
import java.util.HashSet;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import com.spring.security.social.login.example.database.model.Role;
import com.spring.security.social.login.example.database.model.User;


/**
 * @author <a href="mailto:psunil1278@gmail.com">Sunil Kumar</a>
 * @since 26/12/15
 *
 * Run this stand alone main method to create database and create sample entries in user and role tables.
 */

public class SampleUsersDemo {

    public static void main(String[] args) {
        URL url = SampleUsersDemo.class.getClassLoader().getResource("test.hibernate.cfg.xml");
        File file = new File(url.getPath());

        Configuration configuration = new Configuration().configure(file);
        SessionFactory sessionFactory = configuration.buildSessionFactory();

        final Session currentSession = sessionFactory.openSession();
        currentSession.beginTransaction();

        Role role1 = new Role();
        role1.setName("ROLE_USER");

        Role role2 = new Role();
        role2.setName("ROLE_ADMIN");

        User user1 = new User();
        user1.setUserId("testuser@testuser.com");
        user1.setEmailId("testuser@testuser.com");
        user1.setName("testuser");
        user1.setPassword("testuser");
        user1.setProvider("local");
        user1.setActive(1);
        final HashSet<Role> roles1 = new HashSet<Role>();
        roles1.add(role1);
        user1.setRoles(roles1);
        role1.addUser(user1);

        User user2 = new User();
        user2.setUserId("admin@admin.com");
        user2.setEmailId("admin@admin.com");
        user2.setName("admin");
        user2.setPassword("admin");
        user2.setProvider("local");
        user2.setActive(1);
        final HashSet<Role> roles2 = new HashSet<Role>();
        roles2.add(role1);
        roles2.add(role2);
        user2.setRoles(roles2);
        role1.addUser(user2);
        role2.addUser(user2);

        currentSession.save(user1);
        currentSession.save(user2);

        currentSession.getTransaction().commit();
        currentSession.flush();

        currentSession.close();
        sessionFactory.close();


    }
}
