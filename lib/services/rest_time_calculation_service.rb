class RestTimeCalculationService
	def self.calculate(year_yield, current_asset, month_fund, target_amount)
		month_yield = MonthYield.new(year_yield).calculate
		asset_points = [current_asset]

		while asset_points.last < target_amount do
			asset_points << NextMonthAsset.new(month_yield, asset_points.last, month_fund).calculate
		end

		asset_points
	end
end