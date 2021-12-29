class ApplicationForm
	def initialize
		@errors = {}
	end

	def add_errors(key, message)
		@errors << FormError.new(key, message)
	end
end