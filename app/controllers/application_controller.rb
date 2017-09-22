class ApplicationController < ActionController::Base
  include Authentication
  include Authorization
  include BulletHelper

  before_action :set_q

  protect_from_forgery with: :exception

  responders :flash
  respond_to :html

  def set_q
    params[:q][:content_cont_any] = params[:q][:content_cont_any].try(:split, ' ') if params[:q].present? && params[:q][:content_cont_any].present?
    @q = Post.ransack(params[:q])
  end
end
