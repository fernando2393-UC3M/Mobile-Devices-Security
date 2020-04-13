package com.example.credhub;

import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;

import static com.example.credhub.Constant.READ;

public class ImportRecord extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_import_record);

        // Get the data from the server
        TalkToServer myAsync = new TalkToServer(this);
        // The thread is the one who sets the Rows as well as the listeners
        myAsync.execute(READ);
    }
}
