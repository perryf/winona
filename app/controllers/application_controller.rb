class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  rescue_from ActiveRecord::RecordNotFound, with: :couldnt_find_record
  rescue_from NoMethodError, with: :no_method_error

  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy, :add_movie]

  Tmdb::Api.key(ENV["TMDB_KEY"])

  private
  def couldnt_find_record
    redirect_to root_url, alert: "The record you are looking for does not exist."
  end

  def no_method_error
    redirect_to root_url, alert: "Oops, something went wrong..."
  end
end
