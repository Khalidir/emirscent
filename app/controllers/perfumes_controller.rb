class PerfumesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @perfumes = Perfume.all
  end

  def show
    @perfume = Perfume.find(params[:id])
  end
end
