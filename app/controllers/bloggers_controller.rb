class BloggersController < ApplicationController

  def index
    @bloggers = Blogger.all
  end

  def show
    @blogger = Blogger.find(params[:id])
  end

  def new
    @bloggers = Blogger.new
  end

  def create
    blogger = Blogger.create(blogger_params)
    
    redirect_to "/bloggers/#{blogger.id}"
  end

end
