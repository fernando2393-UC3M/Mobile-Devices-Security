package com.example.credhub;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;

import static com.example.credhub.LoginActivity.Alias;
import static com.example.credhub.LoginActivity.MyPreferences;
import static com.example.credhub.LoginActivity.Random_Password;


public class KeyGenerator extends AppCompatActivity {

    SharedPreferences sprefs;

    KeyStoreClass keyStore = new KeyStoreClass();

    EditText alias;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_key_generator);

        sprefs = getSharedPreferences(MyPreferences, Context.MODE_PRIVATE);

        keyStore.loadKeyStore(); // Load keystore in activity creation

        /* Database generation */

        Button generateKey = findViewById(R.id.generateKeyPair);

        // Add the Click Listeners
        generateKey.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {

                alias = findViewById(R.id.aliasText);

                SharedPreferences.Editor editor = sprefs.edit();
                editor.putString(Alias, alias.getText().toString());
                editor.commit();

                try {
                    keyStore.generateNewKeyPair(alias.getText().toString(), getApplicationContext()); // Generate keyPair from alias value

                    /* Encryption of stored random password using the public key */

                    keyStore.encryptPassword(alias.getText().toString(), sprefs, sprefs.getString(Random_Password, ""));

                    /* End of encryption */

                    Intent goToMain = new Intent(KeyGenerator.this, MainScreen.class); // Create the needed Intent
                    startActivity(goToMain); // Start the Activity goToMain
                } catch (Exception e){
                    e.printStackTrace();
                }
            }
        });
    }
}
