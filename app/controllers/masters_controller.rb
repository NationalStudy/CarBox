class MastersController < ApplicationController
  before_action :find_master, only:[:show, :edit, :update, :destroy]

  def index
    @masters = Master.all
  end

  def show
  end

  def new
    @master = Master.new
  end

  def create
    @master = Master.new(master_params)

    if @master.save
      redirect_to @master, notice: 'Successfully created new master'
    else
      render 'new'
    end
  end

  def edit

  end

  def update
    if @master.update(master_params)
      redirect_to @master
    else
      render 'edit'
    end
  end

  def destroy
    @master.destroy
    redirect_to root_path, notice: 'Successfully deleted master'
  end

  private

  def find_master
    @master = Master.find(params[:id])
  end

  def master_params
    params.require(:master).permit(:master, :nameMaster, :telNum, :addressMaster)
  end
end
