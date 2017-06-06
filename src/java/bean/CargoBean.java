/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

import dao.CargoDao;
import javax.inject.Named;
import javax.enterprise.context.SessionScoped;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import pojo.Cargo;

/**
 *
 * @author galera
 */
@Named(value = "cargoBean")
@SessionScoped
public class CargoBean implements Serializable {
    
    private List<Cargo> cargos;
    private Cargo cargo = new Cargo();
    private CargoDao cargoDao = new CargoDao();
    /**
     * Creates a new instance of CargoBean
     */
    public CargoBean() {
    }
    
     public String adicionarCargo() {
        cargoDao = new CargoDao();
        cargoDao.addCargo(cargo);
        cargo = new Cargo();
        
        return "cargos";
    }
    
    public String apagarCargo(Cargo c) {
        this.cargo = c;
        cargoDao.deletarCargo(cargo);
        this.cargo = new Cargo();
        return "cargos";
    }
    
    public String carregarCargo(Cargo c) {
        this.cargo = c;
        return "alterarCargo";
    }
    
    public String alterarCargo() {
        cargoDao.alterarCargo(cargo);
        cargo = new Cargo();
        return "cargos";
    }
        
    public List<Cargo> pegarListaCargos() {
        cargos = cargoDao.pegarListaCargo();
        return (ArrayList)cargos;
    }

    public List<Cargo> getCargos() {
        return cargos;
    }

    public void setCargos(List<Cargo> cargos) {
        this.cargos = cargos;
    }

    public Cargo getCargo() {
        return cargo;
    }

    public void setCargo(Cargo cargo) {
        this.cargo = cargo;
    }

    public CargoDao getCargoDao() {
        return cargoDao;
    }

    public void setCargoDao(CargoDao cargoDao) {
        this.cargoDao = cargoDao;
    }
    
    
}
