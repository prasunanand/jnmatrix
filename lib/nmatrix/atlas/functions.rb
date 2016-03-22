def add(a,b)
	x = Atlas.new
	y = x.AtlasMatrixCreate(a.shape, a.elements, false)
	z = x.AtlasMatrixCreate(b.shape, b.elements, false)
	x.matrixAdditionFunction(y,z)
end

def multiply(a,b)
	x = Atlas.new
	y = x.AtlasMatrixCreate(a.shape, a.elements, false)
	z = x.AtlasMatrixCreate(b.shape, b.elements, false)
	x.matrixMultiplicationFunction(y,z)
end

def subtract(a,b)
	x = Atlas.new
	y = x.AtlasMatrixCreate(a.shape, a.elements, false)
	z = x.AtlasMatrixCreate(b.shape, b.elements, false)
	x.matrixSubtractionFunction(y,z)
end