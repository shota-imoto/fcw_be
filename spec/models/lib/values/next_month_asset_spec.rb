require 'rails_helper'

RSpec.describe NextMonthAsset, type: :model do
	describe '#calculate' do

		shared_examples :correct_calculation do
			subject { NextMonthAsset.new(month_yield, current_asset, month_fund).calculate }

			it '結果が正しい' do
				is_expected.to eq expect_result
			end
		end

		context 'month_yieldの値による検証' do
			context 'month_yieldが0の場合' do
				let(:month_yield) { 0 }
				let(:current_asset) { 100 }
				let(:month_fund) { 0 }
				let(:expect_result) { current_asset }

				it_behaves_like :correct_calculation
			end

			context 'month_yieldが100の場合' do
				let(:month_yield) { 100 }
				let(:current_asset) { 100 }
				let(:month_fund) { 0 }
				let(:expect_result) { current_asset * 2 }

				it_behaves_like :correct_calculation
			end
		end

		context 'month_fundの値による検証' do
			context 'month_fundが0の場合' do
				let(:month_yield) { 0 }
				let(:current_asset) { 100 }
				let(:month_fund) { 0 }
				let(:expect_result) { current_asset }

				it_behaves_like :correct_calculation
			end

			context 'month_fundが1の場合' do
				let(:month_yield) { 0 }
				let(:current_asset) { 100 }
				let(:month_fund) { 1 }
				let(:expect_result) { current_asset + month_fund }

				it_behaves_like :correct_calculation
			end

			context 'month_fundが1かつmonth_yieldが100の場合' do
				let(:month_yield) { 100 }
				let(:current_asset) { 100 }
				let(:month_fund) { 1 }
				let(:expect_result) { (current_asset + month_fund) * 2 }

				it_behaves_like :correct_calculation
			end
		end
	end
end