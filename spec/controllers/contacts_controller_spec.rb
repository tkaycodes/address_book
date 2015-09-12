require 'rails_helper'

describe ContactsController do 

  before do 
    @user = FactoryGirl.create(:user)
    sign_in @user
  end

  describe "GET INDEX" do 
    it "assigns @contacts" do 
      contact = FactoryGirl.create(:contact)
      @user.contacts << contact
      get :index
      expect(assigns(:contacts)).to eq([contact])
    end
    it "should GET index action"  do
      get :index
      expect(response).to render_template("index")
    end
  end

  describe "GET NEW" do 
    it "assigns @contact" do 
      contact = FactoryGirl.create(:contact)
      get :new
      expect(assigns(:contact)).to eq([contact])
    end
    it "should GET new action" do 
      get :new
      expect(response).to render_template("new")
    end
  end

  describe "POST CREATE" do 
    it "assigns @contact" do 
      contact = FactoryGirl.create(:contact)
      post :create, contact: FactoryGirl.attributes_for(:contact)
      expect(assigns(:contact)).to eq([contact])
    end
  end



end
