class Api::V1::BlogsController < ApiController
  def index
    render json: Blog.all
  end

  def show
    @blog = Blog.find(params[:id])

    render json: @blog
  end
end