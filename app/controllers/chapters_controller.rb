class ChaptersController < ApplicationController

  def show
    @course = Course.friendly.find(params[:course_id])
    @chapter = @course.chapters.find(params[:id])
  end

end
