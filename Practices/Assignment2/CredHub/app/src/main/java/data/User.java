package data;

import android.content.ContentValues;

public class User {

    private String Description;
    private String Username;
    private String Password;

    /**
     * User object constructor
     *
     * @param description id of the user credential
     * @param username stored username
     * @param password stored password
     */
    public User (String description, String username, String password){
        this.Description = description;
        this.Username = username;
        this.Password = password;
    }

    /**
     * Gets the current credential id
     *
     * @return String description
     */
    public String getDescription(){ return this.Description; }


    /**
     * Gets the current credential username
     *
     * @return String username
     */
    public String getUsername(){
        return this.Username;
    }

    /**
     * Gets the current credential password
     *
     * @return String password
     */
    public String getPassword(){
        return this.Password;
    }

    /**
     * Sets description in user object
     *
     * @param description String new description
     */
    public void setDescription(String description){
        this.Description = description;
    }

    /**
     * Sets username in user object
     *
     * @param username String new username
     */
    public void setUsername(String username){
        this.Username = username;
    }

    /**
     * Sets password in user object
     *
     * @param password String new password
     */
    public void setPassword(String password){
        this.Password = password;
    }
}
