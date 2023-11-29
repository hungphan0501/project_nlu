package dragon.lab5_4.services;
import java.util.HashMap;
import java.util.Map;

public class UserServices {
    private  static UserServices instance;

    private static Map<String , String> users = new HashMap<>();
    static {
        users.put("admin", "19130081@st.hcmuaf.edu.vn");
        users.put("user", "user@gmail.com");
        users.put("hungphan", "hungphan@gmail.com");
    }
    private UserServices() {

    }

    public static UserServices getInstance(){
        if (instance == null) {
            instance = new UserServices();
        }
        return instance;
    }
    public static boolean checkLogin(String username, String email) {
        if (users.containsKey(username) && users.get(username).equals(email)) {
            return true;
        }
        return false;

    }
}
