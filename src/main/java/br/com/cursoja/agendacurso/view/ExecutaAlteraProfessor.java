package br.com.cursoja.agendacurso.view;

import java.io.IOException;

import br.com.cursoja.agendacurso.controller.ProfessorController;
import br.com.cursoja.agendacurso.model.entidade.Professor;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ExecutaAlteraProfessor
 */
public class ExecutaAlteraProfessor extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ExecutaAlteraProfessor() {
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
		
		String nome = request.getParameter("nomeProfessor");
		String strValorHora = request.getParameter("valorhora");
		String celular = request.getParameter("celular");
		String strId = request.getParameter("id");
		
		double valorhora = 0.00;
		long id = 0;
		
		try {
			valorhora = Double.parseDouble(strValorHora);
			id = Long.parseLong(strId);
		} catch(Exception e) {
			System.out.println("Erro Na Conversão");
		}
		
		Professor p = new Professor();
		p.setId(id);
		p.setNome(nome);
		p.setCelular(celular);
		p.setValorHora(valorhora);
		
		ProfessorController controller = new ProfessorController();
		controller.alterar(p);
		
		RequestDispatcher rd = request.getRequestDispatcher("listarprofessor.jsp");
		rd.forward(request, response);
	}

}
