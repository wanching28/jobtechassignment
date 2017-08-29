// (1) Design a ‘user’ class based on the table above. 
public class User {
        private int userId = 0;
        private String emailId = "";
        private String password = "";	
        private String firstName = "";
        private String lastName = "";
        private boolean enabled;
    
//Default constructor
public User(){
    enabled = false;
}
    
public User (int userId, String emailId, String password,
String firstName, String lastName, boolean enabled)
{
        this.userId = userId;
        this.emailId = emailId;
        this.password = password;
        this.firstName = firstName;
        this.lastName = lastName;
        this.enabled = enabled;
}
        
public int getUserId(){
        return userId;
}

public String getEmailId(){
        return emailId;
}

public String getPassword(){
        return password;
}

public String getFirstName(){
        return firstName;
}

public String getLastName(){
        return lastName;
}

public boolean getEnabled(){
        return enabled;
}
        
// (2) A service method that takes user_id parameter and return user object
User fetchUserInfoById (int user_id) {
        User user = new User();
        try {
                user = fetchUserInfo(user_id);
                return user;
        }
        catch (IOException e) {
                
        }
        return user;
}

}


