class BusinessesController < ApplicationController
  before_action :set_business, only: [:show]

  def index
    @businesses = Business.all
  end

  def new
    @business = Business.new
  end

  def create
    @business = Business.new(business_params)
    if @business.save
      redirect_to businesses_path, notice: 'Business added'
    else
      render :new
    end
  end

  def show
  end

  private

  def business_params
    params.permit(:name, :city, :state)
  end

  def set_business
    @business = Business.find(params[:id])
  end
end
