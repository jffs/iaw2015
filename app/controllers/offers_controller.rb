class OffersController < ApplicationController
  before_action :get_offer, only: [:show,:destroy,:edit, :update]
  
  def get_offer
    @oferta = Offer.find(params[:id])
  end

  def new
    @oferta=Offer.new
  end

  def edit
    @oferta=Offer.find(params[:id])
  end
  
  def update
    @oferta.update(params.require(:offer).permit([:contenido,:precio,:estado]))  
    redirect_to @oferta, :notice => "Oferta editada exitosamente"
  end  
  
  def create
    @oferta=Offer.create(params.require(:offer).permit([:contenido,:precio,:article_id,:user_id]))
    if @oferta.save
      redirect_to @oferta, :notice => "Oferta creada exitosamente"
    else
      redirect_to @oferta, :notice => "Ya ofertaste por este articulo"
    end
  end  
  
  def show
    @articulo=Article.find(@oferta.article_id)
  end
  
  def index
    if current_user.role == "admin"
       @oferta = Offer.all
    else  
       @oferta = Offer.where(user_id: current_user.id)
    end
  end
  
  def destroy
    @oferta.destroy
    redirect_to offers_path, :notice => "Oferta eliminada satisfactoriamente"
  end
end