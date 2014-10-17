require_relative "Complex"
require "test/unit"
class TestComplex < Test::Unit::TestCase
	def setup
		@a = Complejo.new(3.0,5.0)
		@b = Complejo.new(7.0,8.0)
	end

	def testSuma
		assert_equal("10.0+13.0i", (@a+@b).to_s)
	end

	def testResta
		assert_equal("-4.0-3.0i", (@a-@b).to_s)
	end

	def testMultiplicacion
		assert_equal("-19.0+59.0i", (@a*@b).to_s)
	end

	def testDivision
		assert_equal("0.84+0.81i", (@a/@b).to_s)
	end

	def testPEscalar
		assert_equal("6.0+10.0i", (@a*2).to_s)
	end
end
