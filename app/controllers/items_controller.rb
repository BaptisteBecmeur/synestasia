class ItemsController < ApplicationController
  
  def show
    @course = Course.find(params[:course_id])
    @chapter = @course.chapters.find(params[:chapter_id])
    @item = @chapter.items.find(params[:id])
  end
end
