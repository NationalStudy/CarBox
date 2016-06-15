class OrdersController < ApplicationController
  before_action :find_order, only:[:show, :edit, :update, :destroy]

  def index
    @order = Order.all.order('created_at DESC')
  end

  def show
  end

  def new
    @order = Order.new
  end

  def create
    @order = Order.new(order_params)

    if @order.save
      redirect_to @order, notice: 'Successfully created new order'
    else
      render 'new'
    end
  end

  def edit

  end

  def update
    if @order.update(order_params)
      redirect_to @order
    else
      render 'edit'
    end
  end

  def destroy
    @order.destroy
    redirect_to root_path, notice: 'Successfully deleted order'
  end

  private

  def find_order
    @order = Order.find(params[:id])
  end

  def order_params
    params.require(:order).permit(:image, :fullName, :numTel, :address, :license, :carBrand, :numAuto, :year, :scope, :dateOrder, :dateStart, :dateEnd, :box, operations_attributes: [:id, :name, :_destroy], details_attributes: [:id, :nameDetail, :_destroy])
  end
end
