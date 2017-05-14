/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import pojo.Categoria;
import util.HibernateUtil;

/**
 *
 * @author galera
 */

public class CategoriaDao {

   private Session sessao = HibernateUtil.getSessionFactory().openSession();
   Transaction trans = sessao.beginTransaction();
   List<Categoria> listaCategoria;
   
   public void addCategoria(Categoria c) {
       try {
           sessao.save(c);
           trans.commit();
       } catch (Exception err) {
           err.getMessage();
       } finally {
           sessao.close();
       }
   }
   
   public List pegarListaCategoria() {
       listaCategoria = sessao.createCriteria(Categoria.class).list();
       return listaCategoria;
   }
   
   public Categoria pegarCategoriaById(Integer id) {
       Query q = sessao.createQuery("from Categoria as cat where cat.id = " + id );
       Categoria cat = new Categoria();
       cat = (Categoria)q.uniqueResult();
       return cat;
   }
    
}
