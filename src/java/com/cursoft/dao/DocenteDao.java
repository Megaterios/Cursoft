/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cursoft.dao;

import com.cursoft.dto.DocenteDto;
import com.cursoft.dto.UsuarioDto;
import com.cursoft.util.ConexionMysql;
import java.util.ArrayList;

/**
 *
 * @author Manuel
 */
public class DocenteDao {

    public DocenteDao(){}
    
    public boolean registrarDocente(UsuarioDto usuario, DocenteDto docente) {
        ConexionMysql.conectar();
        String sql1 = "SELECT usuarios.idUsuario FROM usuarios WHERE codigo='" + usuario.getCodigo()+ "';";
        ArrayList resultado = ConexionMysql.getConsultaSQL(sql1);
        System.out.println(resultado.toString());
        
        String idUsuario = ((String) resultado.get(0)).split("-")[0];
        
        String sql = "INSERT INTO docentes (escolaridad, escalafon, puntaje, tipo, idUsuarioDoc) VALUES ('" + docente.getEscolaridad() + "','" +
                docente.getEscalafon() + "','" + docente.getPuntaje() + "','" + docente.getTipo() + "','" + idUsuario + "'" + ")";
        
        System.out.println(sql);
        
        ConexionMysql.ejecutarActualizacionSQL(sql);
        ConexionMysql.desconectar();
        
        return true;
    }

    public String consultarDocenteCodigo(String codigo) {
        ConexionMysql.conectar();
        
        String consulta = "";
        String consultaArmada ="";
        
        ArrayList resultado = ConexionMysql.getConsultaSQL("SELECT * FROM usuarios WHERE codigo = '"+codigo+"';");
        //consulta += resultado.toString();
        System.err.println(resultado.toString());
        
        String idUsuario = ((String) resultado.get(0)).split("-")[0];
        
        consultaArmada += ((String) resultado.get(0)).split("-")[1] + "-" + ((String) resultado.get(0)).split("-")[2] + "-" +
                ((String) resultado.get(0)).split("-")[3] + "-" + ((String) resultado.get(0)).split("-")[4] + "-" +
                ((String) resultado.get(0)).split("-")[5] + "-" + ((String) resultado.get(0)).split("-")[6] + "-" +
                ((String) resultado.get(0)).split("-")[7] + "-" + ((String) resultado.get(0)).split("-")[8] + "-" +
                ((String) resultado.get(0)).split("-")[9] + "-" + ((String) resultado.get(0)).split("-")[10] + "-" +
                ((String) resultado.get(0)).split("-")[11] + "-";
        
        resultado.clear();
        
        resultado = ConexionMysql.getConsultaSQL("SELECT * FROM docentes WHERE idUsuarioDoc='" 
                + idUsuario + "';");
        
        consultaArmada += ((String) resultado.get(0)).split("-")[2] + "-" + ((String) resultado.get(0)).split("-")[3];
        
        ConexionMysql.desconectar();
        
        return consultaArmada;
    }

    public boolean actualizarDocente(UsuarioDto usuario, DocenteDto docente) {
        System.out.println(" codigo :  "+usuario.getCodigo());
        ConexionMysql.conectar();
        String sql1 = "SELECT usuarios.idUsuario FROM usuarios WHERE codigo='" + usuario.getCodigo()+ "';";
        ArrayList resultado = ConexionMysql.getConsultaSQL(sql1);
        System.out.println(resultado.toString());
        
        String idUsuario = ((String) resultado.get(0)).split("-")[0];
        
        String sql = "UPDATE docentes SET escolaridad = '"+docente.getEscolaridad()+"', escalafon = '"+docente.getEscalafon()+"', "+
                "puntaje = '"+docente.getPuntaje()+"', tipo = '"+docente.getTipo()+"' WHERE idUsuarioDoc = '"+idUsuario+"'";
        
        
        boolean x = ConexionMysql.ejecutarActualizacionSQL(sql);
        ConexionMysql.desconectar();
        return x;
    }

    public String consultarProfesores() {
        ConexionMysql.conectar();
        String sql1 = "SELECT usuarios.idUsuario, usuarios.codigo, usuarios.nombre, usuarios.apellido FROM usuarios;";
        ArrayList resultado = ConexionMysql.getConsultaSQL(sql1);
        System.out.println("el resultado es:     "+resultado.toString());
        String consulta = "";
        for(int i =0; i<resultado.size(); i++){
            System.out.println("i va de la sgte manera:  "+i);
            String [] idUsuarios = resultado.get(i).toString().split("-");
            
            ArrayList resultado2 = ConexionMysql.getConsultaSQL("SELECT docentes.idDocente FROM docentes WHERE idUsuarioDoc='" 
                    + idUsuarios[0] + "';");
            System.out.println("el resultado 2 es igual a:  "+resultado2.toString());
            if(!resultado2.isEmpty()){
                System.out.println(resultado2.toString());
                consulta += idUsuarios[1]+"-"+idUsuarios[2]+"-"+idUsuarios[3]+";";
                System.out.println("La consulta va de la siguiente manera:   "+consulta);
            }
        }
        ConexionMysql.desconectar();
        return consulta;
    }
    
    
}