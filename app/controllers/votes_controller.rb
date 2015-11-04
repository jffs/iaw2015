class VotesController < ApplicationController
  before_filter :extract_vote_info

  def create
    @new_vote = Vote.create()
    @new_vote.user_id = current_user.id
    @new_vote.item_id = @product_id
    @new_vote.vote = @vote
    @new_vote.save()
    redirect_to :back, :notice => "Valoracion registrada"
  end

  def show
  end

  private
  def extract_vote_info
    @product_id = Article.find(params[:product_id]).id
    @vote = params[:vote]
  end

end
