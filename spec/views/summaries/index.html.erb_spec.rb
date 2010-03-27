require 'spec_helper'

describe "/summaries/index.html.erb" do
  include SummariesHelper

  before(:each) do
    assigns[:summaries] = [
      stub_model(Summary,
        :document_id => 1,
        :body => "value for body"
      ),
      stub_model(Summary,
        :document_id => 1,
        :body => "value for body"
      )
    ]
  end

  it "renders a list of summaries" do
    render
    response.should have_tag("tr>td", 1.to_s, 2)
    response.should have_tag("tr>td", "value for body".to_s, 2)
  end
end
