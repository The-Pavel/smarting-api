class Api::V1::CommentsController < Api::V1::BaseController

  def create
    @comment = Comment.new(comment_params)
    post = Post.find(params[:post_id])
    @comment.post = post
    if @comment.save
      redirect_to :controller => 'posts', :action => 'index'
    else
      render_error
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:name, :text, :post_id)
  end

  def render_error
    render json: { errors: @comment.errors.full_messages }, status: :unprocessable_entity
  end

end
