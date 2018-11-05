class SchoolClassesController < ApplicationController
	def show
		@schoolClass = SchoolClass.find(params[:id])
	end

	def new
		@schoolClass = SchoolClass.new
	end

	def create
	  @schoolClass = SchoolClass.new(student_params(:first_name, :last_name))
	  @schoolClass.save
	  redirect_to student_path(@schoolClass)
	end

	def update
	  @schoolClass = SchoolClass.find(params[:id])
	  @schoolClass.update(student_params(:first_name, :last_name))
	  redirect_to student_path(@schoolClass)
	end

	def edit
	  @schoolClass = SchoolClass.find(params[:id])
	end

	private

	def student_params(*args)
		params.require(:student).permit(*args)
	end
end
