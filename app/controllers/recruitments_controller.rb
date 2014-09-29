class RecruitmentsController < ApplicationController
  before_action :signed_in_user, only:[:new, :create]

  def index
    @recruitments = Recruitment.paginate(page: params[:page], per_page: 20)
  end

  def new
    @recruitment = Recruitment.new
  end

  def create
    @recruitment = Recruitment.new(recruitment_params)
    if @recruitment.save
      redirect_to recruitments_path
    else
      render 'new'
    end
  end

  private

  def recruitment_params
    params.require(:recruitment).permit(:company, :day, :start, :end, :location)
  end
end
