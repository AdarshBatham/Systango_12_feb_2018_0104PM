package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.CustomerModel;
import model.ProductModel;

/**
 * Servlet implementation class CustomerLogoutController
 */
@WebServlet("/CustomerLogoutController")
public class CustomerLogoutController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CustomerLogoutController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession ht=request.getSession();
		String customeripaddress=(String)ht.getAttribute("customeripaddress");
		String customeremailwhencheckout=(String)ht.getAttribute("customeremailwhencheckout"); 
		String customeremail=(String)ht.getAttribute("customeremail");
		if((customeremail!=null )||(customeremailwhencheckout!=null ))
		{
			int d=new CustomerModel().deleteCartDataWhenLogOut(customeripaddress);/*deleting all products from cart table*/
			ht.invalidate();								/*destroying customer session*/
			if(customeremail!=null)
				response.sendRedirect("index.jsp");	/*redirect to customer_login page*/
			else
				response.sendRedirect("index.jsp");	/*redirect to customer_login page*/
		}
		else
		{
			if(customeremailwhencheckout!=null)
				response.sendRedirect("index.jsp");	/*redirect to customer_login page*/
			else
				response.sendRedirect("index.jsp");	/*redirect to customer_login page*/
		}
	}

}
