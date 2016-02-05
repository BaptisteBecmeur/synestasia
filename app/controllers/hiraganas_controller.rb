class HiraganasController < ApplicationController

  before_filter :authenticate_user!, except: [:index, :show]
  before_action :find_hiragana, only: [:show, :edit, :update, :destroy]

  def index
    @hiraganas = Hiragana.all
  end

  def show
    @alert_message = "Vous avez créer la flascard #{@hiragana.ideo1}"
  end

  def new
    @hiragana = Hiragana.new
  end

  def create
    @hiragana = Hiragana.new(hiragana_params)
    if @hiragana.save
      redirect_to @hiragana
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @hiragana.update(hiragana_params)
      redirect_to @hiragana
    else
      render :edit
    end
  end

  def destroy
    @hiragana.destroy
    redirect_to :back
  end

private

  def find_hiragana
    @hiragana = Hiragana.find(params[:id])
  end

  def hiragana_params
    params.require(:hiragana).permit(:ideo1, :ideo2, :bigletter, :midletter, :transcription, :upload, :audioclick)

  end
end

