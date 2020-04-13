package com.example.credhub;

import android.app.Activity;
import android.view.View;
import android.widget.AdapterView;

import static com.example.credhub.Constant.IMPORT;

public class ImportListener implements AdapterView.OnItemClickListener {

    private Activity activity; // Caller Activity

    ImportListener(Activity activity) {
        this.activity = activity;
    }

    @Override
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long l) {
        // Get the position of the table which has been clicked
        int position = adapterView.getPositionForView(view);
        // Get the description of the element clicked
        String des = adapterView.getItemAtPosition(position).toString();
        // Export the record to the server
        TalkToServer myAsync = new TalkToServer(activity);
        myAsync.execute(IMPORT, des);
    }
}
