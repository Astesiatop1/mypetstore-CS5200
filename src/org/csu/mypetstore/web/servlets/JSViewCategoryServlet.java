package org.csu.mypetstore.web.servlets;

import com.sun.org.apache.xml.internal.resolver.Catalog;
import org.csu.mypetstore.domain.Category;
import org.csu.mypetstore.domain.Product;
import org.csu.mypetstore.service.CatalogService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet(name = "JSViewProductServlet", value = "/JSViewProductServlet")
public class JSViewCategoryServlet extends HttpServlet {

    String categoryId;
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        categoryId = request.getParameter("categoryId");
        System.out.println(categoryId+"             ddddddddd");
        CatalogService service = new CatalogService();
        Category category = service.getCategory(categoryId);
        List<Product> productList = service.getProductListByCategory(categoryId);
        StringBuilder resp = new StringBuilder();
        resp.append(categoryId+"\n");
        resp.append("Product ID      Name\n");

        int i = 0;
        while(i < productList.size()){
            Product product = productList.get(i);
            resp.append(product.getProductId());
            for (int j = 0;j<16-product.getProductId().length();j++)
                resp.append(" ");
            resp.append(product.getName() + "\n");
            i++;
        }

        response.setContentType("text/xml");
        PrintWriter out = response.getWriter();
        out.write(String.valueOf(resp));
        /*String resp = categoryId + "\n";
        resp += "Product ID      Name\n";

        int i = 0;
        while(i < productList.size()){
            Product product = productList.get(i);
            resp += product.getProductId() + "      " + product.getName() + "\n";
            i++;
        }

        response.setContentType("text/xml");
        PrintWriter out = response.getWriter();
        out.write(resp);*/

    }
}
