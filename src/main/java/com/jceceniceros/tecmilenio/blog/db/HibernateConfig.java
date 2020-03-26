package com.jceceniceros.tecmilenio.blog.db;

import com.jceceniceros.tecmilenio.blog.models.Article;
import com.jceceniceros.tecmilenio.blog.models.User;

import org.hibernate.cfg.Configuration;

public class HibernateConfig {

    private static Configuration configuration;

    public static Configuration getConfiguration() {
        if (configuration == null) {
            try {
                configure();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return configuration;
    }

    private static void configure() {
        configuration = new Configuration();

        // Configure
        configuration.addAnnotatedClass(User.class);
        configuration.addAnnotatedClass(Article.class);
        // ------

    }
}
