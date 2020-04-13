package com.example.credhub;

import android.content.ContentValues;
import net.sqlcipher.Cursor;
import net.sqlcipher.database.*;
import android.content.Context;
import android.content.SharedPreferences;
import android.widget.Toast;

import static com.example.credhub.Constant.DATABASE_CREATE;
import static com.example.credhub.Constant.DATABASE_DELETE;
import static com.example.credhub.Constant.DATABASE_VERSION;
import static com.example.credhub.Constant.DATABASE_FILE_NAME;
import static com.example.credhub.LoginActivity.Alias;

public class UserDBHelper extends SQLiteOpenHelper{

    private static UserDBHelper instance;

    KeyStoreClass keyStoreClass = new KeyStoreClass();

    public UserDBHelper(Context context){
        super(context, DATABASE_FILE_NAME, null, DATABASE_VERSION);
    }

    static public synchronized UserDBHelper getInstance(Context context) {
        if (instance == null) {
            instance = new UserDBHelper(context);
        }
        return instance;
    }

    public void onCreate(SQLiteDatabase database) {
        database.execSQL(DATABASE_CREATE);
    }

    public void onUpgrade(SQLiteDatabase database, int oldVersion, int newVersion) {
        database.execSQL(DATABASE_DELETE);
        onCreate(database);
    }


    /**
     *
     * This function returns a cursor result of the select query
     *
     * @param descriptor Credential primary key
     * @return cursor object storing elements with descriptor primary key
     */
    public Cursor dbExists(String descriptor, Context context, SharedPreferences sprefs){

        SQLiteDatabase.loadLibs(context);

        SQLiteDatabase database = null;

        try {
            database = UserDBHelper.getInstance(context).getReadableDatabase(
                    keyStoreClass.decryptPassword(sprefs.getString(Alias, ""), sprefs));
        }
        catch (Exception e) {
            e.printStackTrace();
        }

        Cursor cursor = database.rawQuery("SELECT * FROM " + Constant.TABLE_NAME +
                " WHERE " + Constant.DESCRIPTION + " = \"" + descriptor + "\"", null);

        return cursor;
    }

    /**
     *
     * This function gets all rows of database
     *
     * @param context Context of the activity
     * @param sprefs Shared preferences storage
     * @return cursor storing all rows
     */
    public Cursor dbGetAll(Context context, SharedPreferences sprefs){

        SQLiteDatabase.loadLibs(context);

        SQLiteDatabase database = null;

        try {
            database = UserDBHelper.getInstance(context).getReadableDatabase(
                    keyStoreClass.decryptPassword(sprefs.getString(Alias, ""), sprefs));
        }
        catch (Exception e) {
            e.printStackTrace();
        }

        Cursor cursor = database.rawQuery("SELECT * FROM " + Constant.TABLE_NAME, null);

        return cursor;
    }

    /**
     *
     * This function gets a specific credential
     *
     * @param context Context of the activity
     * @param description Credential primary key
     * @param sprefs Shared preferences storage
     * @return cursor storing the credential row if any
     */
    public Cursor dbGetCredential(Context context, String description, SharedPreferences sprefs){

        SQLiteDatabase.loadLibs(context);

        SQLiteDatabase database = null;

        try {
            database = UserDBHelper.getInstance(context).getReadableDatabase(
                    keyStoreClass.decryptPassword(sprefs.getString(Alias, ""), sprefs));
        }
        catch (Exception e) {
            e.printStackTrace();
        }

        Cursor cursor = database.rawQuery("SELECT * FROM " + Constant.TABLE_NAME +
                " WHERE " + Constant.DESCRIPTION + " = \"" + description + "\"", null);

        return cursor;
    }

    /**
     *
     * This function inserts a credential into the database
     *
     * @param descriptor Credential primary key to be stored
     * @param username Credential username to be stored
     * @param password Credential password to be stored
     * @param context Activity context to display the insertion outcome
     * @param sprefs Shared preferences storage
     */
    public void dbInsert(String descriptor, String username, String password, Context context, SharedPreferences sprefs){

        SQLiteDatabase.loadLibs(context);

        SQLiteDatabase database = null;

        try {
            database = UserDBHelper.getInstance(context).getWritableDatabase(
                    keyStoreClass.decryptPassword(sprefs.getString(Alias, ""), sprefs));
        }
        catch (Exception e) {
            e.printStackTrace();
        }

        ContentValues values = new ContentValues();
        values.put(Constant.DESCRIPTION, descriptor);
        values.put(Constant.USERNAME, username);
        values.put(Constant.DB_PASSWORD, password);

        database.insert(Constant.TABLE_NAME,null, values);

        Toast.makeText(context, "Credential Registered", Toast.LENGTH_SHORT).show();

        database.close();

    }

    /**
     *
     * This function updates a credential of the database
     *
     * @param descriptor Credential primary key to be stored
     * @param username Credential username to be stored
     * @param password Credential password to be stored
     * @param context Activity context to display the insertion outcome
     * @param sprefs Shared preferences storage
     */
    public void dbUpdate(String descriptor, String username, String password, Context context, SharedPreferences sprefs){

        SQLiteDatabase.loadLibs(context);

        SQLiteDatabase database = null;

        try {
            database = UserDBHelper.getInstance(context).getWritableDatabase(
                    keyStoreClass.decryptPassword(sprefs.getString(Alias, ""), sprefs));
        }
        catch (Exception e) {
            e.printStackTrace();
        }

        ContentValues values = new ContentValues();
        values.put(Constant.DESCRIPTION, descriptor);
        values.put(Constant.USERNAME, username);
        values.put(Constant.DB_PASSWORD, password);

        Toast.makeText(context, "Credential Updated", Toast.LENGTH_SHORT).show();

        database.update(Constant.TABLE_NAME, values, "Description=" + "\"" + descriptor + "\"", null);

        database.close();
    }

    /**
     *
     * This function deletes a credential from the database
     *
     * @param context Activity context to display the update outcome
     * @param finalDes String with the value of the primary key of the credential to be deleted
     * @param sprefs Shared preferences storage
     */
    public void dbDelete(Context context, String finalDes, SharedPreferences sprefs){

        SQLiteDatabase.loadLibs(context);

        SQLiteDatabase database = null;

        try {
            database = UserDBHelper.getInstance(context).getWritableDatabase(
                    keyStoreClass.decryptPassword(sprefs.getString(Alias, ""), sprefs));
        }
        catch (Exception e) {
            e.printStackTrace();
        }

        database.delete(Constant.TABLE_NAME, Constant.DESCRIPTION + " =" + "\"" + finalDes + "\"", null);
        Toast.makeText(context, "Credential Deleted", Toast.LENGTH_SHORT).show();

        database.close();
    }
}
