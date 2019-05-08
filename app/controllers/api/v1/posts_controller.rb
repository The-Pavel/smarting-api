class Api::V1::PostsController < Api::V1::BaseController
  def index
    @posts = Post.all
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      render :index, status: :created
    else
      render_error
    end
  end

  private

  def post_params
    params.require(:post).permit(:image, :content, :searched)
  end

  def render_error
    render json: { errors: @post.errors.full_messages }, status: :unprocessable_entity
  end

end
