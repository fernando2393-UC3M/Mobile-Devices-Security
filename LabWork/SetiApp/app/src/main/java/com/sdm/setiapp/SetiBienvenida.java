package com.sdm.setiapp;

import android.content.Intent;
import android.os.Bundle;
import android.support.design.widget.FloatingActionButton;
import android.support.design.widget.Snackbar;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.Toolbar;
import android.view.View;
import android.media.MediaPlayer;

public class SetiBienvenida extends AppCompatActivity {


    MediaPlayer miCancion;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_seti_bienvenida);

        Toolbar toolbar = findViewById(R.id.toolbar);
        setSupportActionBar(toolbar);

        miCancion = MediaPlayer.create(SetiBienvenida.this, R.raw.ontheroadagain);
        miCancion.start();

        Thread reloj = new Thread(){
            public void run(){
                try{
                    sleep(9000);
                }
                catch (InterruptedException e){
                    e.printStackTrace();
                }
                finally {
                    Intent abrirInicio = new Intent(getApplicationContext(), MainActivity.class);
                    startActivity(abrirInicio);
                }
            }
        };

        reloj.start();
    }

}
