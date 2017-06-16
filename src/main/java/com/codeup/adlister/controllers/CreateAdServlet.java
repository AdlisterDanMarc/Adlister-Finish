package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.File;
import java.io.IOException;
import java.nio.file.Paths;

@WebServlet(name = "controllers.CreateAdServlet", urlPatterns = "/ads/create")
@MultipartConfig(fileSizeThreshold=1024*1024*2,	// 2MB
        maxFileSize=1024*1024*10,		// 10MB
        maxRequestSize=1024*1024*50)	// 50MB

public class CreateAdServlet extends HttpServlet {

    private static final String SAVE_DIR = "img";

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/ads/create.jsp")
            .forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws
            IOException {




//        Implemented File Upload Changes Here

        String appPath = request.getServletContext().getRealPath("");
        String savePath = appPath + File.separator + SAVE_DIR;

        File fileSaveDir = new File(savePath);
        if (!fileSaveDir.exists()) {
            fileSaveDir.mkdir();
        }

        try {
            Part filePart = request.getPart("file"); // Retrieves <input type="file" name="file">
            String fileName = Paths.get(filePart.getSubmittedFileName()).getFileName().toString();
            filePart.write(savePath + File.separator + fileName);

            Ad ad = new Ad(
                    Long.parseLong(request.getSession().getAttribute("id").toString()),
                    request.getParameter("title"),
                    request.getParameter("description"),
                    request.getParameter("phone"),
                    fileName
            );

            DaoFactory.getAdsDao().insert(ad);
            response.sendRedirect("/ads");
        } catch (ServletException e) {
            e.printStackTrace();
        }

        request.setAttribute("imgsuccess", "Upload has been done successfully!");
    }
}
