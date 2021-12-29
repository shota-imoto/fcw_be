class RestTimeCalculationForm
	include ActiveModel::Model
	include ActiveModel::Attributes

	attribute :year_yield, :integer
	attribute :current_asset, :integer
	attribute :month_fund, :integer
	attribute :target_amount, :integer

	validates :year_yield, :month_fund, :target_amount, presence: true
	validates :year_yield, :current_asset, :month_fund, :target_amount, numericality: { greater_than: 0 }
end