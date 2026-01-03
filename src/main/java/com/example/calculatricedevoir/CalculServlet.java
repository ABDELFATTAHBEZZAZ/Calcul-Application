package com.example.calculatricedevoir;

import java.io.IOException;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/CalculServlet")
public class CalculServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String nombre1Str = request.getParameter("nombre1");
        String nombre2Str = request.getParameter("nombre2");

        if (nombre1Str == null || nombre1Str.trim().isEmpty() ||
                nombre2Str == null || nombre2Str.trim().isEmpty()) {

            request.setAttribute("erreur", "Veuillez remplir les deux champs numériques.");
            RequestDispatcher dispatcher = request.getRequestDispatcher("resultat.jsp");
            dispatcher.forward(request, response);
            return;
        }

        try {
            double nombre1 = Double.parseDouble(nombre1Str);
            double nombre2 = Double.parseDouble(nombre2Str);

            double somme = nombre1 + nombre2;

            request.setAttribute("nombre1", nombre1);
            request.setAttribute("nombre2", nombre2);
            request.setAttribute("somme", somme);

            RequestDispatcher dispatcher = request.getRequestDispatcher("resultat.jsp");
            dispatcher.forward(request, response);

        } catch (NumberFormatException e) {
            request.setAttribute("erreur", "Erreur : Veuillez entrer des nombres valides.");
            RequestDispatcher dispatcher = request.getRequestDispatcher("resultat.jsp");
            dispatcher.forward(request, response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.sendRedirect("index.html");
    }
}