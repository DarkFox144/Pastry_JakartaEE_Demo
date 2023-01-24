package com.example.tp_exemple.servlet;

import com.example.tp_exemple.dao.MemoryDao;
import com.example.tp_exemple.entity.User;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

public class UserListServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        MemoryDao dao = new MemoryDao();
        List<User> UserList = dao.getAll();
        req.setAttribute("users", UserList);
        RequestDispatcher rd = req.getRequestDispatcher("/WEB-INF/user-list.jsp");
        rd.forward(req, resp);
    }
}
