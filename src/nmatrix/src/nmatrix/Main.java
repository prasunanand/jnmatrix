package nmatrix;

import java.util.Random;

import org.apache.commons.math3.linear.Array2DRowRealMatrix;
import org.apache.commons.math3.linear.MatrixUtils;
import org.apache.commons.math3.linear.RealMatrix;

public class Main {
	
	 public static double randomFill(){

		    Random rand = new Random();
		    int randomNum = rand.nextInt(999999);
		    return randomNum;
		    }
	 
	public static double[][] list(int length) {
	    double[][] anArray = new double[length][length];
	    for(int i=0;i<length;i++)
	    {
	    	for(int j=0;j<length;j++){
	    		anArray[i][j] = randomFill();
	    	}
	    }
	    return anArray;
	}
	
	public static void main(String[] args){
		double[][] arr = list(1000);
		
		Linear a = new Linear();
//		RealMatrix m4 = a.matrixCreation(new int[]{3000,3000},arr,false);
		RealMatrix m = MatrixUtils.createRealMatrix(arr);
		long startTime = System.currentTimeMillis();
	    RealMatrix m5 = m.multiply(m);
//	    System.out.println(m5);
	    long endTime = System.currentTimeMillis();
	    System.out.println("Total execution time:"+ (endTime - startTime) +" ms"); 
		
		
		
		
	}
	
}
