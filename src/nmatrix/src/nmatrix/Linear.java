package nmatrix;

import org.apache.commons.math3.linear.RealMatrix;
import org.apache.commons.math3.linear.Array2DRowRealMatrix;
import org.apache.commons.math3.linear.LUDecomposition;
import org.apache.commons.math3.linear.MatrixUtils;
import org.apache.commons.math3.linear.ArrayRealVector;
import org.apache.commons.math3.linear.RealVector;
import org.apache.commons.math3.linear.DecompositionSolver;
public class Linear {

	public RealMatrix matrixCreation(int[] shape, double[] OneDArray, boolean flag){
		double[][] TwoDArray = new double[shape[0]][shape[1]];
		for (int i=0,index=0; i < shape[0];i++ ){
			for(int j=0; j< shape[1]; j++){
				TwoDArray[i][j] = OneDArray[index];
				index++;
			}
			
		}
		
		return new Array2DRowRealMatrix(TwoDArray, flag);
	}
	
	//Matrix Addition
	public RealMatrix matUtilCreate(int[] shape, double[] OneDArray, boolean flag) {
		double[][] TwoDArray = new double[shape[0]][shape[1]];
		for (int i=0,index=0; i < shape[0];i++ ){
			for(int j=0; j< shape[1]; j++){
				TwoDArray[i][j] = OneDArray[index];
				index++;
			}
			
		}
		return MatrixUtils.createRealMatrix(TwoDArray);
	}
	
	public RealMatrix matrixAdditionFunction(RealMatrix a,RealMatrix b){
		return a.add(b);
	} 
	
	public RealMatrix matrixMultiplicationFunction(RealMatrix a,RealMatrix b){
		return a.multiply(b);
	}
	public RealMatrix matrixSubtractionFunction(RealMatrix a,RealMatrix b){
		return a.subtract(b);
	}
	
	// Matrix Solve LuDecomposition
//	public void printSol(){
//		RealMatrix coefficients = new Array2DRowRealMatrix(new double[][] { { 2, 3, -2 }, { -1, 7, 6 }, { 4, -3, -5 } },
//			                       false);
//		DecompositionSolver solver = new LUDecomposition(coefficients).getSolver();
//		RealVector constants = new ArrayRealVector(new double[] { 1, -2, 1 }, false);
//		RealVector solution = solver.solve(constants);	
//		System.out.println(solution);
//	}
	public RealMatrix getcoefficients(double[][] TwoDArray, boolean flag){
		return new Array2DRowRealMatrix(TwoDArray, flag);
		
	}
	public RealVector solver(RealMatrix coefficients, double[] yArray){
		DecompositionSolver solver = new LUDecomposition(coefficients).getSolver();
		RealVector constants = new ArrayRealVector(yArray, false);
		return solver.solve(constants);	
	}
	public RealVector solver2(double[][] TwoDArray, boolean flag, double[] yArray){
		return solver(getcoefficients(TwoDArray, flag), yArray);
	}
	
	
	
	

}
