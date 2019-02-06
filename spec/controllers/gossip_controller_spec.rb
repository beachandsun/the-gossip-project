require 'rails_helper'
require 'faker'

RSpec.describe GossipController, type: :controller do
	describe "GET #index" do
	    # des tests
	    it "assigns @gossip" do
		    # création d'une instance
		    tests = Gossip.create(title: "Faker::Book.title", content: "Faker::HarryPotter.quote", user_id: 12)

		    # on va sur show
		    get :index

		    # @user doit être user
		    expect(assigns(:tests)).to eq(tests.id)
		end

		it "renders the index template" do
		    # va sur index
		    get :index

		    # on doit rediriger vers index
		    expect(response).to render_template("index")
		end
	end

	describe "GET #show" do
		it "assigns @gossip" do
			gossip = Gossip.create(title: "Faker::Book.title", content: "Faker::HarryPotter.quote", user_id: rand(Gossip.all.first.id..Gossip.all.last.id))
			
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

	describe "GET #new" do
		it "renders the new template" do
		    # va sur new
		    get :new

		    # on doit rediriger vers new
		    expect(response).to render_template("new")
		end
	end

	describe "GET #edit" do
		it "assigns @gossip" do
		    # création d'une instance
		    gossip = Gossip.create

		    # on va sur edit
		    get :edit, id: gossip.id

		    # @user doit être user
		    expect(assigns(:gossip)).to eq(gossip)
		end

		it "renders the edit template" do
		    # va sur edit
		    get :edit

		    # on doit rediriger vers edit
		    expect(response).to render_template("edit")
		end
	end


end
