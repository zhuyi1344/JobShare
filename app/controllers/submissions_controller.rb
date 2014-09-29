class SubmissionsController < ApplicationController
  before_action :signed_in_user, only:[:new, :create]

  def index
    @submissions = Submission.paginate(page: params[:page], per_page: 20)
  end

  def new
    @submission = Submission.new
  end

  def create
    @submission = Submission.new(submission_params)
    
    if @submission.save
      redirect_to submissions_path
    else
      render 'new'
    end
  end

  private

    def submission_params
      params.require(:submission).permit(:company, :start, :end)
    end
end
