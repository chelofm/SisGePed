class AutenticacionController < ApplicationController
  before_filter :revisa_autenticacion
  
  def index
    
  end

  def login
    
  end

  def revisa_autenticacion
    unless session[:user]
      redirect_to :action => "login"
    end
  end
end
