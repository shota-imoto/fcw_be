class AssetCalculationService
	def self.calculate(year_yield, current_asset, month_fund, months)
		month_yield = MonthYield.new(year_yield).calculate
		sum = current_asset
		1.upto(months) do |i|
			sum = NextMonthAsset.new(month_yield, sum, month_fund).calculate
		end

		sum
	end
end