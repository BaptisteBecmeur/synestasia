class PagesController < ApplicationController
  before_filter :authenticate_user!, only: [:start]

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

end
