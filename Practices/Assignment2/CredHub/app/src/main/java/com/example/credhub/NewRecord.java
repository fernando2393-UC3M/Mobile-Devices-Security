package com.example.credhub;

import android.content.ContentValues;
import android.content.Intent;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

import data.UserDBHelper;
import data.UserModel;

public class NewRecord extends AppCompatActivity {

    EditText descriptor, username, password;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_new_record);

        descriptor = findViewById(R.id.message_descriptor);
        username = findViewById(R.id.message_username);
        password = findViewById(R.id.message_password);

        Button submit = findViewById(R.id.submitButton);

        submit.setOnClickListener(new View.OnClickListener() {
                                      public void onClick(View view) {
                                          register();
                                      }
                                  }
        );
    }

    /**
     * Function for registering a new user credential or updating it if exists
     */
    public void register() {

        UserDBHelper conn = new UserDBHelper(this, "User_DB", null, 1);

        SQLiteDatabase db = conn.getReadableDatabase();

        Cursor cursor = db.rawQuery("SELECT * FROM User WHERE Description = \"" + descriptor.getText().toString() + "\"", null);

        if (cursor.moveToFirst()) { // The Query is not null --> Update

            db = conn.getWritableDatabase();

            ContentValues values = new ContentValues();
            values.put(UserModel.Description, descriptor.getText().toString());
            values.put(UserModel.Username, username.getText().toString());
            values.put(UserModel.Password, password.getText().toString());

            Toast.makeText(getApplicationContext(), "Updated", Toast.LENGTH_SHORT).show();

            db.update(UserModel.TABLE_NAME, values, "Description=" + "\"" + descriptor.getText().toString() + "\"", null);

            cursor.close();
        } else { // Null query --> Insert

            ContentValues values = new ContentValues();
            values.put(UserModel.Description, descriptor.getText().toString());
            values.put(UserModel.Username, username.getText().toString());
            values.put(UserModel.Password, password.getText().toString());

            Long outcome = db.insert(UserModel.TABLE_NAME, UserModel.Description, values);

            Toast.makeText(getApplicationContext(), "Register ID: " + outcome, Toast.LENGTH_SHORT).show();

        }
        db.close();

        Intent mainAct = new Intent(NewRecord.this, MainScreen.class);
        startActivity(mainAct);

    }
}
