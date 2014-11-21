class CategoriesController < ApplicationController
 before_action :get_category, only: [:show,:destroy,:edit, :update]
  
  def get_category
    @categoria = Category.find(params[:id])
  end

  def new
  @categoria = Category.new
  end

  def index
    @categoria = Category.all
  end

  def update
  end

  def show
  end

  def edit
  end

  def create
    @categoria=Category.create!(params.require(:category).permit([:nombre]))
    redirect_to @categoria, :notice => "Categoria creada exitosamente"
  end 
  

  def destroy
  end
end
