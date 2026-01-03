<%--
  Created by IntelliJ IDEA.
  User: SARA
  Date: 12/10/2025
  Time: 14:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Résultat du Calcul</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            padding: 50px 20px;
        }

        .container {
            max-width: 500px;
            margin: 0 auto;
            background: white;
            padding: 30px;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
        }

        h1 {
            color: #2c3e50;
            margin-bottom: 25px;
            font-size: 24px;
        }

        .result-box {
            background-color: #d4edda;
            border: 1px solid #c3e6cb;
            border-radius: 3px;
            padding: 20px;
            margin-bottom: 20px;
        }

        .error-box {
            background-color: #f8d7da;
            border: 1px solid #f5c6cb;
            border-radius: 3px;
            padding: 20px;
            margin-bottom: 20px;
        }

        .error-message {
            color: #721c24;
            font-size: 16px;
        }

        .info-line {
            margin: 10px 0;
            color: #333;
            font-size: 15px;
        }

        .operation {
            margin: 15px 0;
            padding: 15px;
            background-color: #e8f5e9;
            text-align: center;
            font-size: 18px;
            color: #2e7d32;
            border-radius: 3px;
        }

        .final-result {
            background-color: #27ae60;
            color: white;
            padding: 15px;
            text-align: center;
            font-size: 20px;
            font-weight: bold;
            border-radius: 3px;
            margin-top: 15px;
        }

        .btn-back {
            display: inline-block;
            width: 100%;
            padding: 12px;
            background-color: #3498db;
            color: white;
            text-align: center;
            text-decoration: none;
            border-radius: 3px;
            margin-top: 20px;
            font-size: 15px;
        }

        .btn-back:hover {
            background-color: #2980b9;
        }
    </style>
</head>
<body>
<div class="container">
    <h1>Résultat du Calcul</h1>

    <%
        String erreur = (String) request.getAttribute("erreur");

        if (erreur != null) {
    %>
    <div class="error-box">
        <div class="error-message">
            Erreur : <%= erreur %>
        </div>
    </div>
    <%
    } else {
        Double nombre1 = (Double) request.getAttribute("nombre1");
        Double nombre2 = (Double) request.getAttribute("nombre2");
        Double somme = (Double) request.getAttribute("somme");
    %>
    <div class="result-box">
        <div class="info-line">
            <strong>Premier nombre :</strong> <%= nombre1 %>
        </div>
        <div class="info-line">
            <strong>Deuxième nombre :</strong> <%= nombre2 %>
        </div>


        <div class="final-result">
            Résultat : <%= somme %>
        </div>
    </div>
    <%
        }
    %>

    <a href="index.html" class="btn-back">Nouveau calcul</a>
</div>
</body>
</html>