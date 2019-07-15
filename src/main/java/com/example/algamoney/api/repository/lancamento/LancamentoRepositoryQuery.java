package com.example.algamoney.api.repository.lancamento;

import com.example.algamoney.api.model.Lancamento;
import com.example.algamoney.api.repository.filter.LancamentoFilter;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface LancamentoRepositoryQuery {

    /*
    //metodo filtrar() padrão, sem uso de paginação
     public List<Lancamento> filtrar(LancamentoFilter lancamentoFilter);
     */

    //metodo filtrar() com uso de paginação
    public Page<Lancamento> filtrar(LancamentoFilter lancamentoFilter, Pageable pageable);

}
