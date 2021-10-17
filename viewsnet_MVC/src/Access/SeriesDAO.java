package Access;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import modelo.SeriesModel;
import utils.conex;

public class SeriesDAO {
    private Connection conn=null;
    
    public ArrayList<SeriesModel> obtenerSeries(){
        ArrayList<SeriesModel> series = new ArrayList<SeriesModel>();
        try{
            if(conn == null)
                conn = conex.getConnection();
            
            String sql = "SELECT series_id,titulo,series_episodios,series_temporadas FROM viewsnet.series ";
            Statement statement = conn.createStatement();
            ResultSet result = statement.executeQuery(sql);
            while (result.next()){
                SeriesModel serie = new SeriesModel(result.getString(1), result.getString(2), result.getInt(3), result.getInt(4) );
                series.add(serie);
            }
        }
        catch(SQLException ex){}
        return series;
    }
    
    public SeriesModel obtenerSerie(String codigo){
        SeriesModel serieReturn= new SeriesModel("","",0,0);                
        try{
            if(conn == null)
                conn = conex.getConnection();
            
            String sql = "SELECT series_id,titulo,series_episodios,series_temporadas FROM viewsnet.series where series_id="+codigo;
            Statement statement = conn.createStatement();
            ResultSet result = statement.executeQuery(sql);
            while (result.next()){
                SeriesModel serie = new SeriesModel(result.getString(1), result.getString(2), result.getInt(3), result.getInt(4) );                
                serieReturn= serie;
            }
        }
        catch(SQLException ex){}
        return serieReturn;
    }
    
    public void agregarSerie(SeriesModel serie){
        try{
            if(conn == null)
                conn = conex.getConnection();
                        
            String sql = "INSERT INTO series(series_id,titulo,series_episodios,series_temporadas)"+"VALUES(?, ?, ?, ?);"; //inyeccion o compatibilidad de datos
            
            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setString(1, serie.getSeriesId()); //inyeccion de datos
            statement.setString(2, serie.getTitulo());
            statement.setInt(3, serie.getTemporadas());
            statement.setInt(4, serie.getEpisodios());
            int filasInsertadas = statement.executeUpdate();
            if (filasInsertadas > 0)
                System.out.println("Ingreso exitoso");
            else
                System.out.println("Error al ingresar");
            conn.close();
        }
        catch (SQLException ex){
            ex.printStackTrace(); //imprimi errores y dejar pase el mensaje
        }
    }
    
    public void modificarSerie(SeriesModel serie){
      try{
            if(conn == null)
                conn = conex.getConnection();
                        
            String sql = "UPDATE series SET titulo = ?,series_episodios =?, series_temporadas =? WHERE series_id = '?';"; //inyeccion o compatibilidad de datos                        
            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setString(1, serie.getSeriesId()); //inyeccion de datos
            statement.setString(2, serie.getTitulo());
            statement.setInt(3, serie.getTemporadas());
            statement.setInt(4, serie.getEpisodios());
            int filasInsertadas = statement.executeUpdate();
            if (filasInsertadas > 0)
                System.out.println("Actualizacion exitosa");
            else
                System.out.println("Error al actualizar");
            conn.close();
        }
        catch (SQLException ex){
            ex.printStackTrace(); //imprimir errores y dejar pase el mensaje
        }
    }  
                
    public void eliminarSerie(SeriesModel serie){
       try{
            if(conn == null)
                conn = conex.getConnection();
                        
            String sql = "UPDATE series SET titulo = ?,series_episodios =?, series_temporadas =? WHERE series_id = '?';"; //inyeccion o compatibilidad de datos
                        
            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setString(1, serie.getSeriesId()); //inyeccion de datos
            statement.setString(2, serie.getTitulo());
            statement.setInt(3, serie.getTemporadas());
            statement.setInt(4, serie.getEpisodios());
            int filasInsertadas = statement.executeUpdate();
            if (filasInsertadas > 0)
                System.out.println("Actualizacion exitosa");
            else
                System.out.println("Error al actualizar");
            conn.close();
        }
        catch (SQLException ex){
            ex.printStackTrace(); //imprimir errores y dejar pase el mensaje
        }
    }

    public ArrayList<SeriesModel> getSeriesModel() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}
