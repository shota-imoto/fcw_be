require 'rails_helper'

RSpec.describe RestTimeCalculationForm, type: :model do
	describe "#valid?" do
		let(:params) { { year_yield: year_yield, current_asset: current_asset, month_fund: month_fund, target_amount: target_amount } }
		let(:year_yield) { 5 }
		let(:current_asset) { 100 }
		let(:month_fund) { 10 }
		let(:target_amount) { 1000 }
		let(:form) { RestTimeCalculationForm.new(params) }
		subject { form.valid? }

		context 'year_yield' do
			context '値が空' do
				let(:year_yield) { nil }

				it 'falseが返る' do
					is_expected.to be_falsey
				end

				it 'エラーメッセージが格納されている' do
					subject
					expect(form.errors.messages[:year_yield]).to eq [I18n.t("errors.messages.blank"), I18n.t("errors.messages.not_a_number")]
				end
			end

			context '値が0' do
				let(:year_yield) { 0 }

				it 'falseが返る' do
					is_expected.to be_falsey
				end

				it 'エラーメッセージが格納されている' do
					subject
					expect(form.errors.messages[:year_yield]).to eq [I18n.t("errors.messages.greater_than", count: 0)]
				end
			end
		end
	end
end