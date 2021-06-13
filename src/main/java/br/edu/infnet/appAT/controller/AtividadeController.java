package br.edu.infnet.appAT.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import br.edu.infnet.appAT.model.negocio.Atividade;
import br.edu.infnet.appAT.model.service.AtividadeService;

@Controller
public class AtividadeController 
{
	@Autowired
	private AtividadeService atividadeService;
	
	
	@GetMapping(value = "/atividade")
	public String telaCadastro()
	{
		return "redirect:/atividade/lista";
	}
	
	@PostMapping(value = "/atividade/incluir")
	public String incluir(Atividade atividade)
	{
		atividadeService.incluir(atividade);
		return "redirect:/atividade/lista";
	}
	
	@GetMapping(value = "/atividade/{id}/excluir")
	public String excluir(@PathVariable Integer id) 
	{
		atividadeService.excluir(id);
		return "redirect:/atividade/lista";
	}
	
	@GetMapping(value = "/atividade/lista")
	public String obterLista(Model model)
	{
		model.addAttribute("atividades", atividadeService.obterLista());
		return "atividade/cadastro";
	}
}