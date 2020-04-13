package com.example.credhub;

import android.content.Intent;
import android.database.sqlite.SQLiteDatabase;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;

import data.UserDBHelper;
import data.UserModel;

public class ShowPassword extends AppCompatActivity {

    String finalPass = "";
    String finalUsr = "";
    String finalDes = "";


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_show_password);

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
        show.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                TextView text = findViewById(R.id.Password);
                text.setText(finalPass);
                Log.i("PASSWORD", finalPass);
                new android.os.Handler().postDelayed(
                        new Runnable() {
                            public void run() {
                                TextView text = findViewById(R.id.Password);
                                text.setText("******");
                            }
                        }, 3000);
            }
        });
        // Create listener for the export button
        TextView id = findViewById(R.id.id);
        TextView user = findViewById(R.id.Username);
        TextView password = findViewById(R.id.Password);

        String[] aux = {finalDes, finalUsr, finalPass};
        export.setOnClickListener(new ExportListener(this, aux));

        delete.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {

                UserDBHelper conn = new UserDBHelper(getApplicationContext(), "User_DB", null, 1);

                SQLiteDatabase db = conn.getWritableDatabase();
                db.delete(UserModel.TABLE_NAME, "Description=" + "\"" + finalDes + "\"", null);
                Intent mainAct = new Intent(ShowPassword.this, MainScreen.class);
                startActivity(mainAct);

                db.close();
            }
        });
    }
}
