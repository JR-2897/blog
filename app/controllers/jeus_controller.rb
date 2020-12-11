class JeusController < ApplicationController

  before_action :set_jeu, only: [:show, :edit, :update, :destroy]

  def index
    @jeus = Jeu.all
  end

  def new
    @jeu = Jeu.new
  end

  def show
  end

  def edit
  end

  def destroy
    @jeu.destroy
    redirect_to @jeu
  end

  def create
    @jeu = Jeu.new(jeu_params)
    @jeu.save
    redirect_to new_jeu_path()
  end

  def update
    @jeu.update(jeu_params)
    redirect_to @jeu
  end

  private
  def jeu_params
    params.require(:jeu).permit(:title, :description, :price)
  end

  def set_jeu
    @jeu = Jeu.find(params[:id])
  end
end
