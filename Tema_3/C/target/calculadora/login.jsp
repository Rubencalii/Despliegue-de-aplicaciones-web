<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Iniciar Sesion - Calculadora DAW</title>
    <link rel="stylesheet" href="css/estilo.css">
</head>
<body>
    <div class="container login-container">
        <div class="login-header">
            <h1>Iniciar Sesion</h1>
            <p>Calculadora DAW - Práctica Tema 3</p>
        </div>
        
        <form action="j_security_check" method="POST" class="login-form">
            <div class="input-group">
                <label for="j_username">Usuario:</label>
                <input type="text" id="j_username" name="j_username" 
                       required placeholder="Introduce tu usuario"
                       autocomplete="username">
            </div>
            
            <div class="input-group">
                <label for="j_password">Contraseña:</label>
                <input type="password" id="j_password" name="j_password" 
                       required placeholder="Introduce tu contraseña"
                       autocomplete="current-password">
            </div>
            
            <button type="submit" class="btn btn-primary btn-full">
                Iniciar Sesión
            </button>
        </form>
        
        <div class="info-box">
            <h3>Usuarios de prueba</h3>
            <table class="users-table">
                <tr>
                    <th>Usuario</th>
                    <th>Contraseña</th>
                    <th>Rol</th>
                </tr>
                <tr>
                    <td><code>basic_user</code></td>
                    <td><code>123</code></td>
                    <td><span class="badge badge-basic">Básico</span></td>
                </tr>
                <tr>
                    <td><code>full_user</code></td>
                    <td><code>321</code></td>
                    <td><span class="badge badge-full">Completo</span></td>
                </tr>
            </table>
        </div>
    </div>
    
    <footer>
        <p>Practica Tema 3 - Despliegue de Aplicaciones Web - DAW</p>
    </footer>
</body>
</html>