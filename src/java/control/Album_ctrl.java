
package control;

import dao.AlbumDAO;
import java.util.List;
import model.Album;


public class Album_ctrl {
    
     public List<Album> select_all() {
        AlbumDAO dao = new AlbumDAO();
        return dao.read();
    }  
    
    public boolean validarDados (Album album) {
      return 
             !album.getNome().isEmpty() &&
             album.getCodart()> 0;
    }
    
    public boolean salvarDados(Album album) {
        boolean resp = false;
        
        if (validarDados (album)) {
            AlbumDAO dao = new AlbumDAO();
            
            if (album.getCodigo()!= 0) {
            
            resp = dao.update(album);
                
            } else {
            resp = dao.create(album);
            
            }
        }         
        return resp;
    }

    public boolean delete(int codigo) {
        AlbumDAO dao = new AlbumDAO();
        return dao.delete(codigo);
    }
    
}
