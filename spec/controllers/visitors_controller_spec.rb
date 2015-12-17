require 'rails_helper'

RSpec.describe VisitorsController, type: :controller do
  before do 
  end

  describe "GET #index" do 
    it "..." do
        get :index
        expect(response).to be_success
        expect(response).to have_http_status(200)
    end

    it "products is sorted by alphabetical" do
        p1 = Product.create(name: "b")
        p2 = Product.create(name: "c")
        p3 = Product.create(name: "a")

        get :index
        expect(assigns(:products)).to eq [p3, p1, p2]
    end
  end
end
