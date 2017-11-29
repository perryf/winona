class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :authenticate_user!, except: [:index, :show]

  Tmdb::Api.key("206193c24923aa18bca03c3d3c630850")
end
