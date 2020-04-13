package com.example.credhub;

import android.app.Activity;
import android.content.ContentValues;
import android.content.Intent;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.os.AsyncTask;
import android.util.Log;
import android.widget.ArrayAdapter;
import android.widget.ListView;
import android.widget.Toast;

import org.ksoap2.HeaderProperty;
import org.ksoap2.SoapEnvelope;
import org.ksoap2.serialization.PropertyInfo;
import org.ksoap2.serialization.SoapObject;
import org.ksoap2.serialization.SoapPrimitive;
import org.ksoap2.serialization.SoapSerializationEnvelope;
import org.ksoap2.transport.HttpTransportSE;
import org.xmlpull.v1.XmlPullParserException;

import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Vector;

import data.UserDBHelper;
import data.UserModel;

import static com.example.credhub.Constant.DEBUG;
import static com.example.credhub.Constant.EXPORT;
import static com.example.credhub.Constant.IMPORT;
import static com.example.credhub.Constant.READ;
import static com.example.credhub.Constant.URL;
import static com.example.credhub.Constant.WS_METHOD_EXPORT;
import static com.example.credhub.Constant.WS_METHOD_IMPORT;
import static com.example.credhub.Constant.WS_METHOD_LIST;
import static com.example.credhub.Constant.WS_NAMESPACE;

public class TalkToServer extends AsyncTask<String, String, String> {
    // Variables needed to perform the connection
    private static HttpTransportSE androidHttpTransport; // sudo java --add-modules java.se.ee -jar SDM_WebRepo.jar http
    private static List<HeaderProperty> headerList_basicAuth;

    private String[] response; // Response from the server
    private WeakReference<Activity> callerActivity; // The main activity
    private String operation; // Operation to be performed

    TalkToServer(Activity activity) {
        callerActivity = new WeakReference<>(activity);
    }

    @Override
    protected void onPreExecute() {
        super.onPreExecute();
    }

    @Override
    protected String doInBackground(String... values) {
        // Perform the connection to the server
        connectServer();
        // Check the operation we are going to execute
        if (values != null) {
            operation = values[0];
            // Check which operation is the desired one
            switch (operation) {
                case EXPORT:
                    if (values.length > 3) { // Check correct response's structure
                        exportRecord(values[1], values[2], values[3]);
                    }
                    break;
                case READ:
                    response = readRecords();
                    break;
                case IMPORT:
                    response = importRecord(values[1]);
                    break;
                default:
                    Log.i("DoInBackground", "Wrong operation");
                    return null;
            }
            return "Correct";
        }
        return null;
    }

    @Override
    protected void onProgressUpdate(String... values) {
        super.onProgressUpdate(values);
    }

    @Override
    protected void onPostExecute(String result) {
        // Update UI if needed after an operation is performed
        if (operation != null) {
            switch (operation) {
                case EXPORT:
                    postExport();
                    break;
                case READ:
                    postRead();
                    break;
                case IMPORT:
                    postImport();
                    break;
                default:
                    Log.i("onPostExecute", "Wrong operation");
            }
        }
    }

    /**
     * Perform the connection to the server
     */
    private void connectServer() {
        // Set HTTP URL
        androidHttpTransport = new HttpTransportSE(URL);
        // No authentication
        headerList_basicAuth = null;
    }

    /**
     * Giving the id of a record, it is sent a request to the server for the other data of the record
     *
     * @param id: identifier of the record
     * @return Array String with the response of the server. In case of error null is returned
     */
    private String[] importRecord(String id) {
        try {
            androidHttpTransport = new HttpTransportSE(URL);

            // Set the request to the server
            SoapObject request = new SoapObject(WS_NAMESPACE, WS_METHOD_IMPORT);
            PropertyInfo propId = new PropertyInfo();
            propId.name = "arg0";
            propId.setValue(id); // Use of the given id
            propId.type = PropertyInfo.STRING_CLASS;
            request.addProperty(propId);
            SoapSerializationEnvelope envelope = new SoapSerializationEnvelope(SoapEnvelope.VER11);
            envelope.setOutputSoapObject(request);
            androidHttpTransport.call("\"" + WS_NAMESPACE + WS_METHOD_IMPORT + "\"", envelope, headerList_basicAuth);
            // Get the response
            Vector<SoapPrimitive> importedRecord = (Vector<SoapPrimitive>) envelope.getResponse();
            if (importedRecord.size() == 3) {
                if (DEBUG) { // Print for debugging
                    Log.i("Import", "Record imported successfully");
                    Log.i("Import", "ID: " + importedRecord.get(0));
                    Log.i("Import", "Username: " + importedRecord.get(1));
                    Log.i("Import", "Password: " + importedRecord.get(2));
                }
                // Return the response as an Array of Strings
                return new String[]{importedRecord.get(0).toString(), importedRecord.get(1).toString(), importedRecord.get(2).toString()};
            } else
                System.out.println("Import error - " + importedRecord.get(0));
        } catch (Exception ex) {
            System.out.println("ERROR - " + ex.toString());
        }
        return null; // Error case
    }

