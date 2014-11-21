class ArticlesController < ApplicationController
  before_action :get_article, only: [:show,:edit,:destroy,:update]

  def get_article
    @articulo = Article.find(params[:id])
  end

  def new
    @articulo = Article.new
  end

  def index
    @articulos = Article.search(params[:search])
  end

  def update
    @articulo.update(article_params)
    if @articulo.save
      redirect_to @articulo, :notice => "Articulo editado exitosamente"
    else
      redirect_to :back, :notice => "Error al editar articulo"
    end
  end

  def show
  end

  def edit
  end

  def create
    @articulo = Article.create!(params.require(:article).permit([:descripcion,:nombre,:duracion,:estado,:foto,:category_id]))
    if @articulo.save
      redirect_to articles_path, :notice => "Articulo creado exitosamente"
    else
      redirect_to :back, :notice => "Error al crear articulo"
    end
  end

  def destroy
    @articulo.destroy
    redirect_to articles_path  
  end


  private
  
  def article_params 
     params.require(:article).permit([:nombre,:descripcion,:duracion,:estado,:foto]) 
  end
end
