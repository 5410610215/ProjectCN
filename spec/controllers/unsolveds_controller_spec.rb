require 'spec_helper'
describe UnsolvedsController do
  def mock_unsolved(stubs={})
    @mock_unsolved ||= mock_model(Unsolved, stubs).as_null_object
  end

  describe "#create" do
    before(:each) do
        @attr = { :department => "HR", :details => "LAN cable is broken", :priority => "1", :status => "1", :topic => "LAN" }
    end
    it "should create a new unsolved" do
        lambda do
          post :create, :unsolved => @attr
          flash[:notice].should_not be_nil
        end.should change(Unsolved, :count).by(1)
    end
    it "should redirect to the unsolved show page and show success message" do
      post :create, :unsolved => @attr
      flash[:notice].should =~ /unsolved problem was successfully added/i
      response.should redirect_to unsolved_path(assigns(:unsolved))
    end
  end

  describe "GET index" do
    it "assigns all posts as @unsolveds" do
      Unsolved.stub(:all) { [mock_unsolved] }
      get :index
    end
  end

  describe "GET show" do
    it "assigns the requested unsolved as @unsolved" do
    end
  end

  describe "GET new" do
    it "assigns a new unsolved as @unsolved" do
      
      Unsolved.stub(:new) { mock_unsolved }
      get :new
      assigns(:unsolved).should be(mock_unsolved)
    end
  end

  describe "GET edit" do
    it "assigns the requested unsolved as @unsolved" do
      Unsolved.stub(:find).with("37") { mock_unsolved }
      get :edit, :id => "37"
      assigns(:unsolved).should be(mock_unsolved)
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested unsolved" do
      Unsolved.should_receive(:find).with("37") { mock_unsolved }
      mock_unsolved.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the unsolveds list" do
      Unsolved.stub(:find) { mock_unsolved }
      delete :destroy, :id => "1"
      response.should redirect_to(unsolveds_url)
    end
  end

  describe "DELETE destroy solved" do
    it "destroys the requested solved" do
      Unsolved.should_receive(:find).with("37") { mock_unsolved }
      mock_unsolved.should_receive(:destroy)
      delete :destroy_solved, :id => "37"
    end

    it "redirects to the solveds list" do
      Unsolved.stub(:find) { mock_unsolved }
      delete :destroy_solved, :id => "1"
      response.should redirect_to(solveds_url)
    end
  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested unsolved" do
        Unsolved.stub(:find).with("14") { mock_unsolved }
        mock_unsolved.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "14", :unsolved => {'these' => 'params'}
      end

      it "assigns the requested unsolved as @unsolved" do
        Unsolved.stub(:find) { mock_unsolved(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:unsolved).should be(mock_unsolved)
      end

      it "redirects to the unsolved" do
        Unsolved.stub(:find) { mock_unsolved(:update_attributes => true) }
        put :update, :id => "1"
      end
    end

    describe "with invalid params" do
      it "assigns the unsolved as @unsolved" do
        Unsolved.stub(:find) { mock_unsolved(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:unsolved).should be(mock_unsolved)
      end

      it "re-renders the 'edit' template" do
        Unsolved.stub(:find) { mock_unsolved(:update_attributes => false) }
        put :update, :id => "1"
      end
    end

  end
end