    /**
     * Update the UI after performing an import
     */
    private void postImport() {
        if (DEBUG) {
            Log.i(" PostImport", response[0]); //ID
            Log.i(" PostImport", response[1]); //Username
            Log.i(" PostImport", response[2]); //Password
        }
        Activity activity = callerActivity.get(); // Caller activity
        if (activity != null) {
            UserDBHelper conn;
            conn = new UserDBHelper(callerActivity.get().getApplicationContext(), "User_DB", null, 1);

            SQLiteDatabase db = conn.getReadableDatabase(); // Read to check if new record or update

            Cursor cursor = db.rawQuery("SELECT * FROM User WHERE Description = \"" + response[0] + "\"", null);

            if (cursor.moveToFirst()) { // Update

                db = conn.getWritableDatabase();

                ContentValues values = new ContentValues();
                values.put(UserModel.Description, response[0]);
                values.put(UserModel.Username, response[1]);
                values.put(UserModel.Password, response[2]);

                int outcome = db.update(UserModel.TABLE_NAME, values, "Description=" + "\"" + response[0] + "\"", null);
                Toast.makeText(callerActivity.get().getApplicationContext(), "Record " + outcome + " Updated", Toast.LENGTH_SHORT).show();

            } else {

                db = conn.getWritableDatabase();

                ContentValues values = new ContentValues();
                values.put(UserModel.Description, response[0]);
                values.put(UserModel.Username, response[1]);
                values.put(UserModel.Password, response[2]);

                Long outcome = db.insert(UserModel.TABLE_NAME, UserModel.Description, values);
                Toast.makeText(callerActivity.get().getApplicationContext(), "Register ID: " + outcome, Toast.LENGTH_SHORT).show();
            }

            cursor.close();
            db.close();

            Intent goToMain = new Intent(callerActivity.get().getApplicationContext(), MainScreen.class);
            callerActivity.get().getApplicationContext().startActivity(goToMain);
            callerActivity.get().finish();
        }
    }

    /**
     * Read the records from the web server
     *
     * @return the response as an array of Strings
     */
    private String[] readRecords() {
        try {
            // Read list of all record identifiers stored on the repository
            SoapObject request = new SoapObject(WS_NAMESPACE, WS_METHOD_LIST);
            SoapSerializationEnvelope envelope = new SoapSerializationEnvelope(SoapEnvelope.VER11);
            envelope.setOutputSoapObject(request);
            androidHttpTransport.call("\"" + WS_NAMESPACE + WS_METHOD_LIST + "\"", envelope, headerList_basicAuth);

            Vector<SoapPrimitive> listIds = new Vector<SoapPrimitive>();
            if (envelope.getResponse() instanceof Vector) // 2+ elements
                listIds.addAll((Vector<SoapPrimitive>) envelope.getResponse());
            else if (envelope.getResponse() instanceof SoapPrimitive) // 1 element
                listIds.add((SoapPrimitive) envelope.getResponse());
            if (DEBUG) {
                System.out.println("List of records stored on the repo: ");
                for (int i = 0; i < listIds.size(); i++) {
                    Log.i("ReadRecord", "- " + listIds.get(i).toString());
                }
            }

            // Convert the response to an array of Strings
            String[] responseStr = new String[listIds.size()];
            for (int i = 0; i < listIds.size(); i++) {
                responseStr[i] = listIds.get(i).toString();
            }
            return responseStr;

            // Errors
        } catch (IOException e) {
            e.printStackTrace();
        } catch (XmlPullParserException e) {
            e.printStackTrace();
        }
        return null;
    }

    /**
     * Update the UI after performing a read
     */
    private void postRead() {
        final Activity activity = callerActivity.get(); // Caller activity
        if (activity != null) {
            // Find the ListView resource
            final ListView records = activity.findViewById(R.id.list);
            // set the Listener to each row
            records.setOnItemClickListener(new ImportListener((Activity) activity));
            // Create and populate the List
            ArrayList<String> planetList = new ArrayList<String>(Arrays.asList(response));
            // Create ArrayAdapter using the planet list.
            ArrayAdapter listAdapter = new ArrayAdapter<String>(activity, R.layout.record_row, planetList);
            // Set the ArrayAdapter as the ListView's adapter.
            records.setAdapter(listAdapter);
        }
    }

    /**
     * Exports a record from the local memory to the web
     *
     * @param id
     * @param username
     * @param password
     */
    private void exportRecord(String id, String username, String password) {
        try {
            // Create the request
            SoapObject request = new SoapObject(WS_NAMESPACE, WS_METHOD_EXPORT);
            // Set the ID
            PropertyInfo propId = new PropertyInfo();
            propId.name = "arg0";
            propId.setValue(id);
            propId.type = PropertyInfo.STRING_CLASS;
            request.addProperty(propId);
            // Set the username
            PropertyInfo propUser = new PropertyInfo();
            propUser.name = "arg1";
            propUser.setValue(username);
            propUser.type = PropertyInfo.STRING_CLASS;
            request.addProperty(propUser);
            // Set the password
            PropertyInfo propPass = new PropertyInfo();
            propPass.name = "arg2";
            propPass.setValue(password);
            propPass.type = PropertyInfo.STRING_CLASS;
            request.addProperty(propPass);

            SoapSerializationEnvelope envelope = new SoapSerializationEnvelope(SoapEnvelope.VER11);
            envelope.setOutputSoapObject(request);
            // Call the server
            String soapAction = "\"" + WS_NAMESPACE + WS_METHOD_EXPORT + "\"";
            androidHttpTransport.call(soapAction, envelope, headerList_basicAuth);
        } catch (IOException e) {
            e.printStackTrace();
        } catch (XmlPullParserException e) {
            e.printStackTrace();
        }
    }

    /**
     * Once that the export has been performed, the user goes to the Main Screen
     */
    private void postExport() {
        Intent goToMain = new Intent(callerActivity.get().getApplicationContext(), MainScreen.class);
        callerActivity.get().getApplicationContext().startActivity(goToMain);
        callerActivity.get().finish();
    }
}
