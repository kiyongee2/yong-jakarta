package product;

import java.io.IOException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/pcontrol")
public class ProductController extends HttpServlet {
	private static final long serialVersionUID = 102L;
	
	ProductService service;
      
	/*public void init(ServletConfig config) throws ServletException{
		super.init(config);
		service = new ProductService();
	}*/
    public ProductController() {
        service = new ProductService();
    }

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String action = request.getParameter("action");
		String view = "";
		
		if(action == null) {
			getServletContext().getRequestDispatcher("/pcontrol?action=list")
				.forward(request, response);
		}else {
			switch(action) {
			case "list":
				view = list(request, response); break;
			case "info":
				view = info(request, response); break;
			}
			getServletContext().getRequestDispatcher("/product/"+view)
			.forward(request, response);
		}
	}
	
	private String list(HttpServletRequest request, HttpServletResponse response) {
		//List<Product> productList = service.findAll();
		request.setAttribute("products", service.findAll());  //model
		return "productList.jsp";
	}
	
	private String info(HttpServletRequest request, HttpServletResponse response) {
		String id = request.getParameter("id");
		request.setAttribute("product", service.find(id));
		return "productInfo.jsp";
	}

}
