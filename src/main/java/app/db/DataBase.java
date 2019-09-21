package app.db;

import app.entities.User;

import java.util.ArrayList;
import java.util.List;

public class DataBase {

    private static DataBase instance = new DataBase();
    private List<User> usersList;

    public static DataBase getInstance() {
        if (instance == null) {
            synchronized (DataBase.class) {
                if (instance == null) {
                    instance = new DataBase();
                }
            }
        }
        return instance;
    }

    private DataBase() {
        usersList = new ArrayList<User>();
    }

    public void add(User user) {
        usersList.add(user);
    }

    public List<String> list() {
        List<String> newList = new ArrayList<String>(usersList.size());
        for (User user : usersList) {
            newList.add(user != null ? user.toString() : null);
        }
        return newList;
    }

    public void delete(User user) {
        usersList.remove(user);
    }
}
