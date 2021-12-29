class NextMonthAsset
	def initialize(month_yield, current_asset, month_fund)
		raise ArgmentError, "must be MonthYield class object" if month_yield.is_a?(MonthYield)
		@month_yield = month_yield
		@current_asset = current_asset
		@month_fund = month_fund
	end

	def calculate
		(@current_asset + @month_fund) * @month_yield
	end
end