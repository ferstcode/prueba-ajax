class CompaniesController < ApplicationController
  before_action :set_company, only: [:show, :edit, :update, :destroy]
  def index
    @companies = Company.all
    @company = Company.new
  end

  def show
    respond_to :js
  end

  def new
    @company = Company.new 
  end

  def create
    @companies = Company.all
    @company = Company.new(company_params)
    respond_to do |format|
      if @company.save        
        format.js
      else
        format.html { render :new }        
      end
    end
  end
  def edit     
    respond_to :js    
  end 
  def update
    @company = Company.find(params[:id])
    @company.name = params[:company][:name]
    @company.save
    respond_to :js

  end
  def destroy 
    @company.destroy 
    respond_to :js
  end

  private 


  def set_company
    @company = Company.find(params[:id])
  end

  
  def company_params
    params.require(:company).permit(:name)
  end
  
end
