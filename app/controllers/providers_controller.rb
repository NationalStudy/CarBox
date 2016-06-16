class ProvidersController < ApplicationController
  before_action :find_provider, only:[:show, :edit, :update, :destroy]

  def index
    @providers = Provider.all.order('created_at DESC')
  end

  def show
  end

  def new
    @provider = Provider.new
  end

  def create
    @provider = Provider.new(provider_params)

    if @provider.save
      redirect_to @provider, notice: 'Successfully created new provider'
    else
      render 'new'
    end
  end

  def edit

  end

  def update
    if @provider.update(provider_params)
      redirect_to @provider
    else
      render 'edit'
    end
  end

  def destroy
    @provider.destroy
    redirect_to root_path, notice: 'Successfully deleted provider'
  end

  private

  def find_provider
    @provider = Provider.find(params[:id])
  end

  def provider_params
    params.require(:provider).permit(:nameOrganization, :telNumber, :city, :address)
  end
end
