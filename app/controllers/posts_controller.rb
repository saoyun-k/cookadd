class PostsController < ApplicationController
  def index
  end

  def new
    @post = Post.new
    @post.images.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def post_params
    params.require(:post).permit(:dish_name, :foodstuff, :recipe, images_attributes: [:image])
  end
end

# def set_item
#   @item = Item.find(params[:id])
#   @images = @item.product_images
#   @image = @images.first 
# end