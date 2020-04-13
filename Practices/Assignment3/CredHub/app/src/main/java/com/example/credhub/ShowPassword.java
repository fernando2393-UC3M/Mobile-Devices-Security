package com.example.credhub;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;

import static com.example.credhub.LoginActivity.MyPreferences;

public class ShowPassword extends AppCompatActivity {

    SharedPreferences sprefs;

    String finalPass = "";
    String finalUsr = "";
    String finalDes = "";

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_show_password);

        sprefs = getSharedPreferences(MyPreferences, Context.MODE_PRIVATE);

        // Get the description of the element clicked
        finalDes = getIntent().getStringExtra("des");
        finalUsr = getIntent().getStringExtra("usr");
        finalPass = getIntent().getStringExtra("pass");

        TextView text = findViewById(R.id.id);
        text.setText(finalDes);
        text = findViewById(R.id.Username);
        text.setText(finalUsr);
        text = findViewById(R.id.Password);
        text.setText("******");

        // Set button listeners
        setButtons();
    }

    /**
     * Adds the buttons of import and create record to the layout
     */
    private void setButtons() {
        // Get the buttons from the xml
        Button show = findViewById(R.id.ShowButton);
        Button export = findViewById(R.id.ExportButton);
        Button delete = findViewById(R.id.DeleteButton);

        // Add the Click Listeners
        show.setOnClickListener(new View.OnClickListener() { // Show
            @Override
            public void onClick(View view) {
                TextView text = findViewById(R.id.Password);
                text.setText(finalPass);
                new android.os.Handler().postDelayed(
                        new Runnable() {
                            public void run() {
                                TextView text = findViewById(R.id.Password);
                                text.setText("******");
                            }
                        }, 3000);
            }
        });
        String[] aux = {finalDes, finalUsr, finalPass};
        export.setOnClickListener(new ExportListener(this, aux));

        delete.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {

                UserDBHelper helper = new UserDBHelper(getApplicationContext());

                helper.dbDelete(getApplicationContext(), finalDes, sprefs);

                Intent mainAct = new Intent(ShowPassword.this, MainScreen.class);
                startActivity(mainAct);
            }
        });
    }
}
