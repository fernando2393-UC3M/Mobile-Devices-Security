package com.example.credhub;

import android.content.Context;
import android.content.Intent;

import net.sqlcipher.Cursor;

import android.content.SharedPreferences;
import android.os.Bundle;
import android.support.design.widget.FloatingActionButton;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.ListView;

import java.util.ArrayList;

import java.util.List;

import static com.example.credhub.LoginActivity.MyPreferences;
import static com.example.credhub.LoginActivity.Random_Password;


public class MainScreen extends AppCompatActivity {

    SharedPreferences sprefs;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        // Set the layout
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main_screen);

        sprefs = getSharedPreferences(MyPreferences, Context.MODE_PRIVATE);

        // Add the buttons to the layout
        setButtons();
        // Add the list of records to the layout

        DB_Query();
    }

    /**
     * Add the Buttons to the UI
     * Assign the corresponding listener to each one
     */
    private void setButtons() {
        // Get the buttons from the xml
        FloatingActionButton importRecord = findViewById(R.id.importRecord);
        FloatingActionButton addRecord = findViewById(R.id.addRecord);

        // Add the Click Listeners
        addRecord.setOnClickListener(new View.OnClickListener() { // Add
            @Override
            public void onClick(View view) {
                Intent openNewRecord = new Intent(MainScreen.this, NewRecord.class); // Create the needed Intent
                startActivity(openNewRecord); // Start the Activity NewRecord
            }
        });
        importRecord.setOnClickListener(new View.OnClickListener() { // Import
            @Override
            public void onClick(View view) {
                Intent openImportRecord = new Intent(MainScreen.this, ImportRecord.class); // Create the needed Intent
                startActivity(openImportRecord); // Start the Activity ImportRecord
            }
        });
    }


    /**
     * Query to database for getting a user credential
     */
    private void DB_Query() {

        final UserDBHelper helper = new UserDBHelper(this);
        final Cursor cursor = helper.dbGetAll(this, sprefs);

        List<String> descList = new ArrayList<>();

        if (cursor.moveToFirst()) {
            while (!cursor.isAfterLast()) {
                String descriptor = cursor.getString(cursor.getColumnIndex(Constant.DESCRIPTION));
                descList.add(descriptor);
                cursor.moveToNext();
            }
        }

        cursor.close();

        ListView records = findViewById(R.id.list);

        records.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            @Override
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long l) {

                // Get the position of the table which has been clicked
                int position = adapterView.getPositionForView(view);
                // Get the description of the element clicked
                String des = adapterView.getItemAtPosition(position).toString();

                Cursor auxCursor = helper.dbGetCredential(getApplicationContext(), des, sprefs);
                String usr = "";
                String pass = "";

                if (auxCursor.moveToFirst()) {
                    usr = auxCursor.getString(auxCursor.getColumnIndex(Constant.USERNAME));
                    pass = auxCursor.getString(auxCursor.getColumnIndex(Constant.DB_PASSWORD));
                }
                auxCursor.close();

                // Send parameters to the new Activity
                Intent openPassword = new Intent(MainScreen.this, ShowPassword.class).putExtra("des", des).putExtra("usr", usr).putExtra("pass", pass);
                startActivity(openPassword);
            }
        });

        // Create ArrayAdapter using the list.
        ArrayAdapter listAdapter = new ArrayAdapter<>(this, R.layout.record_row, descList);

        // Set the ArrayAdapter as the ListView's adapter.
        records.setAdapter(listAdapter);
    }
}
