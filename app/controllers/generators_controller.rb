class GeneratorsController < ApplicationController

  before_filter :authenticate_user!
  before_action :set_post, only: [:show, :new, :create, :destroy]

  def index
    @generators = Generator.all
  end

  def show
    @generator = Generator.find(params[:id])
  end

  def new
    @generator = Generator.new
  end

  def create
    @generator = @post.generators.new(generator_params)
    if @generator.save
      redirect_to @post
    else
      render 'generators/show'
    end
  end

  def edit
  end

  def update
  end

  def destroy
    @generator = Generator.find(params[:id])
    @generator.destroy
    redirect_to post_path(@post)
  end

  private

  def set_post
    @post = Post.find(params[:post_id])
  end

   def generator_params
    params.require(:generator).permit(:description, :photo, :post_id)
  end



  private

  def set_post
    @post = Post.find(params[:post_id])
  end

  def upload_params
    params.require(:upload).permit(:ideog1, :ideog2, :ideog3, :transcription1, :transcription1, :post_id)
  end
end


