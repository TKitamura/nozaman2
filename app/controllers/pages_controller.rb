class PagesController < ApplicationController
  def home
    @title = "Home"
    @shelf = Shelf.new if signed_in?
  end


  def about
    @title ="About"
  end

end
