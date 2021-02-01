class StoreController < ApplicationController
  include CurrentCart
  before_action :set_cart

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
