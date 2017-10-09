class PostsController < ApplicationController
  before_action :authenticate_user!, except: [:show, :index]
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  def index
    @posts = @q.result.includes(:tags).order(created_at: :desc).page(params[:page])
    @all_tags = Tag.all
    @post = Post.new
  end

  def show
    @translated_post = TranslatedPost.new
  end

  # def new
  #   @post = Post.new
  # end

  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id

    if @post.save
      flash[:notice] = 'Submit successfully!'
      redirect_to post_path(@post)
    else
      flash[:warning] = 'Submit failed!'
      @posts = Post.all
      render 'index'
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def post_params
    params.require(:post).permit(:content, :language_id, :desired_language_id, tag_ids: [])
  end

  def set_post
    @post = Post.find(params[:id])
  end
end
