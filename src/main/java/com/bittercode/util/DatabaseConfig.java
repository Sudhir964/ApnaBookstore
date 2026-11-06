package com.bittercode.util;

import java.io.InputStream;
import java.util.Properties;

class DatabaseConfig {

    static Properties prop = new Properties();
    static {
        InputStream input = null;
        try {
            if (DatabaseConfig.class.getClassLoader() != null) {
                input = DatabaseConfig.class.getClassLoader().getResourceAsStream("application.properties");
            }
            if (input == null && Thread.currentThread().getContextClassLoader() != null) {
                input = Thread.currentThread().getContextClassLoader().getResourceAsStream("application.properties");
            }
            if (input == null) {
                input = DatabaseConfig.class.getResourceAsStream("/application.properties");
            }
            if (input != null) {
                prop.load(input);
            }
        } catch (Throwable e) {
            e.printStackTrace();
        } finally {
            if (input != null) {
                try {
                    input.close();
                } catch (Exception ignored) {
                }
            }
        }
    }

    public final static String DRIVER_NAME = prop.getProperty("db.driver", "org.postgresql.Driver");
    public final static String DB_HOST = prop.getProperty("db.host", "aws-0-ap-northeast-1.pooler.supabase.com");
    public final static String DB_PORT = prop.getProperty("db.port", "5432");
    public final static String DB_NAME = prop.getProperty("db.name", "postgres?sslmode=require");
    public final static String DB_USER_NAME = prop.getProperty("db.username", "postgres.siqmghpsmziqowfazxzg");
    public final static String DB_PASSWORD = prop.getProperty("db.password", "Sudhirbind964@");
    public final static String CONNECTION_STRING = prop.getProperty("db.url") != null && !prop.getProperty("db.url").trim().isEmpty()
            ? prop.getProperty("db.url").trim()
            : ("jdbc:postgresql://" + DB_HOST + ":" + DB_PORT + "/" + DB_NAME);

}
