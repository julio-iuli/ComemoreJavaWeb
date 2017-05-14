/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

import dao.CategoriaDao;
import javax.inject.Named;
import javax.enterprise.context.SessionScoped;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import pojo.Categoria;

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

    @Override
    public int hashCode() {
        int hash = 7;
        hash = 79 * hash + Objects.hashCode(this.categoria);
        return hash;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        final CategoriaBean other = (CategoriaBean) obj;
        if (!Objects.equals(this.categoria, other.categoria)) {
            return false;
        }
        return true;
    }
    
    
}
