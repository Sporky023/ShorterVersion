require 'spec_helper'

describe "/summary_votes/edit.html.erb" do
  include SummaryVotesHelper

  before(:each) do
    assigns[:summary_vote] = @summary_vote = stub_model(SummaryVote,
      :new_record? => false,
      :summary_id => 1,
      :score => 1
    )
  end

  it "renders the edit summary_vote form" do
    render

    response.should have_tag("form[action=#{summary_vote_path(@summary_vote)}][method=post]") do
      with_tag('input#summary_vote_summary_id[name=?]', "summary_vote[summary_id]")
      with_tag('input#summary_vote_score[name=?]', "summary_vote[score]")
    end
  end
end
