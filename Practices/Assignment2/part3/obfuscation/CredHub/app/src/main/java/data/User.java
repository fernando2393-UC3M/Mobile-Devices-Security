package data;

public class User {

    private String Description;
    private String Username;
    private String Password;

    public User (String description, String username, String password){
        this.Description = description;
        this.Username = username;
        this.Password = password;
    }

    public String getDescription(){ return this.Description; }

    public String getUsername(){
        return this.Username;
    }

    public String getPassword(){
        return this.Password;
    }

    public void setDescription(String description){
        this.Description = description;
    }

    public void setUsername(String username){
        this.Username = username;
    }

    public void setPassword(String password){
        this.Password = password;
    }
}
