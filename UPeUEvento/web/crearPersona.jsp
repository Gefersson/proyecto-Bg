<%-- 
    Document   : crearPersona
    Created on : 07/11/2016, 09:05:16 AM
    Author     : Alumnos
--%>

<%@page import="pe.edu.upeu.modelo.PersonaTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <title>JSP Page</title>
    </head>
    <body>
        <%
        PersonaTO to=null;
        String opt=request.getParameter("opt");
        
        if(!opt.equals("C")){
        
        to=(PersonaTO)request.getSession()
                .getAttribute("personaX");
        }
        %>        
        <form name="formCrear" action="PersonaControlx">
            <table border="0">
                <thead>
                    <tr>
                        <th colspan="2">FORMULARIO - CREAR PERSONA</th>                        
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Nombre:</td>
                        <td><input type="text" name="nombre" value="<% if(!opt.equals("C")){out.print(to.getNombres());} %>" /></td>
                    </tr>
                    <tr>
                        <td>Apellidos:</td>
                        <td><input type="text" name="apellidos" value="<% if(!opt.equals("C")){out.print(to.getApellidos());} %>" /></td>
                    </tr>
                    <tr>
                    <td colspan="2" >
                    <center> 
                        <input type="hidden" name ="opc"
                               value="<%if(opt.equals("C")){out.print("B1");}
                                                    else {out.print("C1");}%>" />
                                                    
                        <input type="hidden" name="id" 
                                                value="<%if(!opt.equals("C")){
                                                    out.print(to.getId());}%>" />
                                                    
                        <input type="submit" value="<%if(opt.equals("C")){
                                                     out.print("Enviar");}
                        else{out.print("Guardar");}%>" name="btnEnviar" />   
                                                    
                   
                    </center>
                    </td>
                        
                    </tr>
                </tbody>
            </table>

             
             
            
        </form> 
    </body>
</html>
