class PrintersController < ApplicationController
	before_action :authenticate_user!, except: [:index]


	def index
		if params[:id]
			user = User.find params[:id]
			@printers = user.printers
		else 
			@printers = Printer.all	
		end	
	end	


	def new
		@printer = Printer.new
	end	


	def create
		user = User.find params[:printer][:user]
		@printer = user.printers.new(printer_params)
		
		if @printer.save
			redirect_to @printer
		else
			render :new
		end
	end
		

	def edit
		@printer = Printer.find(params[:id])
		if @printer.user != current_user
			redirect_to root_path
		end	
	end	

	
	def update
		@printer = Printer.find(params[:id])
		if @printer.user != current_user
			redirect_to root_path
		end	
		if @printer.update(printer_params)
			redirect_to @printer
		else 
			render :edit
		end	
	end	


	def destroy
		@printer = Printer.find(params[:id])
		if @printer.user == current_user
			@printer.destroy
		end	
		redirect_to root_path
	end	


	def show
		@printer = Printer.find(params[:id])	
	end		


	private
	def printer_params
		params.require(:printer).permit(:description)
	end
end
