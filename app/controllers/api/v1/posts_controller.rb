class Api::V1::PostsController < ApiController
  def index
    render json: Post.all
  end
end