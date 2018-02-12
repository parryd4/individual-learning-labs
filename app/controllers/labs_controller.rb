class LabsController < ApplicationController

  def index
    # @labs = Lab.all # shows all labs regardless of privacy
    @labs = Lab.where(public: true)
  end

  def show
    @lab = Lab.find(params[:id])
  end

  def new
    @lab = Lab.new
  end

  def create
    @lab = Lab.new(lab_params)

    if @lab.save
      redirect_to lab_path(@lab)
    else
      render :new
    end
  end

  private

  def lab_params
    params.require(:lab).permit(:title, :description, :public, :user_id)
  end
end
