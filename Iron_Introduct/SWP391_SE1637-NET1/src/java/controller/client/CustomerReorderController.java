/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.client;

import java.io.IOException;
import java.io.PrintWriter;
import dao.CustomerDAO;
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
import java.util.Set;
import java.util.concurrent.ThreadLocalRandom;
import model.Orders;
import util.DataValidation;

/**
 *
 * @author Admin
 */
@WebServlet(name="CustomerReorderController", urlPatterns={"/CustomerReorderController"})

public class CustomerReorderController extends HttpServlet {

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
            HttpSession session = request.getSession();
            
            

            

            
                // đoạn thêm khi có session người dùng thì ko cần tiếp tục nhập thông tin mà chỉ cần order thêm
                Map<Integer, Cart> carts = (Map<Integer, Cart>) session.getAttribute("carts");

                if (carts != null && !carts.isEmpty()) {
                    //    request.getRequestDispatcher("exportExcel.jsp").forward(request, response);// chuyển đến màn hình export

//                                for (Map.Entry<Integer, Cart> entry : carts.entrySet()) {
//                                    Object key = entry.getKey();
//                                    Object val = entry.getValue();
//                                    log("da co cart trong session",(Throwable) key);
//                                    
//                                }
                    Customer cusSession = (Customer) session.getAttribute("customer");

                    // Save all cart to database (order/orderdetail)
                    if (carts != null && !carts.isEmpty()) { // Cart is not empty 
                        if (cusSession != null) { // orderId = 0 is default ~ insert false
                            int orderId = new OrdersDAO().insertOrder(cusSession.getCusId(), carts, cusSession.getCusName(), cusSession.getPhone(), cusSession.getEmail());

                            if (orderId != 0) {
                                session.removeAttribute("carts");
                                log("1");

                                request.setAttribute("MSG_SUCCESS", "Your order has been successfully placed!");
                                //request.getRequestDispatcher("cart.jsp").forward(request, response);
                                // response.sendRedirect("ExportToExcelController_orderdetailview"); ///// send đen trang tai

                                // day orderId thanh session sau do get o trang export, sau do xoa session.
                                Orders o = new OrdersDAO().getOrderById(orderId);
                                session.setAttribute("orderId", o);

                                request.getRequestDispatcher("ExportToExcelController_orderdetailview").forward(request, response);
                                // remove session của orderId cu de tiep tuc order moi
                                session.removeAttribute("orderId");
                                log("2");
                            } else {
                                log("3");
                                request.setAttribute("MSG_ERROR", "These products are out of stock!");
                                request.getRequestDispatcher("cart.jsp").forward(request, response);
                                log("4");
                            }
                        } else {
                            log("5");
                            response.sendRedirect("cart.jsp");
                            log("6");
                        }
                    }// debug đến dây
                    else {
                        log("7");
                        response.sendRedirect("homeproduct");// chuyển đến trang product nếu chưa có gì trong cart
                        log("8");
                    }

                } else {
                    log("9");
                    response.sendRedirect("homeproduct");// chuyển đến trang product nếu chưa có gì trong cart
                    log("10");
                }

            
        } catch (Exception e) {
            log("Error at CustomerInforController: " + e.toString());
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
