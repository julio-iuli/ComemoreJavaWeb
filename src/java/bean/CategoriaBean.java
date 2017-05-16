/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

import pojo.Categoria;
import javax.inject.Named;
import javax.enterprise.context.SessionScoped;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import dao.CategoriaDao;

/**
 *
 * @author galera
 */
@Named(value = "categoriaBean")
@SessionScoped
public class CategoriaBean implements Serializable {

    private List<Categoria> categorias;
    private Categoria categoria = new Categoria();
    private CategoriaDao categoriaDao = new CategoriaDao();
    /**
     * Creates a new instance of CategoriaBean
     */
    public CategoriaBean() {
    }
    
    public String adicionarCategoria() {
        categoriaDao = new CategoriaDao();
        categoriaDao.addCategoria(categoria);
        categoria = new Categoria();
        
        return "categorias";
    }
    
    public String apagarCategoria(Categoria c) {
        this.categoria = c;
        categoriaDao.deletarCategoria(categoria);
        this.categoria = new Categoria();
        return "categorias";
    }
    
    public String carregarCategoria(Categoria c) {
        this.categoria = c;
        return "alterarCategoria";
    }
    
    public String alterarCategoria() {
        categoriaDao.alterarCategoria(categoria);
        categoria = new Categoria();
        return "categorias";
    }
        
    public List<Categoria> pegarListaCategorias() {
        categorias = categoriaDao.pegarListaCategoria();
        return (ArrayList)categorias;
    }

    public Categoria getCategoria() {
        return categoria;
    }

    public void setCategoria(Categoria categoria) {
        this.categoria = categoria;
    }

 

}
