package com.example.credhub;


import android.app.Activity;
import android.app.KeyguardManager;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.app.KeyguardManager;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Random;

import static com.example.credhub.Constant.PASSWORD_LENGTH;

/**
 * A login screen that offers login via email/password.
 */
public class LoginActivity extends AppCompatActivity {

    /* Random string generator */

    static final String DATA = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ";
    static Random RANDOM = new Random();

    SharedPreferences sprefs;

    TextView usrname;
    TextView pass;

    public static final String MyPreferences = "MyPrefs" ;
    public static final String Username = "Username";
    public static final String Password = "Password";
    public static final String Random_Password = "Random_Password";
    public static final String Alias = "Alias";

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

    /**
     * Function for checking stored credentials matching if any or saving new ones
     */
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

                setRandomPassword();

                if (!isSecure()) {
                    Toast.makeText(getApplicationContext(), "A PIN is necessary to access this application", Toast.LENGTH_LONG).show();
                    new android.os.Handler().postDelayed(
                            new Runnable() {
                                public void run() {
                                    moveTaskToBack(true); // Closes the app
                                }
                            }, 1000);
                }

                else if(!sprefs.contains(Alias)) {
                    Intent unInt = new Intent(LoginActivity.this, KeyGenerator.class);
                    startActivity(unInt);
                }
                else {

                    KeyStoreClass keyStore = new KeyStoreClass();
                    keyStore.loadKeyStore(); // Load keystore in activity creation

                    Intent unInt = new Intent(LoginActivity.this, MainScreen.class);
                    startActivity(unInt);
                }
            }
        }

        else {

            String credName = sprefs.getString(Username, "");
            String credPass = sprefs.getString(Password, "");

            if(check(credName, name) && check(credPass, hashing(password))){

                setRandomPassword();

                if (!isSecure()) {
                    Toast.makeText(getApplicationContext(), "A PIN is necessary to access this application", Toast.LENGTH_LONG).show();
                    new android.os.Handler().postDelayed(
                            new Runnable() {
                                public void run() {
                                    moveTaskToBack(true); // Closes the app
                                }
                            }, 1000);
                }

                else if(!sprefs.contains(Alias)) {
                    Intent unInt = new Intent(LoginActivity.this, KeyGenerator.class);
                    startActivity(unInt);
                }
                else {

                    KeyStoreClass keyStore = new KeyStoreClass();
                    keyStore.loadKeyStore(); // Load keystore in activity creation

                    Intent unInt = new Intent(LoginActivity.this, MainScreen.class);
                    startActivity(unInt);
                }
            }
            else {
                Toast.makeText(getApplicationContext(), "Credentials do not match", Toast.LENGTH_LONG).show();
            }
        }
    }


    /**
     * Function for comparing a string
     *
     * @param str1 first string to be compared
     * @param str2 second string to be compared
     * @return true if equals false if not
     */
    public boolean check(String str1, String str2){
       return (str1.equals(str2));
    }

    /**
     * Function for hashing a string
     *
     * @param word string to be hashed
     * @return hashed string
     */
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

    /**
     * This function stores the random password into shared preferences
     */
    public void setRandomPassword(){

        sprefs = getSharedPreferences(MyPreferences, Context.MODE_PRIVATE);

        if (!sprefs.contains(Random_Password)) {

            String random = randomString(PASSWORD_LENGTH);
            SharedPreferences.Editor editor = sprefs.edit();
            editor.putString(Random_Password, random);
            editor.commit();
        }
    }

    /**
     *
     * This functions generates a random password of the input length
     *
     * @param len length of the random password to be generated
     * @return
     */
    public static String randomString(int len) {
        StringBuilder sb = new StringBuilder(len);

        for (int i = 0; i < len; i++) {
            sb.append(DATA.charAt(RANDOM.nextInt(DATA.length())));
        }
        return sb.toString();
    }

    /**
     *
     * This function checks if any pin is set to secure the device
     *
     * @return boolean true if its secure, false if it is not
     */
    public boolean isSecure(){
        KeyguardManager keyguardManager = (KeyguardManager)getSystemService(Activity.KEYGUARD_SERVICE);
        boolean secure = false; // Default value false for secured device

        try {
            secure = keyguardManager.isDeviceSecure(); // Check if device is secure
        }
        catch (Exception e){
            e.printStackTrace();
        }
        return secure;
    }
}

