package br.edu.infnet.appAT.model.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import br.edu.infnet.appAT.model.negocio.Projeto;

@Repository
public interface IProjetoRepository extends CrudRepository<Projeto, Integer> 
{

}
