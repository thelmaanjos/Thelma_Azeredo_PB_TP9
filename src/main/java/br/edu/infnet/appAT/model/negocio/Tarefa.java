package br.edu.infnet.appAT.model.negocio;

import java.util.Date;

public abstract class Tarefa
{
	private Integer id;
	private String titulo;
	private Date inicioTarefa;
	private Date terminoTarefa;
	private Boolean isFinished;
	private Double pctTarefasConcluidas;
	private Integer qtdTarefasAtrasadas;
	private Integer qtdTarefasDescartadas;
	private String descTarefa;
	private String lembrete;
	
	public Integer getId() 
	{
		return id;
	}
	
	public void setId(Integer id) 
	{
		this.id = id;
	}
	
	public String getTitulo() 
	{
		return titulo;
	}
	
	public void setTitulo(String titulo) 
	{
		this.titulo = titulo;
	}
	
	public Date getInicioTarefa() 
	{
		return inicioTarefa;
	}
	
	public void setInicioTarefa(Date inicioTarefa) 
	{
		this.inicioTarefa = inicioTarefa;
	}
	
	public Date getTerminoTarefa() 
	{
		return terminoTarefa;
	}
	
	public void setTerminoTarefa(Date terminoTarefa) 
	{
		this.terminoTarefa = terminoTarefa;
	}
	
	public Boolean getIsFinished() 
	{
		return isFinished;
	}
	
	public void setIsFinished(Boolean isFinished) 
	{
		this.isFinished = isFinished;
	}
	
	public Double getPctTarefasConcluidas() 
	{
		return pctTarefasConcluidas;
	}
	
	public void setPctTarefasConcluidas(Double pctTarefasConcluidas) 
	{
		this.pctTarefasConcluidas = pctTarefasConcluidas;
	}
	
	public Integer getQtdTarefasAtrasadas() 
	{
		return qtdTarefasAtrasadas;
	}
	
	public void setQtdTarefasAtrasadas(Integer qtdTarefasAtrasadas) 
	{
		this.qtdTarefasAtrasadas = qtdTarefasAtrasadas;
	}
	
	public Integer getQtdTarefasDescartadas() 
	{
		return qtdTarefasDescartadas;
	}
	
	public void setQtdTarefasDescartadas(Integer qtdTarefasDescartadas) 
	{
		this.qtdTarefasDescartadas = qtdTarefasDescartadas;
	}
	
	public String getDescTarefa() 
	{
		return descTarefa;
	}
	
	public void setDescTarefa(String descTarefa) 
	{
		this.descTarefa = descTarefa;
	}
	
	public String getLembrete() {
		return lembrete;
	}
	
	public void setLembrete(String lembrete) 
	{
		this.lembrete = lembrete;
	}

	@Override
	public String toString() 
	{
		return "Tarefa [id=" + id + ", titulo=" + titulo + ", inicioTarefa=" + inicioTarefa + ", terminoTarefa="
				+ terminoTarefa + ", isFinished=" + isFinished + ", pctTarefasConcluidas=" + pctTarefasConcluidas
				+ ", qtdTarefasAtrasadas=" + qtdTarefasAtrasadas + ", qtdTarefasDescartadas=" + qtdTarefasDescartadas
				+ ", descTarefa=" + descTarefa + ", lembrete=" + lembrete + "]";
	}
}