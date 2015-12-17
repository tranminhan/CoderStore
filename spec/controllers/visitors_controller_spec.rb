require 'rails_helper'

RSpec.describe VisitorsController, type: :controller do
  before do
    @b = Product.create(name: "b")
    @a = Product.create(name: "a")
    @c = Product.create(name: "c")
  end

  it "Doing sorting by alphabetical if sort param is alphabetical" do
    get :index, :sort => "alphabetical"
    assigns(:products).should eq([@a, @b, @c])
  end
end
