package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * Created by daniel on 6/15/17.
 */
@WebServlet(name = "SearchServlet", urlPatterns = "/ads/results")
public class SearchServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void   doGet(HttpServletRequest request, HttpServletResponse response) throws
            ServletException, IOException {
        String searchTerm = request.getParameter("srch-term");
        List<Ad> ads = DaoFactory.getAdsDao().searchResult(searchTerm);
        request.setAttribute("ads", ads);
        request.getRequestDispatcher("/WEB-INF/ads/index.jsp").forward(request, response);
    }

}