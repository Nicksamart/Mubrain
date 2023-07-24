package control;

import dao.Musica_avulsaDAO;
import java.util.List;
import model.Musica_avulsa;


public class MusicaAvulsa_ctrl {
    
    public List<Musica_avulsa> select_all() {
        Musica_avulsaDAO dao = new Musica_avulsaDAO();
        return dao.read();
    }  
    
    public boolean validarDados (Musica_avulsa music) {
      return 
             !music.getNome().isEmpty() &&
             music.getCodusuario()> 0;
    }
    
    public boolean salvarDados(Musica_avulsa musica) {
        boolean resp = false;
        
        if (validarDados (musica)) {
            Musica_avulsaDAO  dao = new Musica_avulsaDAO ();
            
            if (musica.getCodigo()!= 0) {
            
            resp = dao.update(musica);
                
            } else {
            resp = dao.create(musica);
            
            }
        }         
        return resp;
    }

    public boolean delete(int codigo) {
        Musica_avulsaDAO  dao = new Musica_avulsaDAO ();
        return dao.delete(codigo);
    }
    
    
}
