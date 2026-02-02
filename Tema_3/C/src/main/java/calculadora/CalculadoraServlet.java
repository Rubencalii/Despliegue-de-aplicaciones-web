package calculadora;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Servlet de Calculadora - Práctica Tema 3 DAW
 * 
 * Este servlet procesa las operaciones matemáticas:
 * - Usuarios con rol calc_basic: suma y resta
 * - Usuarios con rol calc_full: suma, resta, multiplicación y división
 * 
 * @author Estudiante DAW
 * @version 1.0
 */
@WebServlet("/calcular")
public class CalculadoraServlet extends HttpServlet {
    
    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        try {
            // Obtener parámetros del formulario
            String num1Str = request.getParameter("num1");
            String num2Str = request.getParameter("num2");
            String operacion = request.getParameter("operacion");
            
            // Validar que los parámetros no sean nulos
            if (num1Str == null || num2Str == null || operacion == null) {
                enviarError(out, "Faltan parametros, completa todos los parametros.");
                return;
            }
            
            // Parsear números
            double num1, num2;
            try {
                num1 = Double.parseDouble(num1Str);
                num2 = Double.parseDouble(num2Str);
            } catch (NumberFormatException e) {
                enviarError(out, "Los valores introducidos no son numeros validos.");
                return;
            }
            
            // Verificar permisos según el rol del usuario
            boolean esUsuarioBasico = request.isUserInRole("calc_basic");
            boolean esUsuarioCompleto = request.isUserInRole("calc_full");
            
            // Validar operación según rol
            if (esUsuarioBasico && !esUsuarioCompleto) {
                if (operacion.equals("multiplicar") || operacion.equals("dividir")) {
                    enviarError(out, " No tienes permisos para realizar esta operacion. " +
                                    "Tu rol solo permite suma y resta.");
                    return;
                }
            }
            
            // Calcular resultado
            double resultado = 0;
            String simbolo = "";
            
            switch (operacion) {
                case "sumar":
                    resultado = num1 + num2;
                    simbolo = "+";
                    break;
                case "restar":
                    resultado = num1 - num2;
                    simbolo = "-";
                    break;
                case "multiplicar":
                    resultado = num1 * num2;
                    simbolo = "x";
                    break;
                case "dividir":
                    if (num2 == 0) {
                        enviarError(out, "No se puede dividir entre cero.");
                        return;
                    }
                    resultado = num1 / num2;
                    simbolo = "÷";
                    break;
                default:
                    enviarError(out, "Operacion no valida.");
                    return;
            }
            
            // Mostrar resultado con estilo
            String usuario = request.getRemoteUser();
            enviarResultado(out, num1, num2, simbolo, resultado, usuario);
            
        } catch (Exception e) {
            enviarError(out, "Error inesperado: " + e.getMessage());
        }
    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        // Redirigir al index si acceden por GET
        response.sendRedirect("index.jsp");
    }
    
    /**
     * Envía una página de error al usuario
     */
    private void enviarError(PrintWriter out, String mensaje) {
        out.println("<!DOCTYPE html>");
        out.println("<html lang='es'>");
        out.println("<head>");
        out.println("  <meta charset='UTF-8'>");
        out.println("  <meta name='viewport' content='width=device-width, initial-scale=1.0'>");
        out.println("  <title>Error - Calculadora</title>");
        out.println("  <link rel='stylesheet' href='css/estilo.css'>");
        out.println("</head>");
        out.println("<body>");
        out.println("  <div class='container'>");
        out.println("    <h1>Error</h1>");
        out.println("    <div class='error-box'>");
        out.println("      <p>" + mensaje + "</p>");
        out.println("    </div>");
        out.println("    <a href='index.jsp' class='btn'>Volver a la calculadora</a>");
        out.println("  </div>");
        out.println("</body>");
        out.println("</html>");
    }
    
    /**
     * Envía el resultado de la operación al usuario
     */
    private void enviarResultado(PrintWriter out, double num1, double num2, 
                                  String simbolo, double resultado, String usuario) {
        out.println("<!DOCTYPE html>");
        out.println("<html lang='es'>");
        out.println("<head>");
        out.println("  <meta charset='UTF-8'>");
        out.println("  <meta name='viewport' content='width=device-width, initial-scale=1.0'>");
        out.println("  <title>Resultado - Calculadora</title>");
        out.println("  <link rel='stylesheet' href='css/estilo.css'>");
        out.println("</head>");
        out.println("<body>");
        out.println("  <div class='container'>");
        out.println("    <h1>Resultado</h1>");
        out.println("    <p class='user-info'>Usuario: <strong>" + usuario + "</strong></p>");
        out.println("    <div class='resultado-box'>");
        out.println("      <p class='operacion'>" + num1 + " " + simbolo + " " + num2 + "</p>");
        out.println("      <p class='igual'>=</p>");
        out.println("      <p class='resultado'>" + resultado + "</p>");
        out.println("    </div>");
        out.println("    <div class='buttons'>");
        out.println("      <a href='index.jsp' class='btn'>Nueva operacion</a>");
        out.println("      <a href='logout.jsp' class='btn btn-danger'>Cerrar sesion</a>");
        out.println("    </div>");
        out.println("  </div>");
        out.println("</body>");
        out.println("</html>");
    }
}