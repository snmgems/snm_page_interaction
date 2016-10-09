class SnmPageInteractionsController < ApplicationController
  def create
    snm_page_interaction = Snmpageinteraction.new(snm_page_interaction_params)
    if snm_page_interaction.save
      render json: {status: :success}
    else
      render json: {status: :failed}
    end
  end

  private
    def snm_page_interaction_params
      params.require(:snm_page_interaction).permit(:page, :clientx, :clienty, :pagex, :pagey, :offsetx, :offsety, :screenx, :screeny)
    end  
end