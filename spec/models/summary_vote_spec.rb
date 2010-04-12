require 'spec_helper'

describe SummaryVote do
  before(:each) do
    @document = Factory.create(:document)
    @summary = Factory.create(:summary, :document => @document)
    @valid_attributes = {
      :summary_id => @summary.id,
      :score => 1
    }
  end

  it "should create a new instance given valid attributes" do
    SummaryVote.create!(@valid_attributes)
  end
end
