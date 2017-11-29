class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]

  Tmdb::Api.key("206193c24923aa18bca03c3d3c630850")
end
