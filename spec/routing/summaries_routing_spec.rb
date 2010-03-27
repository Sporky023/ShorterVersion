require 'spec_helper'

describe SummariesController do
  describe "routing" do
    it "recognizes and generates #index" do
      { :get => "/summaries" }.should route_to(:controller => "summaries", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/summaries/new" }.should route_to(:controller => "summaries", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/summaries/1" }.should route_to(:controller => "summaries", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/summaries/1/edit" }.should route_to(:controller => "summaries", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/summaries" }.should route_to(:controller => "summaries", :action => "create") 
    end

    it "recognizes and generates #update" do
      { :put => "/summaries/1" }.should route_to(:controller => "summaries", :action => "update", :id => "1") 
    end

    it "recognizes and generates #destroy" do
      { :delete => "/summaries/1" }.should route_to(:controller => "summaries", :action => "destroy", :id => "1") 
    end
  end
end
