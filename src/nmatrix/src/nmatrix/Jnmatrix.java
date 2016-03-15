package nmatrix;

public class Jnmatrix {
	
	public enum dtype { BYTE(0),
		INT8(1),
		INT16(2),
		INT32(3),
		INT64(4),
		FLOAT32(5),
		FLOAT64(6),
		COMPLEX64(7),
		COMPLEX128(8),
		RUBYOBJ(9);
		private int value;
		
		private dtype(int value) {
		        this.value = value;
		}
		public int printa(){
			return this.value;
		}
	}
	
//	Dtype2 jnmatrixDtype;
	public int[] elements;
	public int[] shape;
	
	public class Dtype2<DType>{
		private DType t;
		private dtype d;
		
		public void set(DType t) { 
			this.t = t; 
		};
		public DType get() { return t; }
		
		public Dtype2(DType t){
			this.t = t;
			if(t=="Int32"){
				this.d = dtype.INT32;
			}
		}
		
		public void setdtype(){
			if(t=="Int32"){
				this.d = dtype.INT32;
			}
		}
		
		public void printdtype(){
			System.out.println(this.d.printa());
		}
		
		public void printdtype2(){
			System.out.println(this.t);
		}
	}
	public class Stype{
		
	}
	
	public String sayHello(){
		return "Hello";
	}
	
	

	public Jnmatrix(String arg1, int[] arg2, int[] arg3){
//		this.jnmatrixDtype = new Dtype2(arg1);
		this.shape = arg2;
		this.elements = arg3;
		
	}
	
	public void RealMatrix(){
		
	}

	

	public int giveMeOne(){
		return 1;
	}

}

//public static void main(String[] args) {
//	System.out.println("Nmatrix check");
//	Jnmatrix a = new Jnmatrix("Int32", new int[]{2,2}, new int[]{2,3,4,5});
//	System.out.println(a);
//}