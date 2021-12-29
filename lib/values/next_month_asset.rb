class NextMonthAsset
	def initialize(month_yield, current_asset, month_fund)
		@month_yield = month_yield
		@current_asset = current_asset
		@month_fund = month_fund
	end

	def calculate
		(@current_asset + @month_fund) * (@month_yield * 0.01 + 1)
	end
end