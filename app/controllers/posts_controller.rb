class PostsController < ApplicationController
  
  def index
    render :json => Post.all
  end

  def create
    p = Post.new(:title => params[:title], :body => params[:body])
    if p.save
      render :json => {:success => true}
    else
      render :json => {:success => false}
    end
  end
  
end
