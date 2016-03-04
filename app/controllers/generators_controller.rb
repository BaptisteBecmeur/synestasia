class GeneratorsController < ApplicationController

  before_filter :authenticate_user!
  before_action :set_post, only: [:show, :new, :create, :destroy, :edit, :update]

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
      @generator = Generator.new(generator_params)
    if @generator.save
      redirect_to @generator
    else
      render :new
    end
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

  def generator_params
    params.require(:generator).permit(:ideog1, :ideog2, :ideog3, :ideog4, :romanji, :transcription1, :transcription2, :post_id)
  end
end


