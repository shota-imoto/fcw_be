class MonthYield
	def initialize(year_yield)
		# ％値で渡すこと
		@year_yield = year_yield
	end

	def calculate
		(yield_to_integer ** (1.0/12) - 1) * 100
	end

	def yield_to_integer
		1 + @year_yield.to_r * 0.01
	end
end