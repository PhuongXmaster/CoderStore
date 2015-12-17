class VisitorsController < ApplicationController
  def index
    @products = Product.alphabetical
  end
end
