class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  # Audio Alteration
  def alteration
    @nav = "alteration"
    @sound = Sound.new
    
  end

  # Audio Generation
  def generation
    @nav = "generation"
    @sound = Sound.new
    @sounds = Sound.all
  end

  def instantfun
    @nav = "instantfun"
    @sounds = Sound.instafuns
    @sound = Sound.new
  end

end
