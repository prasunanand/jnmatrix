def add(a,b)
	x = Linear.new
	y = x.matUtilCreate(a.shape, a.elements, false)
	z = x.matUtilCreate(b.shape, b.elements, false)
	x.matrixAdditionFunction(y,z)
end

def multiply(a,b)
	x = Linear.new
	y = x.matUtilCreate(a.shape, a.elements, false)
	z = x.matUtilCreate(b.shape, b.elements, false)
	x.matrixMultiplicationFunction(y,z)
end

def subtract(a,b)
	x = Linear.new
	y = x.matUtilCreate(a.shape, a.elements, false)
	z = x.matUtilCreate(b.shape, b.elements, false)
	x.matrixSubtractionFunction(y,z)
end