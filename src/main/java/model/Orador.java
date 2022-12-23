package model;

import java.util.Date;

/**
 *
 * @author gcasado0
 */
public class Orador {
    private Long id;
    private String nombre;
    private String apellido;
    private String titulo;
    private String resumen;
    private String inicio;

    public Orador(Long id, String nombre, String apellido, String titulo, String resumen, String inicio) {
        this.id = id;
        this.nombre = nombre;
        this.apellido = apellido;
        this.titulo = titulo;
        this.resumen = resumen;
        this.inicio = inicio;
    }

    public Long getId() {
        return id;
    }

    public String getNombre() {
        return nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public String getTitulo() {
        return titulo;
    }

    public String getResumen() {
        return resumen;
    }

    public String getInicio() {
        return inicio;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public void setResumen(String resumen) {
        this.resumen = resumen;
    }

    public void setInicio(String inicio) {
        this.inicio = inicio;
    }
    
}
