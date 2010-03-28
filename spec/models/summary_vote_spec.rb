require 'spec_helper'

describe SummaryVote do
  before(:each) do
    @valid_attributes = {
      :summary_id => 1,
      :score => 1
    }
  end

  it "should create a new instance given valid attributes" do
    SummaryVote.create!(@valid_attributes)
  end
end
