class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  # Audio Alteration
  def alteration
    @nav = "alteration"
    
  end

  # Audio Generation
  def generation
    @nav = "generation"
    @sound = Sound.new
  end

end
