class MonthYield
	def initialize(year_yield)
		# ％値ではなく実数値で渡すこと
		@year_yield = year_yield
	end

	def calculate
		(1 + @year_yield.to_r) ** (1.0/12)
	end
end