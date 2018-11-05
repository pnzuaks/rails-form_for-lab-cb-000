class StudentsController < ApplicationController
	def index
		@students = Student.all
	end

	def show
		@post = Student.find(params[:id])
	end

	def new
		@post = Student.new
	end

	def create
	  @post = Student.new(post_params(:title, :description))
	  @post.save
	  redirect_to post_path(@post)
	end

	def update
	  @post = Student.find(params[:id])
	  @post.update(post_params(:title))
	  redirect_to post_path(@post)
	end

	def edit
	  @post = Student.find(params[:id])
	end

	private

	def post_params(*args)
		params.require(:post).permit(*args)
	end
end
