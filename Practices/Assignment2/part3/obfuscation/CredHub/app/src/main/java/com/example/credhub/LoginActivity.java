package com.example.credhub;


import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/**
 * A login screen that offers login via email/password.
 */
public class LoginActivity extends AppCompatActivity {

    SharedPreferences sprefs;

    TextView usrname;
    TextView pass;

    public static final String MyPreferences = "MyPrefs" ;
    public static final String Username = "Username";
    public static final String Password = "Password";

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_login);


        sprefs = getSharedPreferences(MyPreferences, Context.MODE_PRIVATE);


        Button submit = findViewById(R.id.sign_in_button);
        submit.setOnClickListener(new View.OnClickListener() {
                                      public void onClick(View view) {
                                          checkCredentials();
                                      }
                                  }
        );
    }

    public void checkCredentials() {
        // User input
        usrname = findViewById(R.id.Username);
        pass = findViewById(R.id.Password);

        String name = usrname.getText().toString(); // Input username
        String password = pass.getText().toString(); // Input password

        if (!sprefs.contains(Username) && !sprefs.contains(Password)) {
            // Add user and password

            if(name.equals("")) {
                Toast.makeText(getApplicationContext(), "Username cannot be empty", Toast.LENGTH_LONG).show();
            }

            else if(password.equals("")) {
                Toast.makeText(getApplicationContext(), "Password cannot be empty", Toast.LENGTH_LONG).show();
            }

            else {
                SharedPreferences.Editor editor = sprefs.edit();
                /* Here the credentials are saved when no credentials saved before */

                editor.putString(Username, name);

                password = hashing(password);

                if(password != null) {
                    editor.putString(Password, password);
                }

                else {
                    return;
                }


                editor.commit();

                Intent unInt = new Intent(LoginActivity.this, MainScreen.class);
                startActivity(unInt);
            }
        }

        else {

            String credName = sprefs.getString(Username, "");
            String credPass = sprefs.getString(Password, "");

            if(check(credName, name) && check(credPass, hashing(password))){
                Intent unInt = new Intent(LoginActivity.this, MainScreen.class);
                startActivity(unInt);
            }
            else {
                Toast.makeText(getApplicationContext(), "Credentials do not match", Toast.LENGTH_LONG).show();
            }
        }
    }

    public boolean check(String str1, String str2){
       return (str1.equals(str2));
    }

    public String hashing(String word) {

        MessageDigest messageDigest;

        try {
            messageDigest = MessageDigest.getInstance("SHA");
            messageDigest.update(word.getBytes());
            byte [] messageDigestSHA = messageDigest.digest();
            return (new String(messageDigestSHA));
        }

        catch (NoSuchAlgorithmException e){
            e.printStackTrace();
            return null;
        }
    }
}

