class BlogsController < ApplicationController
	include SessionsHelper

	def index
		@blogs = Blog.all
	end

	def new
		@blog = Blog.new
	end

	def create
	  @blog = Blog.new(blog_params)
	  if @blog.save
	    redirect_to :action => :index
	  else
	    render 'new'
	  end
	end

	def blog_params # wtf does this even do?
    params.require(:blog).permit(:title, :description, :content).merge(author_id: current_user.id)
  end
end
