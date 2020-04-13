package com.example.credhub;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.util.Log;

public class TitleScreen extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        // Set the UI
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_title_screen);

        // Create the 3 seconds Timer
        Thread timer = new Thread() { // Timer
            public void run() {
                try {
                    sleep(3000);
                    Intent openLogin = new Intent(TitleScreen.this, LoginActivity.class);
                    // After 3 sec go to the MainScreen
                    startActivity(openLogin);
                } catch (InterruptedException e) {
                    Log.i("onCreate", "ERROR - InterruptedException " + e.toString());
                }
            }
        };
        timer.start(); // Start the Timer
    }
}
