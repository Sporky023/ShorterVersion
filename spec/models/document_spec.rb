require 'spec_helper'

describe Document do
  before(:each) do
    @valid_attributes = {
      :name => "value for name",
      :body => "value for body",
      :original_url => "value for original_url"
    }
  end

  it "should create a new instance given valid attributes" do
    Document.create!(@valid_attributes)
  end
end
