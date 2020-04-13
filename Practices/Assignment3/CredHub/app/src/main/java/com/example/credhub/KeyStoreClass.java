package com.example.credhub;

import android.content.Context;
import android.content.SharedPreferences;
import android.security.KeyPairGeneratorSpec;
import android.util.Base64;


import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.math.BigInteger;
import java.nio.charset.StandardCharsets;
import java.security.KeyPairGenerator;
import java.security.KeyStore;
import java.util.ArrayList;
import java.util.Calendar;

import javax.crypto.Cipher;
import javax.crypto.CipherInputStream;
import javax.crypto.CipherOutputStream;
import javax.security.auth.x500.X500Principal;

import static com.example.credhub.LoginActivity.Random_Password;
import static java.security.KeyStore.getInstance;

public class KeyStoreClass {

    static KeyStore keyStore;

    public static final String ANDROID_KEYSTORE = "AndroidKeyStore";


    /**
     * This function loads the keystore in the system
     */
    public void loadKeyStore() {
        try {
            keyStore = getInstance(ANDROID_KEYSTORE);
            keyStore.load(null);
        } catch (Exception e) {
            e.printStackTrace();
        } }

    /**
     *
     * This function generates a pair of public and private keys
     *
     * @param alias Input alias introduced by user
     * @param context Context of the activity
     * @throws Exception
     */
    public void generateNewKeyPair(String alias, Context context) throws Exception {

        Calendar start = Calendar.getInstance();
        Calendar end = Calendar.getInstance();
        // expires 1 year from today
        end.add(Calendar.YEAR, 1);

        KeyPairGeneratorSpec spec = new
                KeyPairGeneratorSpec.Builder(context)
                .setAlias(alias)
                .setSubject(new X500Principal("CN=" + alias))
                .setSerialNumber(BigInteger.TEN)
                .setStartDate(start.getTime())
                .setEndDate(end.getTime())
                .build();

        // use the Android keystore
        KeyPairGenerator gen =
                KeyPairGenerator.getInstance("RSA", ANDROID_KEYSTORE);
        gen.initialize(spec);
        // generates the keypair
        gen.generateKeyPair();
    }

    /**
     *
     * Function to encrypt passwords using RSA
     *
     * @param alias Input alias introduced by user
     * @param sprefs Shared preferences storage
     * @param password database random password to be encrypted
     * @throws Exception
     */
    public void encryptPassword(String alias, SharedPreferences sprefs, String password) throws Exception{

        KeyStore.PrivateKeyEntry privateKeyEntry = (KeyStore.PrivateKeyEntry)keyStore.getEntry(alias, null);

        Cipher cipher = Cipher.getInstance("RSA/ECB/PKCS1Padding");
        cipher.init(Cipher.ENCRYPT_MODE, privateKeyEntry.getCertificate().getPublicKey());

        ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
        CipherOutputStream cipherOutputStream = new CipherOutputStream(outputStream, cipher);
        cipherOutputStream.write(password.getBytes(StandardCharsets.UTF_8));
        cipherOutputStream.close();

        byte [] vals = outputStream.toByteArray();

        String encryptedText = Base64.encodeToString(vals, Base64.DEFAULT);

        SharedPreferences.Editor editor = sprefs.edit();
        editor.putString(Random_Password, encryptedText);
        editor.commit();

    }

    /**
     *
     * Function to decrypt passwords using RSA
     *
     * @param alias Input alias introduced by user
     * @param sprefs Shared preferences storage
     * @return String decrypted password
     * @throws Exception
     */
    public String decryptPassword(String alias, SharedPreferences sprefs) throws Exception{

        KeyStore.PrivateKeyEntry privateKeyEntry = (KeyStore.PrivateKeyEntry)keyStore.getEntry(alias, null);

        Cipher output = Cipher.getInstance("RSA/ECB/PKCS1Padding");
        output.init(Cipher.DECRYPT_MODE, privateKeyEntry.getPrivateKey());

        String cipherText = sprefs.getString(Random_Password, "");

        CipherInputStream cipherInputStream = new CipherInputStream(
                new ByteArrayInputStream(Base64.decode(cipherText, Base64.DEFAULT)), output);
        ArrayList<Byte> values = new ArrayList<>();
        int nextByte;
        while ((nextByte = cipherInputStream.read()) != -1) {
            values.add((byte)nextByte);
        }

        byte[] bytes = new byte[values.size()];

        for(int i = 0; i < bytes.length; i++) {
            bytes[i] = values.get(i);
        }

        return new String(bytes, 0, bytes.length, StandardCharsets.UTF_8);

    }
}
