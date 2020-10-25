class SolicitationsController < ApplicationController
  def index
    @solicitations = Solicitation.all
  end

  def show
    @solicitation = Solicitation.find(params[:id])
  end

  def new
    @solicitation = Solicitation.new
    @solicitation.solicitante_id = params[:solicitante_id]
  end

  def create
    @solicitation = Solicitation.new(solicitation_params)
    @solicitante = Solicitante.find(params[:solicitante_id])
    @solicitation.solicitante = @solicitante
    @solicitation.save
    redirect_to solicitante_path(@solicitation.solicitante)
  end

  private
  
  def solicitation_params
    params.require(:solicitation).permit(:valor, :n_parcelas, :valor_parcelas, :datas_pagamentos)
  end
end
