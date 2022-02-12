class OrdersController < ApplicationController
	before_action :authenticate_user!, except: [:index]


	def index
	if params[:id]
		user = User.find(params[:id])
		@orders = user.orders
	else	
		@orders = Order.all
	end
	end	


	def new
		if params[:printer]
			@order = Printer.find(params[:printer]).orders.new
		else
			@order = Order.new
		end
	end


	def create
		user = User.find params[:order][:user]
		@order = user.orders.new(order_params)
		@order.printer = Printer.find(params[:order][:printer])

		if @order.save
			redirect_to @order
		else 
			render :new 
		end
	end


	def edit
		@order = Order.find(params[:id])

		if @order.user != current_user
			redirect_to root_path
		end
	end


	def update
		@order = Order.find(params[:id])
		if @order.user != current_user
			redirect_to root_path
		end
		if @order.update(order_params)
			redirect_to @order
		else
			render :edit
		end	
	end


	def show
		@order = Order.find(params[:id])
		if @order.user != current_user
			redirect_to root_path
		end
	end


	def destroy
		@order = Order.find(params[:id])
		if @order.user == current_user
			@order.destroy
		end
		redirect_to root_path
	end

	private
	def order_params
		params.require(:order).permit(:description)
	end	
end
