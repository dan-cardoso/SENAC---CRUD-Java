package br.com.cursoja.agendacurso.view;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import br.com.cursoja.agendacurso.controller.ProfessorController;
import br.com.cursoja.agendacurso.model.entidade.Professor;

/**
 * Servlet implementation class ProfessorServlet
 */
public class ProfessorServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProfessorServlet() {
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
		// TODO Auto-generated method stub
		String nome = request.getParameter("nomeprofessor");
		String celular = request.getParameter("celular");
		String strValor = request.getParameter("valorhora");
		
		double valorhora = 0.00;
		
		try {
		valorhora = Double.parseDouble(strValor);
		} catch(Exception e) {
			
		}
		
		System.out.println(nome);
		System.out.println(celular);
		System.out.println(strValor);
		
		Professor p = new Professor();
		p.setNome(nome);
		p.setCelular(celular);
		p.setValorHora(valorhora);
		
		ProfessorController controller = new ProfessorController();
		controller.cadastrar(p);
		
		
		//pagina encaminhada
		RequestDispatcher rd = request.getRequestDispatcher("indexprofessor.jsp");
		rd.forward(request, response);
		
		//doGet(request, response);
	}

}
