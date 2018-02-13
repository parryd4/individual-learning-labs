class MaterialsController < ApplicationController

  def new
    @material = Material.new
  end

  def create
    @material = Material.new(material_params)

    if @material.save
      redirect_to material_path(@material)
    else
      render :new
    end
  end

  def show
    @material = Material.find(params[:id])
  end

  def edit

  end

  def update

  end

  private

  def material_params
    params.require(:material).permit(:title, :url, :type, :notes, :user_id, :lab_id)
  end

end
