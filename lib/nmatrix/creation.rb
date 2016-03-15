class Nmatrix
	@Jnmatrix
	@shape
	@dtype
	@elements
	attr_accessor :shape , :dtype, :elements

	def initialize(dtype,shape,elements)
		@dtype = dtype
		@shape = shape
		@elements = elements

		a= Jnmatrix.new("Int32", shape, elements)
		puts a.inspect
	end

end