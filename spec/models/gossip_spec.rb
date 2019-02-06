require 'rails_helper'

RSpec.describe Gossip, type: :model do
	describe "GET #show" do
		it "assigns @gossip" do
			gossip = Factory.attributes_for(:gossip)

			get :show, id: gossip.id
		    # des tests
		    expect(assigns(:gossip)).to eq(gossip)
		end


		it "renders the show template" do
		    # va sur show
		    get :show

		    # on doit rediriger vers show
		    expect(response).to render_template("show")
		end
	end
end