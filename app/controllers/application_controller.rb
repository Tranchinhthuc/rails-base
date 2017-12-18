class ApplicationController < ActionController::Base
  include BulletHelper
  before_action :store_user_location!, if: :storable_location?

  protect_from_forgery with: :exception

  responders :flash
  respond_to :html

  private
  def storable_location?
    request.get? && is_navigational_format? && !devise_controller? && !request.xhr?
  end

  def store_user_location!
    store_location_for(:user, request.fullpath)
  end
end
