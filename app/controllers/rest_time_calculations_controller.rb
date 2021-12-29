class RestTimeCalculationsController < ApplicationController
	def index
		RestTimeCalculationService.calculate()
	end
end