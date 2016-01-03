class PagesController < ApplicationController
  before_filter :authenticate_user!, only: [:start]

  def home
  end

  def about
  end

  def start
  end

  def contact
  end

end
