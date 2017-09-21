class TranslatedPostsController < ApplicationController
  before_action :authenticate_user!
  def index
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def translated_posts
    params.require(:translated_post).permit(:content, :language_id)
  end

  def set_english_post
    @translated_post = TranslatedPost.find(:id)
  end
end
