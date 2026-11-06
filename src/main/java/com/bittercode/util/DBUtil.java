package com.bittercode.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import com.bittercode.constant.ResponseCode;
import com.bittercode.model.StoreException;

public class DBUtil {

    private static Connection connection;

    static {
        try {
            Class.forName(DatabaseConfig.DRIVER_NAME);
            connection = DriverManager.getConnection(DatabaseConfig.CONNECTION_STRING, DatabaseConfig.DB_USER_NAME,
                    DatabaseConfig.DB_PASSWORD);
        } catch (Throwable e) {
            System.err.println("Initial DB connection warning (will connect on demand): " + e.getMessage());
        }
    }// End of static block

    public static synchronized Connection getConnection() throws StoreException {
        try {
            boolean needNewConnection = false;
            if (connection == null || connection.isClosed()) {
                needNewConnection = true;
            } else {
                try {
                    if (!connection.isValid(2)) {
                        needNewConnection = true;
                    }
                } catch (Throwable t) {
                    needNewConnection = true;
                }
            }

            if (needNewConnection) {
                Class.forName(DatabaseConfig.DRIVER_NAME);
                connection = DriverManager.getConnection(DatabaseConfig.CONNECTION_STRING, DatabaseConfig.DB_USER_NAME,
                        DatabaseConfig.DB_PASSWORD);
            }
        } catch (Exception e) {
            e.printStackTrace();
            throw new StoreException(ResponseCode.DATABASE_CONNECTION_FAILURE);
        }

        if (connection == null) {
            throw new StoreException(ResponseCode.DATABASE_CONNECTION_FAILURE);
        }

        return connection;
    }

}
