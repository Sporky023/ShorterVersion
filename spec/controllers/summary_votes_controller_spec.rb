require 'spec_helper'

describe SummaryVotesController do

  def mock_summary_vote(stubs={})
    @mock_summary_vote ||= mock_model(SummaryVote, stubs)
  end

  describe "GET index" do
    it "assigns all summary_votes as @summary_votes" do
      SummaryVote.stub(:find).with(:all).and_return([mock_summary_vote])
      get :index
      assigns[:summary_votes].should == [mock_summary_vote]
    end
  end

  describe "GET show" do
    it "assigns the requested summary_vote as @summary_vote" do
      SummaryVote.stub(:find).with("37").and_return(mock_summary_vote)
      get :show, :id => "37"
      assigns[:summary_vote].should equal(mock_summary_vote)
    end
  end

  describe "GET new" do
    it "assigns a new summary_vote as @summary_vote" do
      SummaryVote.stub(:new).and_return(mock_summary_vote)
      get :new
      assigns[:summary_vote].should equal(mock_summary_vote)
    end
  end

  describe "GET edit" do
    it "assigns the requested summary_vote as @summary_vote" do
      SummaryVote.stub(:find).with("37").and_return(mock_summary_vote)
      get :edit, :id => "37"
      assigns[:summary_vote].should equal(mock_summary_vote)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created summary_vote as @summary_vote" do
        SummaryVote.stub(:new).with({'these' => 'params'}).and_return(mock_summary_vote(:save => true))
        post :create, :summary_vote => {:these => 'params'}
        assigns[:summary_vote].should equal(mock_summary_vote)
      end

      it "redirects to the created summary_vote" do
        SummaryVote.stub(:new).and_return(mock_summary_vote(:save => true))
        post :create, :summary_vote => {}
        response.should redirect_to(summary_vote_url(mock_summary_vote))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved summary_vote as @summary_vote" do
        SummaryVote.stub(:new).with({'these' => 'params'}).and_return(mock_summary_vote(:save => false))
        post :create, :summary_vote => {:these => 'params'}
        assigns[:summary_vote].should equal(mock_summary_vote)
      end

      it "re-renders the 'new' template" do
        SummaryVote.stub(:new).and_return(mock_summary_vote(:save => false))
        post :create, :summary_vote => {}
        response.should render_template('new')
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested summary_vote" do
        SummaryVote.should_receive(:find).with("37").and_return(mock_summary_vote)
        mock_summary_vote.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :summary_vote => {:these => 'params'}
      end

      it "assigns the requested summary_vote as @summary_vote" do
        SummaryVote.stub(:find).and_return(mock_summary_vote(:update_attributes => true))
        put :update, :id => "1"
        assigns[:summary_vote].should equal(mock_summary_vote)
      end

      it "redirects to the summary_vote" do
        SummaryVote.stub(:find).and_return(mock_summary_vote(:update_attributes => true))
        put :update, :id => "1"
        response.should redirect_to(summary_vote_url(mock_summary_vote))
      end
    end

    describe "with invalid params" do
      it "updates the requested summary_vote" do
        SummaryVote.should_receive(:find).with("37").and_return(mock_summary_vote)
        mock_summary_vote.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :summary_vote => {:these => 'params'}
      end

      it "assigns the summary_vote as @summary_vote" do
        SummaryVote.stub(:find).and_return(mock_summary_vote(:update_attributes => false))
        put :update, :id => "1"
        assigns[:summary_vote].should equal(mock_summary_vote)
      end

      it "re-renders the 'edit' template" do
        SummaryVote.stub(:find).and_return(mock_summary_vote(:update_attributes => false))
        put :update, :id => "1"
        response.should render_template('edit')
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested summary_vote" do
      SummaryVote.should_receive(:find).with("37").and_return(mock_summary_vote)
      mock_summary_vote.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the summary_votes list" do
      SummaryVote.stub(:find).and_return(mock_summary_vote(:destroy => true))
      delete :destroy, :id => "1"
      response.should redirect_to(summary_votes_url)
    end
  end

end
