package app.model;

import app.entities.User;

import java.util.ArrayList;
import java.util.List;

public class Model {

    private static Model instance = new Model();
    private List<User> model;

    public static Model getInstance() {
        if (instance == null) {
            synchronized (Model.class) {
                if (instance == null) {
                    instance = new Model();
                }
            }
        }
        return instance;
    }

    private Model(){
        model = new ArrayList<User>();
    }

    public void add(User user){
        model.add(user);
    }

    public List<String> list(){
        List<String> newList = new ArrayList<String>(model.size());
        for(User user : model){
          newList.add(user != null ? user.toString() : null);
       }
       return newList;
    }
    public void delete(User user){
        model.remove(user);
    }
}
