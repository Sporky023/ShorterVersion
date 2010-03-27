require 'spec_helper'

describe "/summaries/show.html.erb" do
  include SummariesHelper
  before(:each) do
    assigns[:summary] = @summary = stub_model(Summary,
      :document_id => 1,
      :body => "value for body"
    )
  end

  it "renders attributes in <p>" do
    render
    response.should have_text(/1/)
    response.should have_text(/value\ for\ body/)
  end
end
