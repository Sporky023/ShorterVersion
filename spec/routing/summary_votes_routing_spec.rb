require 'spec_helper'

describe SummaryVotesController do
  describe "routing" do
    it "recognizes and generates #index" do
      { :get => "/summary_votes" }.should route_to(:controller => "summary_votes", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/summary_votes/new" }.should route_to(:controller => "summary_votes", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/summary_votes/1" }.should route_to(:controller => "summary_votes", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/summary_votes/1/edit" }.should route_to(:controller => "summary_votes", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/summary_votes" }.should route_to(:controller => "summary_votes", :action => "create") 
    end

    it "recognizes and generates #update" do
      { :put => "/summary_votes/1" }.should route_to(:controller => "summary_votes", :action => "update", :id => "1") 
    end

    it "recognizes and generates #destroy" do
      { :delete => "/summary_votes/1" }.should route_to(:controller => "summary_votes", :action => "destroy", :id => "1") 
    end
  end
end
