require 'rails_helper'

RSpec.describe MonthYield, type: :model do
	describe "#calculate" do
		let(:year_yield) { 5 }
		let(:month_yield) { MonthYield.new(year_yield).calculate }

		subject { ((1 + month_yield * 0.01) ** 12 - 1).round(2) }

		it "検算値と元のyear_yieldが小数点2桁の範囲で一致する" do
			is_expected.to eq (year_yield * 0.01)
		end
	end
end