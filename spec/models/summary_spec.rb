require 'spec_helper'

describe Summary do
  before(:each) do
    @valid_attributes = {
      :document_id => 1,
      :body => "value for body"
    }
  end

  it "should create a new instance given valid attributes" do
    Summary.create!(@valid_attributes)
  end
end
