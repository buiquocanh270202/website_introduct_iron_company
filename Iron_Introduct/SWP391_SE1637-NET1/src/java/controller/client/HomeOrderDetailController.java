/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import java.io.IOException;
import java.io.PrintWriter;
import dao.CategoriesDAO;
import dao.InformationCategoriesDAO;
import dao.OrdersDAO;
import dao.OrderDetailsDAO;
import dao.ProductDAO;
import model.Customer;
import model.Orders;
import model.OrderDetails;
import model.Products;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.Categories;
import model.InformationCategories;

/**
 *
 * @author Admin
 */
@WebServlet(name="HomeOrderDetailController", urlPatterns={"/HomeOrderDetailController"})

public class HomeOrderDetailController extends HttpServlet {

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
            int orderId = Integer.parseInt(request.getParameter("orderId"));
            Orders order = new OrdersDAO().getOrderById(orderId);
            List<OrderDetails> listOrdersDetail = new OrderDetailsDAO().getListOrdersDetail(orderId);
            List<Products> listProductOrder = new ArrayList<>();
            List<Categories> listCategories = new ArrayList<>();
            
            List<InformationCategories> listCate = new InformationCategoriesDAO().getAllInforCate();
            List<Categories> productCate = new CategoriesDAO().getCategories();
            request.setAttribute("listInforCate", listCate);
            request.setAttribute("listCate", productCate);
            ProductDAO productDAO = new ProductDAO();
            for (OrderDetails orderDetail : listOrdersDetail) {
                listProductOrder.add(productDAO.getProduct(orderDetail.getpId()));
            }
            CategoriesDAO categoriesDAO = new CategoriesDAO();
            for (OrderDetails orderDetail : listOrdersDetail) {
                listCategories.add(categoriesDAO.getCategoryById(orderDetail.getCateId()));
            }
            
            request.setAttribute("order", order);
            request.setAttribute("listOrdersDetail", listOrdersDetail);
            request.setAttribute("listProductOrder", listProductOrder);
            request.setAttribute("listCategories", listCategories);

            request.getRequestDispatcher("homeOrderDetail.jsp").forward(request, response); //////////////////////
            
        } catch (Exception e) {
            log("Error at HomeOrderDetailController: " + e.toString());
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
