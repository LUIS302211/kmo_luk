package persistencia;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import logica.Usuario;

/**
 * Contiene todas las operaciones CRUD requeridas para los datos de los juguetes
 * @author Cielo Juliana
 */
public class RegistroDAO {

    /**
     * Envía la sentencia SQL para obtener la lista de todos los juguetes y estructura
     * la respuesta en una estructura de datos
     * @return una estructura de datos con los objetos de tipo juguete
     */
    public ArrayList<Usuario> consultarUsuarios() {
        ArrayList<Usuario> lista = new ArrayList<>();
        ConexionBD con = new ConexionBD();
        ResultSet rs = con.ejecutarQuery("SELECT id, nombre FROM prueba1");
        try {
            while (rs.next()) {
                int id = rs.getInt("id");
                String nombre = rs.getString("nombre");
                Usuario j = new Usuario(id, nombre);
                lista.add(j);
            }
        } catch (SQLException ex) {
            con.desconectar();
            return null;
        }
        con.desconectar();
        return lista;
    }
    
    /**
     * Envía la sentencia SQL para almacenar el dato de un usuario
     * @param j un objeto de tipo Usuario
     * @return in número indicando el id generado por la base de datos
     */
    public int guardarNuevoUsuario(Usuario j) {
        ConexionBD con = new ConexionBD();
        String nombre = j.getNombre();
        
        
        String sql = "INSERT INTO prueba1 (nombre) VALUES ('"+nombre+"') ";
        System.out.println(sql);
        ResultSet rs = con.ejecutarInsert(sql);
        int id = 0;
        try {
            if (rs.next()){
                id = rs.getInt(1);
            }
        } catch (SQLException ex) {
            con.desconectar();
            return 0; 
        }
        con.desconectar();
        return id;
    }
}
