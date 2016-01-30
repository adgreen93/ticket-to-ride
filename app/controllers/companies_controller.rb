class CompaniesController < ApplicationController

	def index
		@company = Company.all
		@users = User.all
	end

	def show
		@company = Company.find(params[:id])
	end

	def new
		@company = Company.new 
	end

	def edit
		@company = Company.find(params[:id])
	end

	def update
		@company = Company.find(params[:id])

		if @company.update(company_params)
			redirect_to @company 

		else
			render 'edit'
		end
	end

	def create
		@company = Company.new(company_params)

		if 
			@company.save
			redirect_to @company
		else
			render 'new'
		end
	end

	private
	def company_params
		params.require(:company).permit(:title)
	end
end
