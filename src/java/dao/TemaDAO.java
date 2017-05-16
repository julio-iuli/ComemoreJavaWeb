/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import org.hibernate.Session;
import org.hibernate.Transaction;
import pojo.Tema;
import util.HibernateUtil;

/**
 *
 * @author galera
 */
public class TemaDAO {
    Session sessao = HibernateUtil.getSessionFactory().openSession();
    Transaction trans = sessao.beginTransaction();
    public void saveTema(Tema bean) {
        
        try {
            sessao.save(bean);
            trans.commit();
            
        } catch (Exception err) {
            err.getMessage();
        } finally {
            sessao.close();
        }
    }
}
