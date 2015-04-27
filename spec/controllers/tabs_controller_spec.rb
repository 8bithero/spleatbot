require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe TabsController do

  # This should return the minimal set of attributes required to create a valid
  # Tab. As you add validations to Tab, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "venue" => "" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # TabsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all tabs as @tabs" do
      tab = Tab.create! valid_attributes
      get :index, {}, valid_session
      assigns(:tabs).should eq([tab])
    end
  end

  describe "GET show" do
    it "assigns the requested tab as @tab" do
      tab = Tab.create! valid_attributes
      get :show, {:id => tab.to_param}, valid_session
      assigns(:tab).should eq(tab)
    end
  end

  describe "GET new" do
    it "assigns a new tab as @tab" do
      get :new, {}, valid_session
      assigns(:tab).should be_a_new(Tab)
    end
  end

  describe "GET edit" do
    it "assigns the requested tab as @tab" do
      tab = Tab.create! valid_attributes
      get :edit, {:id => tab.to_param}, valid_session
      assigns(:tab).should eq(tab)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Tab" do
        expect {
          post :create, {:tab => valid_attributes}, valid_session
        }.to change(Tab, :count).by(1)
      end

      it "assigns a newly created tab as @tab" do
        post :create, {:tab => valid_attributes}, valid_session
        assigns(:tab).should be_a(Tab)
        assigns(:tab).should be_persisted
      end

      it "redirects to the created tab" do
        post :create, {:tab => valid_attributes}, valid_session
        response.should redirect_to(Tab.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved tab as @tab" do
        # Trigger the behavior that occurs when invalid params are submitted
        Tab.any_instance.stub(:save).and_return(false)
        post :create, {:tab => { "venue" => "invalid value" }}, valid_session
        assigns(:tab).should be_a_new(Tab)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Tab.any_instance.stub(:save).and_return(false)
        post :create, {:tab => { "venue" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested tab" do
        tab = Tab.create! valid_attributes
        # Assuming there are no other tabs in the database, this
        # specifies that the Tab created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Tab.any_instance.should_receive(:update).with({ "venue" => "" })
        put :update, {:id => tab.to_param, :tab => { "venue" => "" }}, valid_session
      end

      it "assigns the requested tab as @tab" do
        tab = Tab.create! valid_attributes
        put :update, {:id => tab.to_param, :tab => valid_attributes}, valid_session
        assigns(:tab).should eq(tab)
      end

      it "redirects to the tab" do
        tab = Tab.create! valid_attributes
        put :update, {:id => tab.to_param, :tab => valid_attributes}, valid_session
        response.should redirect_to(tab)
      end
    end

    describe "with invalid params" do
      it "assigns the tab as @tab" do
        tab = Tab.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Tab.any_instance.stub(:save).and_return(false)
        put :update, {:id => tab.to_param, :tab => { "venue" => "invalid value" }}, valid_session
        assigns(:tab).should eq(tab)
      end

      it "re-renders the 'edit' template" do
        tab = Tab.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Tab.any_instance.stub(:save).and_return(false)
        put :update, {:id => tab.to_param, :tab => { "venue" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested tab" do
      tab = Tab.create! valid_attributes
      expect {
        delete :destroy, {:id => tab.to_param}, valid_session
      }.to change(Tab, :count).by(-1)
    end

    it "redirects to the tabs list" do
      tab = Tab.create! valid_attributes
      delete :destroy, {:id => tab.to_param}, valid_session
      response.should redirect_to(tabs_url)
    end
  end

end
