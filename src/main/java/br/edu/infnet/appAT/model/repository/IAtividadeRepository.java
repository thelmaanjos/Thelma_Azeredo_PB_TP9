package br.edu.infnet.appAT.model.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import br.edu.infnet.appAT.model.negocio.Atividade;

@Repository
public interface IAtividadeRepository extends CrudRepository<Atividade, Integer> 
{

}
