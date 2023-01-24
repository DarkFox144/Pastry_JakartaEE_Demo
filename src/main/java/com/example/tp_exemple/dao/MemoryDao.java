package com.example.tp_exemple.dao;

import com.example.tp_exemple.entity.User;

import java.util.ArrayList;
import java.util.List;

import static sun.jvm.hotspot.runtime.BasicObjectLock.size;


public class MemoryDao {

    private static List<User> userList = new ArrayList<User>() {{
        add(new User());
        add(new User());
    }};

    public MemoryDao() {
    }

    public boolean create(User user) {
        user.setId(long userList.size() + 1);
        return userList.add(user);
    }

    public List<User> getAll() {
        return userList;
    }

}
