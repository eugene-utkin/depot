class StoreController < ApplicationController
  def index
    @products = Product.order(:title)
    
    counter = session[:counter]
    
    if counter.nil?
      @counter = 1
    else
      @counter = counter + 1
    end

  end
end
