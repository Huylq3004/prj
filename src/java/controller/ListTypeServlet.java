/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.ProductDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.List;
import model.Categorie;
import model.Product;

/**
 *
 * @author huylq
 */
@WebServlet(name = "ListTypeServlet", urlPatterns = {"/listtype"})
public class ListTypeServlet extends HttpServlet {

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
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ListTypeServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ListTypeServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
        String cid_raw = request.getParameter("cid");
        int cid;
        try {
            cid = Integer.parseInt(cid_raw);
            List<Product> listCategory = ProductDAO.getProductByCid(cid);
            List<Categorie> listCate = ProductDAO.getAllCate();

            //phan trang
            String search = request.getParameter("txtSearch");
            String category = request.getParameter("category");
            List<Product> list;
            if (search == null) {
                search = "";
            }
            list = ProductDAO.getProducts(search, category);

            int page = 1;
            if (request.getParameter("page") != null) {
                page = Integer.parseInt(request.getParameter("page"));
            }
            int size = 8;
            int totalPage = (int) Math.ceil(list.size() * 1.0 / size);
            if (page < totalPage) {
                list = list.subList(size * (page - 1), size * page);
            } else {
                list = list.subList(size * (page - 1), list.size());
            }
            //
            request.setAttribute("totalPage", totalPage);
            request.setAttribute("page", page);

            //day ten toan bo category
            request.setAttribute("categoryList", listCate);

            //day list rieng moi type 
            request.setAttribute("producttype", listCategory);

        } catch (NumberFormatException e) {
            System.out.println(e);
        }
        request.getRequestDispatcher("typelist.jsp").forward(request, response);
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
