class Complejo
	attr_reader :real, :imaginaria
	attr_writer :real, :imaginaria
	def initialize(real, imaginaria)
		@real,@imaginaria = real,imaginaria
	end

	def to_s
		if @imaginaria >= 0
			"#{real}+#{imaginaria}i"
		else
			"#{real}#{imaginaria}i"
		end
	end

	def +(other)
		Complejo.new(@real + other.real, @imaginaria + other.imaginaria)
	end

	def -(other)
		Complejo.new(@real - other.real, @imaginaria - other.imaginaria)
	end

	def *(other)
		if other.class.to_s == "Complejo"
			Complejo.new((@real * other.real) - (@imaginaria * other.imaginaria), (@real * other.imaginaria) + (@imaginaria * other.real))
		else
			Complejo.new(@real * other, @imaginaria * other)
		end
	end

	def /(other)
		dividendo = ((@real**2) + (other.imaginaria**2))
		Complejo.new((((@real * other.real) + (@imaginaria * other.imaginaria))/dividendo).round(2), (((@imaginaria * other.real) + (@real * other.imaginaria))/dividendo).round(2))
	end
end