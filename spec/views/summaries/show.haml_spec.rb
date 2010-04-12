require 'spec_helper'

describe "/summaries/show.haml" do
  include SummariesHelper
  before(:each) do
    
    assigns[:summary] = @summary = Factory.create(:summary, :body => "value for body")
  end

  it "renders attributes in <p>" do
    render
    response.should have_text(/value\ for\ body/)
  end
end
