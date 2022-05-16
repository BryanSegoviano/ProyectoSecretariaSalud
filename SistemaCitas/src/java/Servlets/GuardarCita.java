package Servlets;

import accesoDatos.CitaJpaController;
import accesoDatos.ConsultaHabitante;
import dominio.Cita;
import dominio.Habitante;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class GuardarCita extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            response.setContentType("text/html;charset=UTF-8");
            PrintWriter out = response.getWriter();

            EntityManagerFactory et = Persistence.createEntityManagerFactory("SistemaCitasPU");
            CitaJpaController citasDao = new CitaJpaController(et);

            String identificadorDoctor = request.getParameter("identificadorDoctor");
            String identificadorHabitante = request.getParameter("identificadorHabitante");
            
            String fechaString = request.getParameter("fecha");
            String fechaConversion = fechaString + ":00";
            System.out.println(fechaConversion);
            Timestamp fechaHora = Timestamp.valueOf(fechaConversion.replace("T"," "));          
            
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<body>");

            ConsultaHabitante consultaHabitante = new ConsultaHabitante();
            String citaid = (String) request.getAttribute("identificadorHabitante");
            Habitante habitante = consultaHabitante.obtenerHabitantePorID(citaid);
            
            Cita cita = new Cita(Integer.parseInt(identificadorDoctor), identificadorHabitante, fechaHora);
            citasDao.create(cita);
            out.println("<script type=\"text/javascript\">");
            out.println("alert('La cita se ha registrado correctamente');");
            out.println("</script>");

            request.setAttribute("identificadorHabitante", identificadorHabitante);
            RequestDispatcher rd = request.getRequestDispatcher("expedienteHabitante");
            rd.forward(request, response);

            out.println("</body>");
            out.println("</html>");
        } catch (Exception ex) {
            System.out.println(ex);
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}