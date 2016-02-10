class FavsController < ApplicationController

  def index
    @favs = Fav.where(user: current_user)
  end

  def create
    @hiragana = Hiragana.find(params[:hiragana_id])
    @fav = current_user.favs.new(hiragana: @hiragana)
    if not @hiragana.favs.where(user: current_user).take
      @fav.save
    end
    # redirect_to :back
    #  respond_to do |format|
    #    format.html { redirect_to hiraganas_path }
    #    format.json { head :no_content }
    # end
    render json: @fav
  end

  def destroy
    @fav = Fav.find(params[:id])
    @fav.destroy
    redirect_to :back
  end
end

