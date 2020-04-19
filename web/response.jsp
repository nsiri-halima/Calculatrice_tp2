<%-- 
    Document   : response
    Created on : 18 avr. 2020, 22:03:52
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Calculatrice</title>
    </head>
    <body>
        <%
            int op1 = Integer.parseInt(request.getParameter("op1"));
            int op2 = Integer.parseInt(request.getParameter("op2"));
            String operation = request.getParameter("operation");
            String resultat = "";
            %>
            <%!
                float leresultat;
                %>
                <h2> réponse </h2>
                <%
                    if(operation.equals("addition")){
                        resultat = String.valueOf(op1+op2);
                        leresultat=op1+op2;
                        
                    }
                    if (operation.equals("soustraction")){
                        resultat = String.valueOf(op1-op2);
                        leresultat=op1-op2;
                    }
                     if (operation.equals("multiplication")){
                        resultat = String.valueOf(op1*op2);
                        leresultat=op1*op2;
                    }
                     if (operation.equals("division")){
                         if (op2 == 0){
                         %>
                         <jsp:forward page="erreur.html" />
                         <%
                             } else {
resultat = String.valueOf(op1/op2);
leresultat=op1/op2;
                         }
                     }
%>
<hr>
<table>
    <tr>
        <td> Résultat </td>
        <td> <%= leresultat%>
    </tr>
</table>
                    
                    
    </body>
</html>
