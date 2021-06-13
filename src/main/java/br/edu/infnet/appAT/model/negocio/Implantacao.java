package br.edu.infnet.appAT.model.negocio;

import java.util.Date;

public class Implantacao extends Tarefa
{
	private Boolean isInstalled;
	private String manual;
	private Double pctDadosImportados;
	private Boolean isFuncTrained;
	private Boolean isSystemWorking;
	private Integer qtdFuncTreinados;
	private Date dataTreinamento;
	private Date dataEntrega;
	private String consideracoes;
	private Double custosExtras;
	
	public Boolean getIsInstalled() 
	{
		return isInstalled;
	}
	
	public void setIsInstalled(Boolean isInstalled) 
	{
		this.isInstalled = isInstalled;
	}
	
	public String getManual() 
	{
		return manual;
	}
	
	public void setManual(String manual) 
	{
		this.manual = manual;
	}
	
	public Double getPctDadosImportados() 
	{
		return pctDadosImportados;
	}
	
	public void setPctDadosImportados(Double pctDadosImportados) 
	{
		this.pctDadosImportados = pctDadosImportados;
	}
	
	public Boolean getIsFuncTrained() 
	{
		return isFuncTrained;
	}
	
	public void setIsFuncTrained(Boolean isFuncTrained) 
	{
		this.isFuncTrained = isFuncTrained;
	}
	
	public Boolean getIsSystemWorking() 
	{
		return isSystemWorking;
	}
	
	public void setIsSystemWorking(Boolean isSystemWorking) 
	{
		this.isSystemWorking = isSystemWorking;
	}
	
	public Integer getQtdFuncTreinados() 
	{
		return qtdFuncTreinados;
	}
	
	public void setQtdFuncTreinados(Integer qtdFuncTreinados) 
	{
		this.qtdFuncTreinados = qtdFuncTreinados;
	}
	
	public Date getDataTreinamento() 
	{
		return dataTreinamento;
	}
	
	public void setDataTreinamento(Date dataTreinamento) 
	{
		this.dataTreinamento = dataTreinamento;
	}
	
	public Date getDataEntrega() 
	{
		return dataEntrega;
	}
	
	public void setDataEntrega(Date dataEntrega) 
	{
		this.dataEntrega = dataEntrega;
	}
	
	public String getConsideracoes() 
	{
		return consideracoes;
	}
	
	public void setConsideracoes(String consideracoes) 
	{
		this.consideracoes = consideracoes;
	}
	
	public Double getCustosExtras() 
	{
		return custosExtras;
	}
	
	public void setCustosExtras(Double custosExtras) 
	{
		this.custosExtras = custosExtras;
	}

	@Override
	public String toString() 
	{
		return super.toString() + "Implantacao [isInstalled=" + isInstalled + ", manual=" + manual + ", pctDadosImportados="
				+ pctDadosImportados + ", isFuncTrained=" + isFuncTrained + ", isSystemWorking=" + isSystemWorking
				+ ", qtdFuncTreinados=" + qtdFuncTreinados + ", dataTreinamento=" + dataTreinamento + ", dataEntrega="
				+ dataEntrega + ", consideracoes=" + consideracoes + ", custosExtras=" + custosExtras + "]";
	}
}