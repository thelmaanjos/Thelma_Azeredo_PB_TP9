package br.edu.infnet.appAT.model.negocio;

import java.util.Date;

public class Desenvolvimento extends Tarefa
{
	private String arqSistema;
	private String descComputacional;
	private String lingProgram;
	private String sgbd;
	private String interGraf;
	private String relatorio;
	private String Framework;
	private Boolean hasFramework;
	private Boolean hasPattern;
	private Boolean hassbgd;
	private Date entregasSemanais; 
	private Date entregasEmail;
	private Double pctTestesConcluidos;
	private Double pctModulosConcluidos;
	private Integer qtdErros;
	
	public String getArqSistema() 
	{
		return arqSistema;
	}
	
	public void setArqSistema(String arqSistema) 
	{
		this.arqSistema = arqSistema;
	}
	
	public String getDescComputacional() 
	{
		return descComputacional;
	}
	
	public void setDescComputacional(String descComputacional) 
	{
		this.descComputacional = descComputacional;
	}
	
	public String getLingProgram() 
	{
		return lingProgram;
	}
	
	public void setLingProgram(String lingProgram) 
	{
		this.lingProgram = lingProgram;
	}
	
	public String getSgbd() 
	{
		return sgbd;
	}
	
	public void setSgbd(String sgbd) 
	{
		this.sgbd = sgbd;
	}
	
	public String getInterGraf() 
	{
		return interGraf;
	}
	
	public void setInterGraf(String interGraf) 
	{
		this.interGraf = interGraf;
	}
	
	public String getRelatorio() 
	{
		return relatorio;
	}
	
	public void setRelatorio(String relatorio) 
	{
		this.relatorio = relatorio;
	}
	
	public Boolean getHasFramework() 
	{
		return hasFramework;
	}
	
	public void setHasFramework(Boolean hasFramework) 
	{
		this.hasFramework = hasFramework;
	}
	
	public Boolean getHasPattern()
	{
		return hasPattern;
	}
	
	public void setHasPattern(Boolean hasPattern) 
	{
		this.hasPattern = hasPattern;
	}
	public Date getEntregasSemanais() 
	{
		return entregasSemanais;
	}
	
	public void setEntregasSemanais(Date entregasSemanais) 
	{
		this.entregasSemanais = entregasSemanais;
	}
	
	public Date getEntregasEmail() 
	{
		return entregasEmail;
	}
	
	public void setEntregasEmail(Date entregasEmail) 
	{
		this.entregasEmail = entregasEmail;
	}
	
	public Double getPctTestesConcluidos() 
	{
		return pctTestesConcluidos;
	}
	
	public void setPctTestesConcluidos(Double pctTestesConcluidos) 
	{
		this.pctTestesConcluidos = pctTestesConcluidos;
	}
	
	public Double getPctModulosConcluidos() 
	{
		return pctModulosConcluidos;
	}
	
	public void setPctModulosConcluidos(Double pctModulosConcluidos) 
	{
		this.pctModulosConcluidos = pctModulosConcluidos;
	}
	
	public Integer getQtdErros() 
	{
		return qtdErros;
	}
	
	public void setQtdErros(Integer qtdErros) 
	{
		this.qtdErros = qtdErros;
	}

	public String getFramework() 
	{
		return Framework;
	}

	public void setFramework(String framework) 
	{
		Framework = framework;
	}

	public Boolean getHassbgd() 
	{
		return hassbgd;
	}

	public void setHassbgd(Boolean hassbgd) 
	{
		this.hassbgd = hassbgd;
	}

	@Override
	public String toString() 
	{
		return super.toString() + "Desenvolvimento [arqSistema=" + arqSistema + ", descComputacional=" + descComputacional
				+ ", lingProgram=" + lingProgram + ", sgbd=" + sgbd + ", interGraf=" + interGraf + ", relatorio="
				+ relatorio + ", Framework=" + Framework + ", hasFramework=" + hasFramework + ", hasPattern="
				+ hasPattern + ", hassbgd=" + hassbgd + ", entregasSemanais=" + entregasSemanais + ", entregasEmail="
				+ entregasEmail + ", pctTestesConcluidos=" + pctTestesConcluidos + ", pctModulosConcluidos="
				+ pctModulosConcluidos + ", qtdErros=" + qtdErros + "]";
	}
}