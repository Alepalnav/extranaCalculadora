package extranaCalculadora;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class calculadora2 {
	
	
	
	private String resultado;
	
	
	/**
	 * Este metodo es para el boton calcular
	 * @param resultado
	 * @return string con el resultado del calculo
	 */
	
	public static String calcular(String resultado) {
		String res="";
		double num=0;  // aqui almacenaremos los numeros que sumemos
		int n1 =0;		// pequeño contador que utilizamos para el substring
		for(int a=0;a<resultado.length();a++) {
			if(resultado.charAt(a)=='+'||resultado.charAt(a)=='-') { // cuando encontremos un operador 
				num+=Double.valueOf(String.valueOf(resultado.substring(n1, a)));	
				n1=a;
			}if(a==resultado.length()-1){
				num+=Double.valueOf(String.valueOf(resultado.substring(n1, a+1)));	
			}
		}
		res=String.valueOf(num);			
		
		return res;
	}
	

	
	
	
	
	
}


