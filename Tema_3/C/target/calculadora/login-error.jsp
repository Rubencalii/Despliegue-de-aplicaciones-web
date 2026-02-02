<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Error de Login - Calculadora DAW</title>
    <link rel="stylesheet" href="css/estilo.css">
</head>
<body>
    <div class="container login-container">
        <div class="login-header error">
            <h1>Error de Autenticacion</h1>
        </div>
        
        <div class="error-box">
            <p><strong>Usuario o contraseña incorrectos</strong></p>
            <p>Por favor, verifica tus credenciales e intenta de nuevo.</p>
        </div>
        
        <div class="info-box">
            <h3>Recuerda</h3>
            <ul>
                <li>El nombre de usuario distingue mayúsculas y minúsculas</li>
                <li>Verifica que no tengas el bloqueo de mayúsculas activado</li>
                <li>Si olvidaste tu contraseña, contacta con el administrador</li>
            </ul>
        </div>
        
        <div class="buttons">
            <a href="login.jsp" class="btn btn-primary">Intentar de nuevo</a>
        </div>
        
        <div class="info-box" style="margin-top: 20px;">
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