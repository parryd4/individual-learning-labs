class MaterialsController < ApplicationController

  # def new
  #   @material = Material.new
  # end

  def create
    Material.create(material_params)

  end

  def show

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
