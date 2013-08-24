class ApplicationController < ActionController::Base
  protect_from_forgery

  def admin_required!
    if user_signed_in? then
      render_unauthorized unless current_user.is_admin?
    else
      authenticate_user!
    end
  end

  def render_unauthorized
    render status: :forbidden, text: '403 You are not allowed to see this page', status: 403
  end
end
