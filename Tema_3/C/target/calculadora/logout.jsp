<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    // Invalidar la sesión del usuario
    session.invalidate();
%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sesion Cerrada - Calculadora DAW</title>
    <link rel="stylesheet" href="css/estilo.css">
    <!-- Redirección automática después de 3 segundos -->
    <meta http-equiv="refresh" content="3;url=login.jsp">
</head>
<body>
    <div class="container login-container">
        <div class="login-header success">
            <h1>Nos vemos</h1>
        </div>
        
        <div class="success-box">
            <p><strong>Tu sesión ha sido cerrada correctamente</strong></p>
            <p>Gracias por usar la Calculadora DAW.</p>
        </div>
        
        <div class="info-box">
            <p>Seras redirigido a la página de login en <strong>3 segundos</strong>...</p>
        </div>
        
        <div class="buttons">
            <a href="login.jsp" class="btn btn-primary">Iniciar sesion de nuevo</a>
        </div>
    </div>
    
    <footer>
        <p>Practica Tema 3 - Despliegue de Aplicaciones Web - DAW</p>
    </footer>
</body>
</html>