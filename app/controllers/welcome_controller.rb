class WelcomeController < ApplicationController
  def index
    cookies[:curso] = "Curso Ruby on Rails"
    @nome = params[:nome]
  end
end
