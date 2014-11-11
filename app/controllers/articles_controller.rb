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
    redirect_to articles_path
  end

  def show
  end

  def edit
  end

  def create
    @articulo = Article.create!(article_params)
    redirect_to articles_path
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
