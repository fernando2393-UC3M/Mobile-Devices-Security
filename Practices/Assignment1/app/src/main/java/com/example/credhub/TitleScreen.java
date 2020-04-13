package com.example.credhub;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;

public class TitleScreen extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        // Set the UI
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_title_screen);

        // Create the 3 seconds Timer
        Thread timer = new Thread() {
            public void run() {
                try {
                    sleep(3000);
                    Intent openMain = new Intent(TitleScreen.this, MainScreen.class);
                    // After 3 sec go to the MainScreen
                    startActivity(openMain);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
            }
        };
        // Start the Timer
        timer.start();
    }
}
