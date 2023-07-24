
package control;

import dao.ArtistaDAO;
import model.Artista;
import java.util.List;


public class Artista_ctrl {
    
     public List<Artista> select_all() {
        ArtistaDAO dao = new ArtistaDAO();
        return dao.read();
    }  
    
    public boolean validarDados (Artista artista) {
      return 
             !artista.getNome().isEmpty() &&
              !artista.getNome_banda().isEmpty();
            
    }
    
    public boolean salvarDados(Artista artista) {
        boolean resp = false;
        
        if (validarDados (artista)) {
            ArtistaDAO dao = new ArtistaDAO();
            
            if (artista.getCodigo()!= 0) {
            
            resp = dao.update(artista);
                
            } else {
            resp = dao.create(artista);
            
            }
        }         
        return resp;
    }

    public boolean delete(int codigo) {
        ArtistaDAO dao = new ArtistaDAO();
        return dao.delete(codigo);
    }
    
}
