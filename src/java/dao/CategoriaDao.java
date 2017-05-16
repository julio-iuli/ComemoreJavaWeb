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
import util.HibernateUtil;

/**
 *
 * @author galera
 */

public class CategoriaDao {

   //private Session sessao = HibernateUtil.getSessionFactory().openSession();
   //Transaction trans = sessao.beginTransaction();
   List<Categoria> listaCategoria;
   
   public void addCategoria(Categoria c) {
       Session sessao = HibernateUtil.getSessionFactory().openSession();
       Transaction trans = sessao.beginTransaction();
       try {
           sessao.save(c);
           trans.commit();
       } catch (Exception err) {
           err.getMessage();
       } finally {
           sessao.close();
       }
   }
   
   public void deletarCategoria(Categoria c) {
       Session sessao = HibernateUtil.getSessionFactory().openSession();
       Transaction trans = sessao.beginTransaction();
       try {
           sessao.delete(c);
           trans.commit();
       } catch (Exception err) {
           err.getMessage(); 
       } finally {
           sessao.close();
       }
   }
   
   public void alterarCategoria(Categoria c) {
       Session sessao = HibernateUtil.getSessionFactory().openSession();
       Transaction trans = sessao.beginTransaction();
       try {
           sessao.update(c);
           trans.commit();
       } catch (Exception err) {
           err.getMessage(); 
       } finally {
           sessao.close();
       }
   }
   
   public List pegarListaCategoria() {
       Session sessao = HibernateUtil.getSessionFactory().openSession();
       Transaction trans = sessao.beginTransaction();
       listaCategoria = sessao.createCriteria(Categoria.class).list();
       sessao.close();
       return listaCategoria;
       
   }
   
   public Categoria pegarCategoriaById(String id) {
       Session sessao = HibernateUtil.getSessionFactory().openSession();
       Transaction trans = sessao.beginTransaction();
       Query q = sessao.createQuery("from Categoria as cat where cat.id = " + id );
       Categoria cat;
       cat = (Categoria)q.uniqueResult();
       sessao.close();
       return cat; 
   } 
    
}
