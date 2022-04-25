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
 * Servlet implementation class ExcluirProfessor
 */
public class ExcluirProfessor extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ExcluirProfessor() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		String strId = request.getParameter("id");
		
		long id = 0;
		try {
			id = Long.parseLong(strId);
		} catch (Exception e) {
			System.out.println("Erro na conversão");
		}
		
		ProfessorController controller = new ProfessorController();
		Professor p = new Professor();
		p.setId(id);
		
		controller.excluir(p);
		
		RequestDispatcher rd = request.getRequestDispatcher("listarprofessor.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
