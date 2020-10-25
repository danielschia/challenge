class SolicitantesController < ApplicationController
  def new
    @solicitante = Solicitante.new
  end

  def create
    @solicitante = Solicitante.new(solicitante_params)
    @solicitante.save
    redirect_to solicitante_path(@solicitante)
  end

  def show
    @solicitante = Solicitante.find(params[:id])
  end

  private
  
  def solicitante_params
    params.require(:solicitante).permit(:nome, :cnpj, :telefone, :endereco)
  end
end
