package database;

import java.sql.Connection;
import config.DBconn;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Orador;

/**
 *
 * @author gcasado0
 */
public class OradorDAO {
    private Connection conexion;
    public String mensaje=""; 
    
    public OradorDAO(){
        DBconn conn = new DBconn();
        String DB = "tpfinal";
        String userDB = "gustavo";
        String passDB = "Taburi.2010";
        try {
            conexion = conn.getConnection(DB, userDB, passDB);
            if (conexion!=null) 
                mensaje = "Exito"; 
            else 
                mensaje = "Fallo";
        }catch (Exception ex){ 
            Logger.getLogger(OradorDAO.class.getName()).log(Level.INFO, ex.getMessage(), ex);
            mensaje = ex.getMessage();
        }                
    }
 
    public int createOrador(Orador o) throws SQLException {
        PreparedStatement ps;
        int lineasAfectadas;
        
        String pQuery = "INSERT INTO orador (nombre, apellido, titulo, resumen, inicio)"
                        + " VALUES(?, ?, ?, ?, ?);";
        ps = conexion.prepareStatement(pQuery);
        
        ps.setString(1, o.getNombre());
        ps.setString(2, o.getApellido());
        ps.setString(3, o.getTitulo());
        ps.setString(4, o.getResumen());
        ps.setString(5, o.getInicio());
         
        lineasAfectadas = ps.executeUpdate();
        return lineasAfectadas;
    }
    
    public List<Orador> getAll() throws SQLException {
        
        List<Orador> oradores = new ArrayList<>(); 
        Long id;
        String nombre;
        String apellido;
        String titulo;
        String resumen;
        String inicio;
        
        Statement mysql = conexion.createStatement();
        
        String qTraerTodo = "SELECT * FROM orador";
            ResultSet resultado = mysql.executeQuery(qTraerTodo);

            // Mostramos el resultado de la consulta
            while(resultado.next()) {                
                id = resultado.getLong("id");
                nombre = resultado.getString("nombre");
                apellido = resultado.getString("apellido");
                titulo = resultado.getString("titulo");
                resumen = resultado.getString("resumen");
                inicio = resultado.getString("inicio");
                Orador orador = new Orador(id,nombre, apellido, titulo, resumen, inicio);                
                oradores.add(orador);
            }
        
        return oradores;
    }

    public Orador getById(Long id) throws SQLException {
        PreparedStatement ps;
        ResultSet rs;
        Orador o = null;

        ps = conexion.prepareStatement("SELECT * FROM orador WHERE id = ?");
        ps.setLong(1, id);

        rs = ps.executeQuery();

        if(rs.next()) {            
            String nombre = rs.getString("nombre");
            String apellido = rs.getString("apellido");
            String titulo = rs.getString("titulo");
            String resumen = rs.getString("resumen");
            String inicio = rs.getString("inicio");
            o = new Orador(id,nombre, apellido, titulo, resumen, inicio);                  
        }
        return o;
    }

    public int updateOrador(Orador o) throws SQLException {
        PreparedStatement ps;
        int lineasAfectadas;
        
        String pQuery = "UPDATE orador SET nombre = ?, apellido = ?, titulo = ?, inicio = ?, resumen = ?"
                + " WHERE id = ?;";
        ps = conexion.prepareStatement(pQuery);
        
        ps.setString(1, o.getNombre());
        ps.setString(2,o.getApellido());
        ps.setString(3, o.getTitulo());
        ps.setString(4, o.getInicio());
        ps.setString(5, o.getResumen());
        ps.setLong(6, o.getId());
         
        lineasAfectadas = ps.executeUpdate();
        return lineasAfectadas;
    }

    public int deleteOrador(Long id) throws SQLException {
        PreparedStatement ps;
        int lineasAfectadas;
        
        String pQuery = "DELETE FROM orador WHERE id = ?;";
        ps = conexion.prepareStatement(pQuery);
        
        ps.setLong(1, id);
        lineasAfectadas = ps.executeUpdate();
        return lineasAfectadas;
    }
    
}
