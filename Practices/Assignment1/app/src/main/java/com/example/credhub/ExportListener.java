package com.example.credhub;

import android.app.Activity;
import android.view.View;

import static com.example.credhub.Constant.EXPORT;

public class ExportListener implements View.OnClickListener {

    private Activity activity; // Caller Activity
    private String[] record; // Record to be exported

    ExportListener(Activity activity, String[] record) {
        this.activity = activity;
        this.record = record;
    }

    @Override
    public void onClick(View view) {
        // Export the record to the server
        TalkToServer myAsync = new TalkToServer(activity);
        myAsync.execute(EXPORT, record[0], record[1], record[2]);
    }
}
