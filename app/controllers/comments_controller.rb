class CommentsController < ApplicationController
  def create
    post = if params[:translated_post_id]
      TranslatedPost.find(params[:translated_post_id])
    else
      Post.find(params[:post_id])
    end
    @comment = post.comments.build comment_params
    @comment.user = current_user
    @comment.save
    respond_to do |format|
      format.js
    end
    # @comment = current_user.comments.build comment_params
    # @comment.review_rate_id = @review.id
    # if @comment.save
    #   respond_to do |format|
    #     format.html {redirect_to book_review_rate_path @review.book, @review}
    #     format.js
    #   end
    # else
    #   render :new
    # end
  end

  private
  def comment_params
    params.require(:comment).permit(:content)
  end
end
