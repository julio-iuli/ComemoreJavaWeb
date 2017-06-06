/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.util.List;
import org.hibernate.Session;
import org.hibernate.Transaction;
import pojo.Cargo;
import util.HibernateUtil;

/**
 *
 * @author galera
 */
public class CargoDao {
    
    Cargo cargo;
    List<Cargo> listaCargo;
    
    public void addCargo(Cargo c) {
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
   
   public void deletarCargo(Cargo c) {
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
   
   public void alterarCargo(Cargo c) {
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
   
   public List pegarListaCargo() {
       Session sessao = HibernateUtil.getSessionFactory().openSession();
       Transaction trans = sessao.beginTransaction();
       listaCargo = sessao.createCriteria(Cargo.class).list();
       sessao.close();
       return listaCargo;
       
   }
}
