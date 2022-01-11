package org.csu.mypetstore.web.servlets;

import org.csu.mypetstore.domain.Cart;
import org.csu.mypetstore.domain.CartItem;
import org.csu.mypetstore.domain.Item;
import org.csu.mypetstore.service.CatalogService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;

public class UpdateCartJSServlet extends HttpServlet {

    private Cart cart;
    private String workingItemId;
    private String workingItemQuantity;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        workingItemId = request.getParameter("workingItemId");
        workingItemQuantity = request.getParameter("workingItemQuantity");
        System.out.println(workingItemId + workingItemQuantity);


        //从对话中，获取购物车
        HttpSession session = request.getSession();
        cart = (Cart) session.getAttribute("cart");

        if (Integer.parseInt(workingItemQuantity) < 1) {
            cart.removeItemById(workingItemId);
        } else {
            cart.setQuantityByItemId(workingItemId, Integer.parseInt(workingItemQuantity));
        }
        session.setAttribute("cart",cart);

        /*

        while (cartItemIterator.hasNext()) {
            //产品数量增加
            CartItem cartItem = (CartItem) cartItemIterator.next();
            String itemId = cartItem.getItem().getItemId();

            try {
                int quantity = Integer.parseInt((String) request.getParameter("itemId"));
                System.out.println(quantity);
                cart.setQuantityByItemId(itemId, quantity);
                if (quantity < 1) {
                    cartItemIterator.remove();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        session.setAttribute("cart", cart);
*/      Cart cart2 = (Cart)session.getAttribute("cart");
        Iterator<CartItem> cartItemIterator = cart.getAllCartItems();
        CatalogService catalogService = new CatalogService();
        Item item= catalogService.getItem(workingItemId);
        String quantityAll = "";
        while(cartItemIterator.hasNext())
        {
            CartItem cartItem = (CartItem) cartItemIterator.next();
            String itemId = cartItem.getItem().getItemId();
            if(itemId.equals(workingItemId) )
            {
                System.out.println("yes");
                int quantity2 = cartItem.getQuantity();

                quantityAll += itemId + "," + quantity2 + "," + cartItem.getTotal() + "," + cart2.getSubTotal();
                System.out.println(quantityAll);
                break;
            }
            else
                continue;
        }

        response.setContentType("text/xml");
        PrintWriter out = response.getWriter();
        out.write(quantityAll);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
