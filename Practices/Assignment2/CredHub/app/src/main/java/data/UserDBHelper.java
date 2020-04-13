package data;

import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.content.Context;

public class UserDBHelper extends SQLiteOpenHelper {

    // public static final int DATABASE_VERSION = 1; // DB Version --> For future updates
    // public static final String DATABASE_NAME = "User.db"; // DB Name --> stored as User.db --> /data/data/<paquete>/databases/User.db by default

    public UserDBHelper(Context context, String name, SQLiteDatabase.CursorFactory factory, int version){
        super(context, name, factory, version);
    }

    /**
     * Function to create the user database tables
     *
     * @param sqLiteDatabase user database
     */
    @Override
    public void onCreate(SQLiteDatabase sqLiteDatabase) {

        // DB Creation

        sqLiteDatabase.execSQL("CREATE TABLE " + UserModel.TABLE_NAME + " ("
                + UserModel.Description + " TEXT PRIMARY KEY,"
                + UserModel.Username + " TEXT NOT NULL,"
                + UserModel.Password + " TEXT NOT NULL)");

        // DB Created
    }

    /**
     * Function to upgrade user database
     *
     * @param sqLiteDatabase user database
     * @param i old version
     * @param i1 new version
     */
    @Override
    public void onUpgrade(SQLiteDatabase sqLiteDatabase, int i, int i1) {

        // Method for future upgrades of DB content

        sqLiteDatabase.execSQL("DROP TABLE IF EXISTS User");
        onCreate(sqLiteDatabase);

    }
}
