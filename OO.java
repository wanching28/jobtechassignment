// (1) Design a ‘user’ class based on the table above. 
public class User {
        private int user_id = 0;
        private String email_id = "";
        private String password = "";	
        private String first_name = "";
        private String last_name = "";
        private boolean enabled;
    
//Default constructor
public User(){
    enabled = false;
}
    
// (2) A service method that takes user_id parameter and return user object
User fetchUserInfoById (int user_id) {
        User user = new User();
        user = fetchUserInfo(user_id);
        return user;
    }
}

public class MyApplication {
    
    public static void main(String[] args)
    {
            int userid = 101;
            User user = new User();
            user = user.fetchUserInfoById(userid);
    }
}


