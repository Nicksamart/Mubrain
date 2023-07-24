package control;

import dao.MusicaDAO;
import java.util.List;
import model.Musica;



public class Musica_ctrl {
    
    public List<Musica> select_all() {
        MusicaDAO dao = new MusicaDAO();
        return dao.read();
    }  
    
    public boolean validarDados (Musica music) {
      return 
             !music.getNome().isEmpty() &&
             music.getCodusuario()> 0;
    }
    
    public boolean salvarDados(Musica musica) {
        boolean resp = false;
        
        if (validarDados (musica)) {
            MusicaDAO dao = new MusicaDAO();
            
            if (musica.getCodigo()!= 0) {
            
            resp = dao.update(musica);
                
            } else {
            resp = dao.create(musica);
            
            }
        }         
        return resp;
    }

    public boolean delete(int codigo) {
        MusicaDAO dao = new MusicaDAO();
        return dao.delete(codigo);
    }
    
    
}
