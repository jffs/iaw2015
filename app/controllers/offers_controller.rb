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
    @oferta.update(params.require(:offer).permit([:contenido,:precio]))  
    redirect_to @oferta, :notice => "Oferta editada exitosamente"
  end  
  
  def create
    @oferta=Offer.create!(params.require(:offer).permit([:contenido,:precio,:article_id,:user_id]))
    redirect_to @oferta, :notice => "Oferta creada exitosamente"
  end  
  
  def show
  end
  
  def index
  @oferta = Offer.where(user_id: current_user.id)
  end
  
  def destroy
    @oferta.destroy
    redirect_to offers_path, :notice => "Oferta eliminada satisfactoriamente"
  end
end