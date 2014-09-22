class ExamsController < ApplicationController
  def index
    @exams = Exam.paginate(page: params[:page], per_page: 20)
  end

  def new
    @exam = Exam.new
  end

  def create
    @exam = Exam.new(exam_params)
    if @exam.save
      redirect_to exams_path
    else
      render 'new'
    end
  end

  private

  def exam_params
    params.require(:exam).permit(:company, :day, :start, :end, :location)
  end
end
