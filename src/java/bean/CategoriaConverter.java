/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;


import dao.CategoriaDao;
import javax.el.ValueExpression;
import javax.faces.component.UIComponent;
import javax.faces.context.FacesContext;
import javax.faces.convert.Converter;
import javax.faces.convert.FacesConverter;
import pojo.Categoria;

@FacesConverter(forClass = Categoria.class, value = "categoriaConverter")
public class CategoriaConverter implements Converter {

    @Override
    public Object getAsObject(FacesContext context, UIComponent component, String value) {
        Integer id = Integer.valueOf(value);
        CategoriaDao dao = new CategoriaDao();
        Categoria categoria = dao.pegarCategoriaById(id);
        return categoria;
    }

    @Override
    public String getAsString(FacesContext context, UIComponent component, Object value) {
        Categoria categoria = (Categoria) value;
        Integer id = categoria.getId();
        return String.valueOf(id);
    }

   
}
