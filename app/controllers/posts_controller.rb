class PostsController < ApplicationController
  before_action :authenticate_user!
  def index
    @posts = Post.all
    @post = Post.new
  end

  def show
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
    @post = Post.find(:id)
  end
end
