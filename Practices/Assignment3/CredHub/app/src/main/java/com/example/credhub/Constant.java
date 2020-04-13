package com.example.credhub;

class Constant {
    // Operation codes for the different operations to be performed
    static final String EXPORT = "0";
    static final String READ = "1";
    static final String IMPORT = "2";
    // Variables needed for the connection with the server
    static final String URL = "https://10.0.2.2/SDM/WebRepo?wsdl";
    static final String WS_NAMESPACE = "http://sdm_webrepo/";

    static final String WS_METHOD_LIST = "ListCredentials";
    static final String WS_METHOD_IMPORT = "ImportRecord";
    static final String WS_METHOD_EXPORT = "ExportRecord";

    // Authentication values for server connection
    static final String BASIC_AUTH_USERNAME = "sdm";
    static final String BASIC_AUTH_PASSWORD = "repo4droid";

    static final String ERROR_METHOD_STR = "Wrong operation"; // String used when a method does not work as expected
    static final boolean DEBUG = false; // Used to enable printing key parts of the code if it is set to true

    static final int PASSWORD_LENGTH = 64; // Length for random generated password

    // Database values
    static final String DATABASE_FILE_NAME = "Credentials.db";
    static final int DATABASE_VERSION = 1;

    static final String TABLE_NAME = "Credential";
    static final String DESCRIPTION = "Description";
    static final String USERNAME = "Username";
    static final String DB_PASSWORD = "Password";

    /* Database table creation script */

    static final String DATABASE_CREATE = "CREATE TABLE IF NOT EXISTS " + TABLE_NAME + " ("
            + DESCRIPTION + " TEXT PRIMARY KEY,"
            + USERNAME + " TEXT NOT NULL,"
            + DB_PASSWORD + " TEXT NOT NULL )";

    /* Database table deletion script */

    static final String DATABASE_DELETE = "DROP TABLE IF EXISTS " + TABLE_NAME;

}
