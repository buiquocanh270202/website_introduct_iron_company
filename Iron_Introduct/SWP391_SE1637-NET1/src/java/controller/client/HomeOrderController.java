/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.client;

import dao.CategoriesDAO;
import dao.CustomerDAO;
import dao.InformationCategoriesDAO;
import dao.OrdersDAO;
import dao.OrdersDAO;
import model.Customer;
import model.Cart;
import java.util.Map;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import model.Categories;
import model.InformationCategories;
import model.Orders;

/**
 *
 * @author Admin
 */
@WebServlet(name = "HomeOrderController", urlPatterns = {"/HomeOrderController"})

public class HomeOrderController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try {
            List<InformationCategories> listCate = new InformationCategoriesDAO().getAllInforCate();
            List<Categories> productCate = new CategoriesDAO().getCategories();
            request.setAttribute("listInforCate", listCate);
            request.setAttribute("listCate", productCate);
            HttpSession session = request.getSession();
            Customer customer = (Customer) session.getAttribute("customer");
            int cusId = customer.getCusId();
            List<Orders> listOrders = new OrdersDAO().getOrders(cusId);
            request.setAttribute("listOrders", listOrders);

        } catch (Exception e) {
            log("Error at HomeOrderController: " + e.toString());
        } finally {
            request.getRequestDispatcher("homeorder.jsp").forward(request, response);
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
