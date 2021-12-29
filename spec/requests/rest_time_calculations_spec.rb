require 'rails_helper'

RSpec.describe MonthYield, type: :request do
	subject { get rest_time_calculation_index_path, params: {} }
end