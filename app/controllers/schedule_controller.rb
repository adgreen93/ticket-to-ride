class ScheduleController < ApplicationController

	def index
		@schedule = Schedule.all
	end

	def show
		@schedule = Schedule.find(params[:id])
	end

	def new
		@schedule = Schedule.new
	end

	def edit
		@schedule = Schedule.find(params[:id])
	end

	def update
		@schedule = Schedule.find(params[:id])

		if @schedule.update(schedule_params)
			redirect_to @schedule

		else
			render 'edit'
		end
	end

	def create
		@schedule = Schedule.new(schedule_params)
		if 

		@schedule.save
		redirect_to @schedule

	else 
		render 'new'
	end
	end

	private
	def schedule_params
		params.require(:schedule).permit(:employee, :hours)
	end

end
