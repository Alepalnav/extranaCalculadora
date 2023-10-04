<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="extranaCalculadora.calculadora2" %>
<%@ page import="extranaCalculadora.Operacion" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
	<style>
		body {
    background-color: rgb(240, 216, 185);
    display: flex;
    flex-direction: column;
    align-items: center;
    vertical-align:middle;
    margin-top: 120px;
}

h1{
	font-size: 50px;
}

#general {
    background-color: aliceblue;
    height: 250px;
    width: 300px;
    padding: 20px;
} 

.card {
    width: 190px;
    height: 254px;
    background: white;
    border-radius: 10px;
    transition: border-radius 0.5s cubic-bezier(0.175, 0.885, 0.32, 1.275);
   }
   
   .shadow {
    box-shadow: inset 0 -3em 3em rgba(0,0,0,0.1),
                0 0  0 2px rgb(190, 190, 190),
                0.3em 0.3em 1em rgba(0,0,0,0.3);
   }

form {
    padding: 10px;

}

#area {
    align-items: center;
    display: flex;
    flex-direction: column;
    padding-bottom: 20px;
}

#text {
    font-size: 20px;
}

#numero {
    margin: 10px;
}

#calculardiv {
    display: flex;
    flex-direction: column;
    align-items: center;
    padding: 10px;
    margin-top: 20px;
}

#botondiv {
    text-align: center;
    padding-top: 10px;
}

button {
    align-items: center;
    appearance: none;
    background-color: #FCFCFD;
    border-radius: 4px;
    border-width: 0;
    box-shadow: rgba(45, 35, 66, 0.2) 0 2px 4px,rgba(45, 35, 66, 0.15) 0 7px 13px -3px,#D6D6E7 0 -3px 0 inset;
    box-sizing: border-box;
    color: #36395A;
    cursor: pointer;
    display: inline-flex;
    font-family: "JetBrains Mono",monospace;
    height: 30px;
    justify-content: center;
    line-height: 1;
    list-style: none;
    overflow: hidden;
    padding-left: 16px;
    padding-right: 16px;
    position: relative;
    text-align: left;
    text-decoration: none;
    transition: box-shadow .15s,transform .15s;
    user-select: none;
    -webkit-user-select: none;
    touch-action: manipulation;
    white-space: nowrap;
    will-change: box-shadow,transform;
    font-size: 18px;
   }
   
   button:focus {
    box-shadow: #D6D6E7 0 0 0 1.5px inset, rgba(45, 35, 66, 0.4) 0 2px 4px, rgba(45, 35, 66, 0.3) 0 7px 13px -3px, #D6D6E7 0 -3px 0 inset;
   }
   
   button:hover {
    box-shadow: rgba(45, 35, 66, 0.3) 0 4px 8px, rgba(45, 35, 66, 0.2) 0 7px 13px -3px, #D6D6E7 0 -3px 0 inset;
    transform: translateY(-2px);
   }
   
   button:active {
    box-shadow: #D6D6E7 0 3px 7px inset;
    transform: translateY(2px);
   }
	
	</style>
</head>
<body>
	<h1>Calculadora Extraña</h1>
	<%
	String operador = request.getParameter("operator");
	String numeroStr = request.getParameter("numero");
	String result = request.getParameter("result");
		
	if(result==null){
		result="";
	}
	if(operador!=null&&numeroStr!=null){
		result+=operador+numeroStr;
	}
	if(request.getParameter("borrar")!=null){
		result="";
	}
	
	
	%>
	 <div id="general" class="card shadow">
		<form action="calculadora2.jsp" method="get">
			<div id="area">
				<textarea id="text" name="result" rows="2" cols="24"><%= result %></textarea>
			</div>
			<input id="numero" type="text" name="numero">
			<select id="operator" name="operator" value="operator">
				<option value="+">+</option>
				<option value="-">-</option>
			</select> 
            <div id="botondiv">
                <button id="anadir" type="submit"name="anadir">anadir</button>
                <button id="borrar" type="submit" name="borrar">borrar</button>
            </div>
            <div id="calculardiv">
                <button id="calcular" name="calcular">Calcular</button>
            </div>
		</form>
	</div>
</body>
</html>