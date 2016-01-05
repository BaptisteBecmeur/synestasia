class ChaptersController < ApplicationController

  def show
    @course = Course.find(params[:course_id])
    @chapter = @course.chapters.find(params[:id])
  end

end
