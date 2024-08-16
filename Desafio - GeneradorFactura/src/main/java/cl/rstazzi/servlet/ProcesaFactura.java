package cl.rstazzi.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/procesaFactura")
public class ProcesaFactura extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public ProcesaFactura() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	
	String nombre, empresa, rut, direccion, ciudad, pais;
	Integer cantButterfly, cantClasicaHorizontal, cantPortapasaporte, cantPortaretrato, cantCinturon;
	
	//recibiendo los valores del objeto request
	nombre = request.getParameter("nombre");
	empresa = request.getParameter("empresa");
	rut = request.getParameter("rut");
	direccion = request.getParameter("direccion");
	ciudad = request.getParameter("ciudad");
	pais = request.getParameter("pais");

	int preciobutterfly = 34890;
	int precioclasicahorizontal = 32180;
	int precioportapasaporte = 29750;
	int precioportaretrato = 26580;
	int preciocinturon = 19150;

	cantButterfly = Integer.parseInt(request.getParameter("butterfly"));
	cantClasicaHorizontal = Integer.parseInt(request.getParameter("clasicahorizontal"));
	cantPortapasaporte = Integer.parseInt(request.getParameter("portapasaporte"));
	cantPortaretrato = Integer.parseInt(request.getParameter("portaretrato"));
	cantCinturon = Integer.parseInt(request.getParameter("cinturon"));

	request.setAttribute("cantButterfly", cantButterfly);
	request.setAttribute("cantClasicaHorizontal", cantClasicaHorizontal);
	request.setAttribute("cantPortapasaporte", cantPortapasaporte);
	request.setAttribute("cantPortaretrato", cantPortaretrato);
	request.setAttribute("cantCinturon", cantCinturon);
	
	
	//asignarlos al request paa recibirlo en otro  servlet 
	request.setAttribute("nombre", nombre);
	request.setAttribute("empresa", empresa);
	request.setAttribute("rut", rut);
	request.setAttribute("direccion", direccion);
	request.setAttribute("ciudad", ciudad);
	request.setAttribute("pais", pais);;
	
	
	request.setAttribute("precioTotalButterfly", cantButterfly * preciobutterfly);
	request.setAttribute("precioTotalClasicaHorizontal", cantClasicaHorizontal * precioclasicahorizontal);
	request.setAttribute("precioTotalPortapasaporte", cantPortapasaporte * precioportapasaporte);
	request.setAttribute("precioTotalPortaretrato", cantPortaretrato * precioportaretrato);
	request.setAttribute("precioTotalCinturon", cantCinturon * preciocinturon);
	
	int valorTotal = ((cantButterfly * preciobutterfly)+
			(cantClasicaHorizontal * precioclasicahorizontal)+
			(cantPortapasaporte * precioportapasaporte)+
			(cantPortaretrato * precioportaretrato)+
			(cantCinturon * preciocinturon));
	
	request.setAttribute("valorTotal", valorTotal);
	
	request.getRequestDispatcher("/generaFactura").forward(request, response);

	}

}
