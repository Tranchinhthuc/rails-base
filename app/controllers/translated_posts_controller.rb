class TranslatedPostsController < ApplicationController
  before_action :authenticate_user!
  def index
  end

  def show
  end

  def new
  end

  def create
    @post = Post.find(params[:post_id])
    @translated_post = TranslatedPost.new(translated_posts)
    @translated_post.translator_id = current_user.id
    @translated_post.post_id = @post.id
    @translated_post.language_id = @post.desired_language_id

    if @translated_post.save
      flash[:notice] = 'Submit successfully!'
    else
      flash[:warning] = 'Submit failed!'
    end
    redirect_to post_path(@post)
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
