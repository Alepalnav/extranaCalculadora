package extranaCalculadora;

import java.util.ArrayList;
import java.util.List;

public class calculadora2 {
	private String resultado;
	
	public static String calcular(String resultado) {
		String res="";
		int num=0;
		
		for(int a=0;a<resultado.length();a++) {
			if(resultado.charAt(a)=='+') {
				num=num+Integer.parseInt(String.valueOf(resultado.charAt(a+1)));
			}else if(resultado.charAt(a)=='-') {
				num=num-Integer.parseInt(String.valueOf(resultado.charAt(a+1)));
			}
		}
		
		res=String.valueOf(num);
		
		return res;
	}
	
}


