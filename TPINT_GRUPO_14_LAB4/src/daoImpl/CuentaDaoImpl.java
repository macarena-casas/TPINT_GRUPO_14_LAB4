package daoImpl;

import java.beans.Statement;
import java.math.BigDecimal;
import java.sql.ResultSet;
import java.util.ArrayList;

import dao.CuentaDao;
import entidad.Cliente;
import entidad.Cuenta;
import entidad.TipoCuenta;

public class CuentaDaoImpl implements CuentaDao{

	@Override
	public boolean insert(Cuenta cuenta) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean update(int nroCuenta, String tipoCuenta, BigDecimal saldo) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public ArrayList<Cuenta> listCuentasPorCliente(String dni) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Cuenta get(int nroCuenta) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ArrayList<Cuenta> list() {
		try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        }
        catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
		//Conexion conexion = new Conexion();
		String consulta="select clientes.nombre, clientes.apellido, tiposcuentas.tipo_cuenta, cuentas.numero_cuenta , cuentas.cbu, cuentas.saldo from cuentas inner join tiposcuentas on cuentas.id_tipoCuenta= tiposcuentas.id_tipoCuenta inner join clientes on cuentas.dni= clientes.dni ;";
	    ArrayList<Cuenta> listCuenta = new ArrayList<>();

	    try {
	        Conexion conexion = Conexion.getConexion();
	        Statement st = (Statement) conexion.getStatement();
	        if (st != null) {
	            ResultSet rs = ((java.sql.Statement) st).executeQuery(consulta);
	            while (rs.next()) {
	            	Cuenta cuenta = new Cuenta();
					Cliente cliente= new Cliente();
					TipoCuenta tipoCuenta = new TipoCuenta();
					cliente.setNombre(rs.getString("nombre"));
					cliente.setApellido(rs.getString("apellido"));
					cuenta.setCliente(cliente);
					tipoCuenta.setDescripcion(rs.getString("tipo_cuenta"));
					cuenta.setNroCuenta(rs.getInt("numero_cuenta"));
					cuenta.setCbu(rs.getString("cbu"));
					cuenta.setSaldo(rs.getBigDecimal("saldo"));
	            }
	           
	        } else {
	            System.out.println("Error: No se pudo obtener un Statement de la conexión.");
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	    return listCuenta;
		//return null;
	}
	

	@Override
	public String delete(int nroCuenta) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean prestamosPorCuenta(int nroCuenta) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public int getLastId() {
		// TODO Auto-generated method stub
		return 0;
	}

}
