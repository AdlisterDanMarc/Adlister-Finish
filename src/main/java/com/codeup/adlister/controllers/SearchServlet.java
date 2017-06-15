package com.codeup.adlister.controllers;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet(name = "controllers.SearchServlet",urlPatterns = "/ads/sresults" )

public class SearchServlet extends HttpServlet {

    protected void   doPost(HttpServletRequest request, HttpServletResponse response) throws
            ServletException, IOException {

    }

    protected void   doGet(HttpServletRequest request, HttpServletResponse response) throws
            ServletException, IOException {

    }

//todo:get input from search bar


 //todo: compare it to ads title  table


// todo: send results to search res JSP
}

