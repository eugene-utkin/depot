class ApplicationController < ActionController::Base
before_action :check_time

  def check_time
    @time = Time.now
  end
end
