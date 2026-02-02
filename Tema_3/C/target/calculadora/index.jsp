<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Calculadora DAW - Practica Tema 3</title>
    <link rel="stylesheet" href="css/estilo.css">
</head>
<body>
    <div class="container">
        <h1>Calculadora DAW</h1>
        
        <div class="user-panel">
            <p>Bienvenido, <strong><%= request.getRemoteUser() %></strong></p>
            <% if (request.isUserInRole("calc_full")) { %>
                <span class="badge badge-full">Acceso Completo</span>
            <% } else if (request.isUserInRole("calc_basic")) { %>
                <span class="badge badge-basic">Acceso Básico</span>
            <% } %>
        </div>
        

        <form action="calcular" method="POST" class="calculator-form">
            <div class="input-group">
                <label for="num1">Primer número:</label>
                <input type="number" id="num1" name="num1" step="any" required 
                       placeholder="Ej: 10">
            </div>
            
            <div class="input-group">
                <label for="operacion">Operación:</label>
                <select id="operacion" name="operacion" required>
                    <option value="">-- Selecciona --</option>
                    <option value="sumar">+ Sumar</option>
                    <option value="restar">- Restar</option>
                    <% if (request.isUserInRole("calc_full")) { %>
                        <option value="multiplicar">* Multiplicar</option>
                        <option value="dividir">/ Dividir</option>
                    <% } %>
                </select>
            </div>
            
            <div class="input-group">
                <label for="num2">Segundo número:</label>
                <input type="number" id="num2" name="num2" step="any" required 
                       placeholder="Ej: 5">
            </div>
            
            <button type="submit" class="btn btn-primary">Calcular</button>
        </form>
        

        <div class="info-box">
            <h3>Información de tu cuenta</h3>
            <% if (request.isUserInRole("calc_full")) { %>
                <p>Tienes acceso a <strong>todas las operaciones</strong>:</p>
                <ul>
                    <li>+ Suma</li>
                    <li>- Resta</li>
                    <li>* Multiplicacion</li>
                    <li>/ Division</li>
                </ul>
            <% } else if (request.isUserInRole("calc_basic")) { %>
                <p>Tu cuenta tiene <strong>acceso basico</strong>:</p>
                <ul>
                    <li>+ Suma</li>
                    <li>- Resta</li>
                </ul>
                <p class="tip"> Contacta con el administrador para obtener acceso completo.</p>
            <% } %>
        </div>
        
        <div class="footer-actions">
            <a href="logout.jsp" class="btn btn-danger">Cerrar sesion</a>
        </div>
    </div>
    
    <footer>
        <p>Practica Tema 3 - Despliegue de Aplicaciones Web - DAW</p>
    </footer>
</body>
</html>