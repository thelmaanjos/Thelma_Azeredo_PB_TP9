package br.edu.infnet.appAT.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import br.edu.infnet.appAT.model.negocio.Projeto;
import br.edu.infnet.appAT.model.service.ProjetoService;

@Controller
public class ProjetoController 
{

	@Autowired
	private ProjetoService projetoService;
	
	@GetMapping(value = "/projeto")
	public String telaCadastro()
	{
		return "redirect:/projeto/lista";
	}
	
	@PostMapping(value = "/projeto/incluir")
	public String incluir(Projeto projeto)
	{
		projetoService.incluir(projeto);
		return "redirect:/projeto/lista";
	}
	
	@GetMapping(value = "/projeto/{id}/excluir")
	public String excluir(@PathVariable Integer id) 
	{
		projetoService.excluir(id);
		return "redirect:/projeto/lista";
	}
	
	@GetMapping(value = "/projeto/lista")
	public String obterLista(Model model)
	{
		model.addAttribute("projetos", projetoService.obterLista());
		return "projeto/cadastro";
		
	}
	
}