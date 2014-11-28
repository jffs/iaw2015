class AnswersController < ApplicationController
  before_action :get_answer, only: [:show,:destroy,:edit, :update]

  def get_answer
    @respuesta = Answer.find(params[:id])
  end

  def show
  end

  def index
    @respuesta = Answer.all
  end

  def new
     @respuesta = Answer.new
  end

  def create
    @respuesta=Answer.create(params.require(:answer).permit([:contenido,:comment_id,:user_id]))
    if @respuesta.save
      c=Comment.find(@respuesta.comment_id)
      redirect_to article_path(c.article_id) , :notice => "respuesta creada exitosamente"
    else
      redirect_to :back, :notice => "la respuesta no pudo ser procesada"
    end
  end

  def destroy
    @respuesta.destroy
    redirect_to :back 
  end

  def edit
  end

  def update
      @respuesta.update(params.require(:answer).permit([:contenido,:comment_id]))  
      redirect_to @respuesta, :notice => "Respuesta editada exitosamente"
  end
end
