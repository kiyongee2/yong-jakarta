package calculator;

public class Calculator {
	private double n1;
	private double n2; 
	private String op;
	
	public double calc() {
		double result = 0;
		
		switch(op) {
		case "+":
			result = n1 + n2; break;
		case "-":
			result = n1 - n2; break;
		case "*":
			result = n1 * n2; break;
		case "/":
			result = n1 / n2; break;
		}
		return result;
	}

	
	public double getN1() {
		return n1;
	}


	public void setN1(double n1) {
		this.n1 = n1;
	}


	public double getN2() {
		return n2;
	}


	public void setN2(double n2) {
		this.n2 = n2;
	}


	public String getOp() {
		return op;
	}

	public void setOp(String op) {
		this.op = op;
	}
}
