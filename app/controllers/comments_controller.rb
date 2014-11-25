class CommentsController < ApplicationController
   before_action :get_comment, only: [:show,:destroy, :edit, :update]
  
  def get_comment
    @comentario = Comment.find(params[:id])
  end

  def new
     @comentario=Comment.new
  end

  def index
  end

  def edit
  end

def update
   @comentario.update(params.require(:comment).permit([:contenido,:article_id]))  
    redirect_to article_path(@comentario.article_id), :notice => "Comentario exitoso"
end
  def create
     @comentario=Comment.create!(params.require(:comment).permit([:contenido, :article_id]))
     redirect_to article_path(@comentario.article_id), :notice => "exito al comentar"
  end 

  def show
  end

  def destroy
    @comentario.destroy
    redirect_to articles_path , :notice => "Comentario eliminado satisfactoriamente"
  end
end
