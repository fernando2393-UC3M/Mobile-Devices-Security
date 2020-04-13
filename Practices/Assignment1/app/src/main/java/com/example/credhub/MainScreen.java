package com.example.credhub;

import android.content.Intent;
import android.database.sqlite.SQLiteDatabase;
import android.os.Bundle;
import android.support.design.widget.FloatingActionButton;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.database.*;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.ListView;

import java.util.ArrayList;

import java.util.List;

import data.UserDBHelper;

import static data.UserModel.Description;
import static data.UserModel.Password;
import static data.UserModel.Username;

public class MainScreen extends AppCompatActivity {

    UserDBHelper conn;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        // Set the layout
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main_screen);

        // Add the buttons to the layout
        setButtons();
        // Add the list of records to the layout
        conn = new UserDBHelper(this, "User_DB",null, 1);

        DB_Query();
    }

    private void setButtons() {
        // Get the buttons from the xml
        FloatingActionButton importRecord = findViewById(R.id.importRecord);
        FloatingActionButton addRecord = findViewById(R.id.addRecord);

        // Add the Click Listeners
        addRecord.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent openNewRecord = new Intent(MainScreen.this, NewRecord.class);
                startActivity(openNewRecord);
            }
        });
        importRecord.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent openImportRecord = new Intent(MainScreen.this, ImportRecord.class);
                startActivity(openImportRecord);
            }
        });
    }

    private void DB_Query(){
        final SQLiteDatabase db = conn.getReadableDatabase();
        final Cursor cursor = db.rawQuery("SELECT * FROM User",null);

        List<String> descList = new ArrayList<>();

        if (cursor.moveToFirst()) {
            while (!cursor.isAfterLast()) {
                String descriptor = cursor.getString(cursor.getColumnIndex(Description));
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


                Cursor auxCursor = db.rawQuery("SELECT * FROM User WHERE Description = \""+des+"\"", null);
                String usr = "";
                String pass = "";

                if (auxCursor.moveToFirst()) {
                        usr = auxCursor.getString(auxCursor.getColumnIndex(Username));
                        pass = auxCursor.getString(auxCursor.getColumnIndex(Password));
                }
                auxCursor.close();

                // Send parameters to the new Activity
                Intent openPassword = new Intent(MainScreen.this, ShowPassword.class).putExtra("des", des).putExtra("usr", usr).putExtra("pass", pass);
                startActivity(openPassword);
            }
        });

        // Create ArrayAdapter using the list.
        ArrayAdapter listAdapter = new ArrayAdapter<String>(this, R.layout.record_row, descList);

        // Set the ArrayAdapter as the ListView's adapter.
        records.setAdapter(listAdapter);
    }
}
