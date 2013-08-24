module ApplicationHelper
	def control_state(entity, field)
    entity.errors[field].present? ? 'error' : 'valid'
	end

	def field_errors(entity, field)
    errors = entity.errors[field]    
    errors.present? ? errors.join(";") : nil
  end
end
