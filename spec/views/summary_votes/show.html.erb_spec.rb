require 'spec_helper'

describe "/summary_votes/show.html.erb" do
  include SummaryVotesHelper
  before(:each) do
    assigns[:summary_vote] = @summary_vote = stub_model(SummaryVote,
      :summary_id => 1,
      :score => 1
    )
  end

  it "renders attributes in <p>" do
    render
    response.should have_text(/1/)
    response.should have_text(/1/)
  end
end
