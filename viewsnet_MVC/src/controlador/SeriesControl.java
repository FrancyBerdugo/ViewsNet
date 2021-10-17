package controlador;
import Access.SeriesDAO;
import Vist.Series;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.util.ArrayList;
import modelo.SeriesModel;


public class SeriesControl implements ActionListener{
    
    private Series view;
    private SeriesModel model;
    private SeriesDAO dao;
    
    public SeriesControl(Series view,SeriesModel model, SeriesDAO dao){
        this.view = view;
        this.model= model;
        this.dao = dao;
        this.view.btnBuscar.addActionListener(this);
        this.view.btnEditar.addActionListener(this);
        this.view.btnAgregar.addActionListener(this);
        this.view.btnEliminar.addActionListener(this);
        this.view.btnCancelar.addActionListener(this);
        this.view.btnVerTodo.addActionListener(this);
               
    }
    public void iniciar (){
        view.setTitle("Series MVC");
        view.setLocationRelativeTo(null);
    }

    //@Override
    public void actionPerformed(ActionEvent ae) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
    /*private void llenarSeries(){
        SeriesDAO serdao = new SeriesDAO();
        ArrayList<SeriesModel> listaSeries = serdao.getSeriesModel();
        
        cbxSeries.removeAllItems();
        
        for(int i = 0; i< listaSeries.size(); i++){
           cbxSeries.addItem(listaSeries.get(i).getTitulo());
        }
    }*/
            
}
