class RestTimeCalculationsController < ApplicationController
	def index
		form = RestTimeCalculationForm.new(rest_time_calculation_params)
		if form.valid?
			@rest_time_calculation = RestTimeCalculationService.calculate(rest_time_calculation_params)
		else
			render json: form.errors.to_json
		end
	end

	private

	def rest_time_calculation_params
		params.permit(:year_yield, current_asset, month_fund, target_amount)
	end
end