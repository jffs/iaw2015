class UserestasController < ApplicationController
  def new
    @userestas=Userestas.new;
  end

  def create
  end

  def destroy
  end

  def edit
  end

  def update
  end

  def index
    @userestas=Userestas.all;
  end
  def show
  end
end
