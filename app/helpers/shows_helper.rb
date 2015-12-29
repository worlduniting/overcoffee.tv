module ShowsHelper

	def gender_options
		I18n.t(:gender_options).map { |key, value| [ value, key ] } 
	end

	def religion_options
		I18n.t(:religion_options).map { |key, value| [ value, key ] } 
	end

end
