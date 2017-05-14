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
import java.util.List;
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
    /**
     * Creates a new instance of CategoriaBean
     */
    public CategoriaBean() {
    }
    
    public String adicionarCategoria() {
        CategoriaDao dao = new CategoriaDao();
        dao.addCategoria(categoria);
        categoria = new Categoria();
        return "categorias";
    }
    
        public Categoria getBeer(Integer id) {
        if (id == null){
            throw new IllegalArgumentException("no id provided");
        }
        for (Categoria cate : categorias){
            if (id.equals(cate.getId())){
                return cate;
            }
        }
        return null;
    }
        
    public List<Categoria> pegarListaCategorias() {
        CategoriaDao dao = new CategoriaDao();
        categorias = dao.pegarListaCategoria();
        return categorias;
    }

    public Categoria getCategoria() {
        return categoria;
    }

    public void setCategoria(Categoria categoria) {
        this.categoria = categoria;
    }
    
    
}
