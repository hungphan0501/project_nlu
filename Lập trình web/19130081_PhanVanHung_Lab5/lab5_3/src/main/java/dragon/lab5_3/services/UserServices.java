package dragon.lab5_3.services;

import java.util.HashMap;
import java.util.Map;

public class UserServices {
    private  static UserServices instance;

    private static Map<String , String> users = new HashMap<>();
    static {
        users.put("admin", "admin");
        users.put("user", "user");
        users.put("ti", "123");
    }
    private UserServices() {

    }

    public static UserServices getInstance(){
        if (instance == null) {
            instance = new UserServices();
        }
        return instance;
    }
    public static boolean checkLogin(String username, String password) {
        if (users.containsKey(username) && users.get(username).equals(password)) {
            return true;
        }
        return false;

    }

    public boolean register(String username, String password, String confirm, String phone) {
        if(users.containsKey(username)) {
            return false;
        }
        else {
            users.put(username,password);
        }
        return true;
    }
}
