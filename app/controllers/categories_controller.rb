class CategoriesController < ApplicationController
 before_action :get_category, only: [:show,:destroy,:edit, :update]
  
  def get_category
    @categoria = Category.find(params[:id])
  end

  def new
  @categoria = Category.new
  end

  def index
  end

 def update
   @categoria.update(params.require(:category).permit([:nombre]))  
   redirect_to @categoria
  end  

  def show
  end

  def edit
  end

  def create
    @categoria=Category.create(params.require(:category).permit([:nombre]))
    if @categoria.save
      redirect_to :root, :notice => "Categoria creada exitosamente"
    else
      redirect_to :back, :notice => "Categoria existente"
    end
  end 

   def destroy
    @categoria.destroy
    redirect_to :back 
  end
end
