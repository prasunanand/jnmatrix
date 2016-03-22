package nmatrix;

import org.jblas.DoubleMatrix;

public class Atlas {
	public DoubleMatrix AtlasMatrixCreate(int[] shape, double[] OneDArray, boolean flag) {
		double[][] TwoDArray = new double[shape[0]][shape[1]];
		for (int i=0,index=0; i < shape[0];i++ ){
			for(int j=0; j< shape[1]; j++){
				TwoDArray[i][j] = OneDArray[index];
				index++;
			}
			
		}
		return new DoubleMatrix(TwoDArray);
	}
	
	public DoubleMatrix matrixAdditionFunction(DoubleMatrix a,DoubleMatrix b){
		return a.add(b);
	} 
	
	public DoubleMatrix matrixMultiplicationFunction(DoubleMatrix a,DoubleMatrix b){
		return a.mmul(b);
	}
	public DoubleMatrix matrixSubtractionFunction(DoubleMatrix a,DoubleMatrix b){
		return a.sub(b);
	}
}
