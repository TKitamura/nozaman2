class ShelvesController < ApplicationController
  before_filter :authenticate

  def create
    @shelf = current_user.shelves.build(params[:shelf])
    if @shelf.save
       flash[:success] ="Shelf created"
       redirect_to root_path
    else
       render "pages/home"
    end
  end


  def destroy
  end

  def show
    @title = @shelf.name
    @shelf = @user.shelves.find(params[:shelf])
  end

end
