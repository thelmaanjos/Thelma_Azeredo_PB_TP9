package br.edu.infnet.appAT.model.negocio;

import java.util.Date;
import java.util.List;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

@Entity
@Table(name = "TAtividade")
public class Atividade 
{
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	private String nome;
	@Transient
	private Projeto projeto;
	@Transient
	private List<Tarefa> tarefa;
	private String autor;
	private String descAtv;
	private Date dataCriacaoTarefa;
	private Date dataCriacaoProj;
	private Date dataAlterTarefa;
	private String etiqueta;
	private Integer prioridade;
	private Boolean isUrgent;
	private Boolean hasFilter;
	private Integer qtdTotalProj;
	private Integer qtdTotalTarefa;
	private Double filtro;
	
	public Projeto getProjeto() 
	{
		return projeto;
	}

	public void setProjeto(Projeto projeto) 
	{
		this.projeto = projeto;
	}

	public Integer getId() 
	{
		return id;
	}

	public void setId(Integer id) 
	{
		this.id = id;
	}

	public List<Tarefa> getTarefa() 
	{
		return tarefa;
	}

	public void setTarefa(List<Tarefa> tarefa) 
	{
		this.tarefa = tarefa;
	}

	public String getAutor() 
	{
		return autor;
	}

	public void setAutor(String autor) 
	{
		this.autor = autor;
	}

	public String getDescAtv() 
	{
		return descAtv;
	}

	public void setDescAtv(String descAtv) 
	{
		this.descAtv = descAtv;
	}

	public Date getDataCriacaoTarefa() 
	{
		return dataCriacaoTarefa;
	}

	public void setDataCriacaoTarefa(Date dataCriacaoTarefa) 
	{
		this.dataCriacaoTarefa = dataCriacaoTarefa;
	}

	public Date getDataCriacaoProj() 
	{
		return dataCriacaoProj;
	}

	public void setDataCriacaoProj(Date dataCriacaoProj) 
	{
		this.dataCriacaoProj = dataCriacaoProj;
	}

	public Date getDataAlterTarefa() 
	{
		return dataAlterTarefa;
	}

	public void setDataAlterTarefa(Date dataAlterTarefa) 
	{
		this.dataAlterTarefa = dataAlterTarefa;
	}

	public String getEtiqueta() 
	{
		return etiqueta;
	}

	public void setEtiqueta(String etiqueta) 
	{
		this.etiqueta = etiqueta;
	}

	public Integer getPrioridade() 
	{
		return prioridade;
	}

	public void setPrioridade(Integer prioridade) 
	{
		this.prioridade = prioridade;
	}

	public Boolean getIsUrgent() 
	{
		return isUrgent;
	}

	public void setIsUrgent(Boolean isUrgent) 
	{
		this.isUrgent = isUrgent;
	}

	public Boolean getHasFilter()
	{
		return hasFilter;
	}

	public void setHasFilter(Boolean hasFilter) 
	{
		this.hasFilter = hasFilter;
	}

	public Integer getQtdTotalProj() 
	{
		return qtdTotalProj;
	}

	public void setQtdTotalProj(Integer qtdTotalProj) 
	{
		this.qtdTotalProj = qtdTotalProj;
	}

	public Integer getQtdTotalTarefa() 
	{
		return qtdTotalTarefa;
	}

	public void setQtdTotalTarefa(Integer qtdTotalTarefa) 
	{
		this.qtdTotalTarefa = qtdTotalTarefa;
	}

	public Double getFiltro() 
	{
		return filtro;
	}

	public void setFiltro(Double filtro) 
	{
		this.filtro = filtro;
	}

	public String getNome() 
	{
		return nome;
	}

	public void setNome(String nome) 
	{
		this.nome = nome;
	}

	@Override
	public String toString() 
	{
		return "Atividade [id=" + id + ", projeto=" + projeto + ", tarefa=" + tarefa + ", autor=" + autor + ", descAtv="
				+ descAtv + ", dataCriacaoTarefa=" + dataCriacaoTarefa + ", dataCriacaoProj=" + dataCriacaoProj
				+ ", dataAlterTarefa=" + dataAlterTarefa + ", etiqueta=" + etiqueta + ", prioridade=" + prioridade
				+ ", isUrgent=" + isUrgent + ", hasFilter=" + hasFilter + ", qtdTotalProj=" + qtdTotalProj
				+ ", qtdTotalTarefa=" + qtdTotalTarefa + ", filtro=" + filtro + "]";
	}
}