 package modelo;

public class SeriesModel {
    private String seriesId;
    private String titulo;
    private int    temporadas;
    private int    episodios;
    
    public SeriesModel (String seriesId,String titulo,int temporadas, int episodios){
        this.seriesId   = seriesId;
        this.titulo     = titulo;
        this.temporadas = temporadas;
        this.episodios  = episodios; 
        
    }    

    /**
     * @return the seriesId
     */
    public String getSeriesId() {
        return seriesId;
    }

    /**
     * @param seriesId the seriesId to set
     */
    public void setSeriesId(String seriesId) {
        this.seriesId = seriesId;
    }

    /**
     * @return the titulo
     */
    public String getTitulo() {
        return titulo;
    }

    /**
     * @param titulo the titulo to set
     */
    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    /**
     * @return the temporadas
     */
    public int getTemporadas() {
        return temporadas;
    }

    /**
     * @param temporadas the temporadas to set
     */
    public void setTemporadas(int temporadas) {
        this.temporadas = temporadas;
    }

    /**
     * @return the episodios
     */
    public int getEpisodios() {
        return episodios;
    }

    /**
     * @param episodios the episodios to set
     */
    public void setEpisodios(int episodios) {
        this.episodios = episodios;
    }
  
  
}
