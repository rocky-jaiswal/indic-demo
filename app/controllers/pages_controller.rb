class PagesController < ApplicationController
  
  def index
    render :json => {:hello => "world"}
  end

  def login
    if params[:user] == "rocky" && params[:password] == "123456"
      render :json => {:user => "rocky"}
    else
      render :status => 401
    end
  end

end
