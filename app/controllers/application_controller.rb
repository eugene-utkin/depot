class ApplicationController < ActionController::Base
before_action :check_time, :authorize

  def check_time
    @time = Time.now
  end

  protected

    def authorize
      unless User.find_by(id: session[:user_id])
      redirect_to login_url, notice: "Пожалуйста, пройдите авторизацию"
    end
  end
end
