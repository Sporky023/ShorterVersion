require 'spec_helper'

describe "/summary_votes/index.html.erb" do
  include SummaryVotesHelper

  before(:each) do
    assigns[:summary_votes] = [
      stub_model(SummaryVote,
        :summary_id => 1,
        :score => 1
      ),
      stub_model(SummaryVote,
        :summary_id => 1,
        :score => 1
      )
    ]
  end

  it "renders a list of summary_votes" do
    render
    response.should have_tag("tr>td", 1.to_s, 2)
    response.should have_tag("tr>td", 1.to_s, 2)
  end
end
