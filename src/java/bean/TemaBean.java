/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

import javax.inject.Named;
import javax.enterprise.context.SessionScoped;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import pojo.Categoria;
import pojo.Tema;
import dao.CategoriaDao;
import dao.TemaDAO;

/**
 *
 * @author galera
 */
@Named(value = "temaBean")
@SessionScoped
public class TemaBean implements Serializable {

    private List<Categoria> listaCategoria = (ArrayList) new CategoriaDao().pegarListaCategoria();
    private Tema tema = new Tema();
    
    /**
     * Creates a new instance of TemaBean
     */
    public TemaBean() {
    }
    
    public List<Categoria> pegarListaCategoria() {
        return listaCategoria;
    }
    
    public String adicionar(){
        try {
        TemaDAO dao = new TemaDAO();
        dao.saveTema(this.tema);
        this.tema = new Tema();
        
        } catch (Exception err) {
            err.getMessage();
        }
        return "temasPrincipal";
    }

    public Tema getTema() {
        return tema;
    }

    public void setTema(Tema tema) {
        this.tema = tema;
    }
    
    
    
}
