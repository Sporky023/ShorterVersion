require 'spec_helper'

describe SummariesController do

  before(:each) do
    @document = Factory.create(:document)
  end

  def mock_summary(stubs={})
    @mock_summary ||= mock_model(Summary, stubs)
  end

  describe "GET index" do
    it "assigns all summaries as @summaries" do
      Summary.stub(:find).with(:all).and_return([mock_summary])
      get :index
      assigns[:summaries].should == [mock_summary]
    end
  end

  describe "GET show" do
    it "assigns the requested summary as @summary" do
      Summary.stub(:find).with("37").and_return(mock_summary)
      get :show, :id => "37"
      assigns[:summary].should equal(mock_summary)
    end
  end

  describe "GET new" do
    it "assigns a new summary as @summary" do
      Summary.stub(:new).and_return(mock_summary)
      get :new, :document_id => @document.id
      assigns[:summary].should equal(mock_summary)
    end
  end

  describe "GET edit" do
    it "assigns the requested summary as @summary" do
      Summary.stub(:find).with("37").and_return(mock_summary)
      get :edit, :id => "37"
      assigns[:summary].should equal(mock_summary)
    end
  end

  describe "POST create" do

    describe "with valid params" do

      it "redirects to the created summary" do
        @summary = Factory.build(:summary)
        Summary.stub(:new).and_return(@summary)
        post :create, :summary => {}
        response.should redirect_to(document_url(@summary.document))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved summary as @summary" do
        Summary.stub(:new).with({'these' => 'params'}).and_return(mock_summary(:save => false))
        post :create, :summary => {:these => 'params'}
        assigns[:summary].should equal(mock_summary)
      end

      it "re-renders the 'new' template" do
        Summary.stub(:new).and_return(mock_summary(:save => false))
        post :create, :summary => {}
        response.should render_template('new')
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested summary" do
        Summary.should_receive(:find).with("37").and_return(mock_summary)
        mock_summary.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :summary => {:these => 'params'}
      end

      it "assigns the requested summary as @summary" do
        Summary.stub(:find).and_return(mock_summary(:update_attributes => true))
        put :update, :id => "1"
        assigns[:summary].should equal(mock_summary)
      end

      it "redirects to the summary" do
        Summary.stub(:find).and_return(mock_summary(:update_attributes => true))
        put :update, :id => "1"
        response.should redirect_to(summary_url(mock_summary))
      end
    end

    describe "with invalid params" do
      it "updates the requested summary" do
        Summary.should_receive(:find).with("37").and_return(mock_summary)
        mock_summary.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :summary => {:these => 'params'}
      end

      it "assigns the summary as @summary" do
        Summary.stub(:find).and_return(mock_summary(:update_attributes => false))
        put :update, :id => "1"
        assigns[:summary].should equal(mock_summary)
      end

      it "re-renders the 'edit' template" do
        Summary.stub(:find).and_return(mock_summary(:update_attributes => false))
        put :update, :id => "1"
        response.should render_template('edit')
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested summary" do
      Summary.should_receive(:find).with("37").and_return(mock_summary)
      mock_summary.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the summaries list" do
      Summary.stub(:find).and_return(mock_summary(:destroy => true))
      delete :destroy, :id => "1"
      response.should redirect_to(summaries_url)
    end
  end

end
