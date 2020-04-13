package com.example.credhub;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.database.Cursor;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;


import static com.example.credhub.LoginActivity.MyPreferences;

public class NewRecord extends AppCompatActivity {

    SharedPreferences sprefs;
    EditText descriptor, username, password;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_new_record);

        sprefs = getSharedPreferences(MyPreferences, Context.MODE_PRIVATE);

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

        UserDBHelper helper = new UserDBHelper(this);

        Cursor cursor = helper.dbExists(descriptor.getText().toString(), this, sprefs); // Check if the credential to register exists

        Log.i("CURSOR", ""+cursor.getCount());

        if (cursor.moveToFirst()) { // The Query is not null --> Update

            helper.dbUpdate(descriptor.getText().toString(), username.getText().toString(), password.getText().toString(), getApplicationContext(), sprefs);
            cursor.close();
        }
        else { // Null query --> Insert
            helper.dbInsert(descriptor.getText().toString(), username.getText().toString(), password.getText().toString(), getApplicationContext(), sprefs);
            cursor.close();
        }

        Intent mainAct = new Intent(NewRecord.this, MainScreen.class);
        startActivity(mainAct);
    }
}
