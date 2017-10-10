class ApplicationController < ActionController::Base
  include Authentication
  include Authorization
  include BulletHelper
  before_action :store_user_location!, if: :storable_location?
  before_action :set_q

  protect_from_forgery with: :exception

  responders :flash
  respond_to :html

  def set_q
    params[:q][:content_cont_any] = params[:q][:content_cont_any].try(:split, ' ') if params[:q].present? && params[:q][:content_cont_any].present?
    @q = Post.ransack(params[:q])
  end

  private
  def storable_location?
    request.get? && is_navigational_format? && !devise_controller? && !request.xhr?
  end

  def store_user_location!
    store_location_for(:user, request.fullpath)
  end
end
