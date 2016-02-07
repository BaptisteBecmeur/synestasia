class PagesController < ApplicationController
  # before_filter :authenticate_user!, only: [:start]

  def home
  end

  def synestesie
  end

  def start
  end

  def contact
  end

  def legal
  end

  def about
  end

  def blog
   @posts = Post.order('created_at DESC').limit(12)
  end

  def hiraganas_mix
    flash[:notice] = "Hiraganas mélangés. À vous de jouer !"
    @hiraganas = Hiragana.all
  end

end
